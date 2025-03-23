import os
import subprocess
import json

def parse_ktest_tool(ktest_path):
    """
    Runs `ktest-tool` on the .ktest file and parses:
      object <N>: name: '<NAME>'
      object <N>: int : <INT_VALUE>
    Returns a list of strings, each like: "var x int 598476"
    If anything fails, returns an error message in a list.
    """
    try:
        output = subprocess.check_output(["ktest-tool", ktest_path], stderr=subprocess.STDOUT)
        lines = output.decode("utf-8", errors="replace").splitlines()
    except (subprocess.CalledProcessError, FileNotFoundError) as e:
        return [f"[error running ktest-tool on {os.path.basename(ktest_path)}: {str(e)}]"]

    objects = {}

    for line in lines:
        line = line.strip()
        # e.g. "object 0: name: 'x'"
        if line.startswith("object "):
            parts = line.split(":")
            if len(parts) < 2:
                continue
            left = parts[0].strip()  # e.g. "object 0"
            right = ":".join(parts[1:]).strip()  # e.g. "name: 'x'" or "int : 598476"

            if left.startswith("object "):
                try:
                    obj_index_str = left.split()[1]  # e.g. "0"
                    obj_index = int(obj_index_str)
                except ValueError:
                    continue

                if obj_index not in objects:
                    objects[obj_index] = {"name": None, "int": None}

                # Parse the right part
                if right.startswith("name"):
                    # e.g. "name: 'x'"
                    after_name = right.split("name", 1)[-1].strip(" :")
                    if after_name.startswith("'") and after_name.endswith("'"):
                        after_name = after_name[1:-1]
                    objects[obj_index]["name"] = after_name
                elif right.startswith("int"):
                    # e.g. "int : 598476"
                    tokens = right.split()
                    if len(tokens) >= 3:
                        try:
                            int_val = int(tokens[2])
                            objects[obj_index]["int"] = int_val
                        except ValueError:
                            pass

    # Build lines like "var <NAME> int <VALUE>"
    results = []
    for obj_idx in sorted(objects.keys()):
        name = objects[obj_idx]["name"]
        ival = objects[obj_idx]["int"]
        if name is not None and ival is not None:
            results.append(f"var {name} int {ival}")

    if not results:
        return ["[no objects with name+int parsed]"]

    return results


def main():
    NUM_PROGRAMS = 100
    OUTPUT_JSONL = "output.jsonl"

    # The system message is your guiding prompt for the LLM
    system_message_context = (
        "I will give you C Code, plus for each ktest I will provide name/int pairs, "
        "any .smt2 files, and one run.istats file. Generate the .kquery output for this program."
    )

    with open(OUTPUT_JSONL, 'w', encoding='utf-8') as out_f:
        for i in range(NUM_PROGRAMS):
            prog_number = i + 1
            c_filename = f"{prog_number}.c"
            klee_out_dir = f"klee-out-{i}"

            # Check if the .c file exists
            if not os.path.isfile(c_filename):
                print(f"Warning: {c_filename} not found, skipping program {prog_number}.")
                continue

            # Read the C code
            with open(c_filename, 'r', encoding='utf-8', errors='replace') as f:
                c_code = f.read()

            # Check if klee-out folder exists
            if not os.path.isdir(klee_out_dir):
                print(f"Warning: {klee_out_dir} not found, skipping program {prog_number}.")
                continue

            # (A) Read run.istats if it exists in this folder
            run_istats_path = os.path.join(klee_out_dir, "run.istats")
            run_istats_content = None
            if os.path.isfile(run_istats_path):
                try:
                    with open(run_istats_path, 'r', encoding='utf-8', errors='replace') as istats_f:
                        run_istats_content = istats_f.read()
                except:
                    run_istats_content = f"[error reading run.istats]"

            # (B) Gather test files by base name (e.g. "test000001" -> .ktest, .smt2, .kquery)
            test_files = {}
            for fname in os.listdir(klee_out_dir):
                # we only care about test*\.<ext>
                if fname.startswith("test") and '.' in fname:
                    base, ext = fname.split('.', 1)
                    if base not in test_files:
                        test_files[base] = {}
                    test_files[base][ext] = os.path.join(klee_out_dir, fname)

            # Build the user message: includes C code, run.istats, then each test's .ktest, .smt2
            user_message_parts = []
            user_message_parts.append(f"my c code:\n{c_code}\n")

            # If we have a run.istats file, include it
            if run_istats_content is not None:
                user_message_parts.append("[run.istats content]\n" + run_istats_content)

            # Build the assistant message: includes all .kquery
            assistant_message_parts = []

            for test_name in sorted(test_files.keys()):
                data_for_test = test_files[test_name]
                user_sub = [f"Test case: {test_name}"]

                # (1) .ktest -> parse object name and int value
                if "ktest" in data_for_test:
                    ktest_info_lines = parse_ktest_tool(data_for_test["ktest"])
                    user_sub.append("[Parsed from .ktest]")
                    user_sub.append("\n".join(ktest_info_lines))

                # (2) .smt2 -> read as text
                if "smt2" in data_for_test:
                    try:
                        with open(data_for_test["smt2"], 'r', encoding='utf-8', errors='replace') as sf:
                            smt2_content = sf.read()
                        user_sub.append("[.smt2 content]\n" + smt2_content)
                    except:
                        user_sub.append(f"[error reading {data_for_test['smt2']}]")

                # Add this sub-block to the user message
                user_message_parts.append("\n".join(user_sub))

                # (3) .kquery -> read as text and store in assistant message
                if "kquery" in data_for_test:
                    try:
                        with open(data_for_test["kquery"], 'r', encoding='utf-8', errors='replace') as kf:
                            kquery_content = kf.read()
                        assistant_message_parts.append(
                            f"my kquery for {test_name}:\n{kquery_content}"
                        )
                    except:
                        assistant_message_parts.append(
                            f"[error reading kquery for {test_name}]"
                        )

            # Final strings
            user_context_str = "\n".join(user_message_parts)
            assistant_context_str = "\n\n".join(assistant_message_parts)
            if not assistant_context_str.strip():
                assistant_context_str = "my kquery is (none found)."

            # Construct the conversation (array of 3 messages)
            conversation = [
                {
                    "role": "system",
                    "context": system_message_context
                },
                {
                    "role": "user",
                    "context": user_context_str
                },
                {
                    "role": "assistant",
                    "context": assistant_context_str
                }
            ]

            # Write one JSON record per program
            out_f.write(json.dumps(conversation, ensure_ascii=False))
            out_f.write("\n")

    print(f"Done! Wrote up to {NUM_PROGRAMS} lines of JSON to {OUTPUT_JSONL}.")


if __name__ == "__main__":
    main()
