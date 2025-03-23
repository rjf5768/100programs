; ModuleID = '57.bc'
source_filename = "57.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"/home/rongfeng/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.4 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.5 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %3, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %5, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %5, align 4, !dbg !25
  %6 = bitcast i32* %2 to i8*, !dbg !26
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !27
  %7 = bitcast i32* %3 to i8*, !dbg !28
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !29
  %8 = bitcast i32* %4 to i8*, !dbg !30
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !31
  %9 = load i32, i32* %2, align 4, !dbg !32
  %10 = icmp sge i32 %9, 0, !dbg !33
  br i1 %10, label %11, label %14, !dbg !34

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4, !dbg !35
  %13 = icmp sle i32 %12, 3, !dbg !36
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi i1 [ false, %0 ], [ %13, %11 ], !dbg !37
  %16 = zext i1 %15 to i32, !dbg !34
  %17 = sext i32 %16 to i64, !dbg !32
  call void @klee_assume(i64 noundef %17), !dbg !38
  %18 = load i32, i32* %2, align 4, !dbg !39
  switch i32 %18, label %39 [
    i32 0, label %19
    i32 1, label %23
    i32 2, label %27
    i32 3, label %31
  ], !dbg !40

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4, !dbg !41
  %21 = load i32, i32* %4, align 4, !dbg !43
  %22 = add nsw i32 %20, %21, !dbg !44
  store i32 %22, i32* %5, align 4, !dbg !45
  br label %39, !dbg !46

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4, !dbg !47
  %25 = load i32, i32* %4, align 4, !dbg !48
  %26 = sub nsw i32 %24, %25, !dbg !49
  store i32 %26, i32* %5, align 4, !dbg !50
  br label %39, !dbg !51

27:                                               ; preds = %14
  %28 = load i32, i32* %3, align 4, !dbg !52
  %29 = load i32, i32* %4, align 4, !dbg !53
  %30 = mul nsw i32 %28, %29, !dbg !54
  store i32 %30, i32* %5, align 4, !dbg !55
  br label %39, !dbg !56

31:                                               ; preds = %14
  %32 = load i32, i32* %4, align 4, !dbg !57
  %33 = icmp ne i32 %32, 0, !dbg !58
  %34 = zext i1 %33 to i32, !dbg !58
  %35 = sext i32 %34 to i64, !dbg !57
  call void @klee_assume(i64 noundef %35), !dbg !59
  %36 = load i32, i32* %3, align 4, !dbg !60
  %37 = load i32, i32* %4, align 4, !dbg !61
  %int_cast_to_i64 = zext i32 %37 to i64, !dbg !62
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !62
  %38 = sdiv i32 %36, %37, !dbg !62, !klee.check.div !63
  store i32 %38, i32* %5, align 4, !dbg !64
  br label %39, !dbg !65

39:                                               ; preds = %14, %31, %27, %23, %19
  ret i32 0, !dbg !66
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %0) #3 !dbg !67 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !72, metadata !DIExpression()), !dbg !73
  %3 = load i64, i64* %2, align 8, !dbg !74
  %4 = icmp eq i64 %3, 0, !dbg !76
  br i1 %4, label %5, label %6, !dbg !77

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.5, i64 0, i64 0)) #5, !dbg !78
  unreachable, !dbg !78

6:                                                ; preds = %1
  ret void, !dbg !79
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "57.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "2e44bb6546305f89a9f0b6696847f385")
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "Ubuntu clang version 11.1.0-6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rongfeng/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee/build/runtime/Intrinsic")
!4 = !{}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!13 = !{!"Ubuntu clang version 11.1.0-6"}
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !15, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "op", scope: !14, file: !1, line: 6, type: !17)
!19 = !DILocation(line: 6, column: 7, scope: !14)
!20 = !DILocalVariable(name: "a", scope: !14, file: !1, line: 6, type: !17)
!21 = !DILocation(line: 6, column: 11, scope: !14)
!22 = !DILocalVariable(name: "b", scope: !14, file: !1, line: 6, type: !17)
!23 = !DILocation(line: 6, column: 14, scope: !14)
!24 = !DILocalVariable(name: "result", scope: !14, file: !1, line: 6, type: !17)
!25 = !DILocation(line: 6, column: 17, scope: !14)
!26 = !DILocation(line: 7, column: 22, scope: !14)
!27 = !DILocation(line: 7, column: 3, scope: !14)
!28 = !DILocation(line: 8, column: 22, scope: !14)
!29 = !DILocation(line: 8, column: 3, scope: !14)
!30 = !DILocation(line: 9, column: 22, scope: !14)
!31 = !DILocation(line: 9, column: 3, scope: !14)
!32 = !DILocation(line: 10, column: 15, scope: !14)
!33 = !DILocation(line: 10, column: 18, scope: !14)
!34 = !DILocation(line: 10, column: 23, scope: !14)
!35 = !DILocation(line: 10, column: 26, scope: !14)
!36 = !DILocation(line: 10, column: 29, scope: !14)
!37 = !DILocation(line: 0, scope: !14)
!38 = !DILocation(line: 10, column: 3, scope: !14)
!39 = !DILocation(line: 11, column: 10, scope: !14)
!40 = !DILocation(line: 11, column: 3, scope: !14)
!41 = !DILocation(line: 12, column: 22, scope: !42)
!42 = distinct !DILexicalBlock(scope: !14, file: !1, line: 11, column: 14)
!43 = !DILocation(line: 12, column: 26, scope: !42)
!44 = !DILocation(line: 12, column: 24, scope: !42)
!45 = !DILocation(line: 12, column: 20, scope: !42)
!46 = !DILocation(line: 12, column: 29, scope: !42)
!47 = !DILocation(line: 13, column: 22, scope: !42)
!48 = !DILocation(line: 13, column: 26, scope: !42)
!49 = !DILocation(line: 13, column: 24, scope: !42)
!50 = !DILocation(line: 13, column: 20, scope: !42)
!51 = !DILocation(line: 13, column: 29, scope: !42)
!52 = !DILocation(line: 14, column: 22, scope: !42)
!53 = !DILocation(line: 14, column: 26, scope: !42)
!54 = !DILocation(line: 14, column: 24, scope: !42)
!55 = !DILocation(line: 14, column: 20, scope: !42)
!56 = !DILocation(line: 14, column: 29, scope: !42)
!57 = !DILocation(line: 16, column: 19, scope: !42)
!58 = !DILocation(line: 16, column: 21, scope: !42)
!59 = !DILocation(line: 16, column: 7, scope: !42)
!60 = !DILocation(line: 17, column: 16, scope: !42)
!61 = !DILocation(line: 17, column: 20, scope: !42)
!62 = !DILocation(line: 17, column: 18, scope: !42)
!63 = !{!"True"}
!64 = !DILocation(line: 17, column: 14, scope: !42)
!65 = !DILocation(line: 17, column: 23, scope: !42)
!66 = !DILocation(line: 19, column: 3, scope: !14)
!67 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !68, file: !68, line: 12, type: !69, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!68 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee")
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71}
!71 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!72 = !DILocalVariable(name: "z", arg: 1, scope: !67, file: !68, line: 12, type: !71)
!73 = !DILocation(line: 12, column: 36, scope: !67)
!74 = !DILocation(line: 13, column: 7, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !68, line: 13, column: 7)
!76 = !DILocation(line: 13, column: 9, scope: !75)
!77 = !DILocation(line: 13, column: 7, scope: !67)
!78 = !DILocation(line: 14, column: 5, scope: !75)
!79 = !DILocation(line: 15, column: 1, scope: !67)
