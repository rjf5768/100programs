; ModuleID = '96.bc'
source_filename = "96.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %3, metadata !20, metadata !DIExpression()), !dbg !21
  %4 = bitcast i32* %2 to i8*, !dbg !22
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !23
  %5 = load i32, i32* %2, align 4, !dbg !24
  %6 = icmp sge i32 %5, 0, !dbg !25
  br i1 %6, label %7, label %10, !dbg !26

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !27
  %9 = icmp sle i32 %8, 31, !dbg !28
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !29
  %12 = zext i1 %11 to i32, !dbg !26
  %13 = sext i32 %12 to i64, !dbg !24
  call void @klee_assume(i64 noundef %13), !dbg !30
  %14 = load i32, i32* %2, align 4, !dbg !31
  %15 = icmp eq i32 %14, 0, !dbg !32
  br i1 %15, label %16, label %17, !dbg !33

16:                                               ; preds = %10
  br label %21, !dbg !33

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4, !dbg !34
  %int_cast_to_i64 = zext i32 %18 to i64, !dbg !35
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !35
  %19 = shl i32 1, %18, !dbg !35, !klee.check.shift !36
  %20 = sub nsw i32 %19, 1, !dbg !37
  br label %21, !dbg !33

21:                                               ; preds = %17, %16
  %22 = phi i32 [ 0, %16 ], [ %20, %17 ], !dbg !33
  store i32 %22, i32* %3, align 4, !dbg !38
  ret i32 0, !dbg !39
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64 %0, i64 %1) #3 !dbg !40 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !45, metadata !DIExpression()), !dbg !46
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !47, metadata !DIExpression()), !dbg !48
  %5 = load i64, i64* %4, align 8, !dbg !49
  %6 = load i64, i64* %3, align 8, !dbg !51
  %7 = icmp uge i64 %5, %6, !dbg !52
  br i1 %7, label %8, label %9, !dbg !53

8:                                                ; preds = %2
  call void @klee_report_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !54
  unreachable, !dbg !54

9:                                                ; preds = %2
  ret void, !dbg !56
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
!1 = !DIFile(filename: "96.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "001457c0fe7d9546000ff9c92c336bf3")
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "Ubuntu clang version 11.1.0-6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rongfeng/klee/runtime/Intrinsic/klee_overshift_check.c", directory: "/home/rongfeng/klee/build/runtime/Intrinsic")
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
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !15, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "n", scope: !14, file: !1, line: 5, type: !17)
!19 = !DILocation(line: 5, column: 9, scope: !14)
!20 = !DILocalVariable(name: "mask", scope: !14, file: !1, line: 5, type: !17)
!21 = !DILocation(line: 5, column: 12, scope: !14)
!22 = !DILocation(line: 6, column: 24, scope: !14)
!23 = !DILocation(line: 6, column: 5, scope: !14)
!24 = !DILocation(line: 7, column: 17, scope: !14)
!25 = !DILocation(line: 7, column: 19, scope: !14)
!26 = !DILocation(line: 7, column: 24, scope: !14)
!27 = !DILocation(line: 7, column: 27, scope: !14)
!28 = !DILocation(line: 7, column: 29, scope: !14)
!29 = !DILocation(line: 0, scope: !14)
!30 = !DILocation(line: 7, column: 5, scope: !14)
!31 = !DILocation(line: 8, column: 13, scope: !14)
!32 = !DILocation(line: 8, column: 15, scope: !14)
!33 = !DILocation(line: 8, column: 12, scope: !14)
!34 = !DILocation(line: 8, column: 33, scope: !14)
!35 = !DILocation(line: 8, column: 30, scope: !14)
!36 = !{!"True"}
!37 = !DILocation(line: 8, column: 36, scope: !14)
!38 = !DILocation(line: 8, column: 10, scope: !14)
!39 = !DILocation(line: 9, column: 5, scope: !14)
!40 = distinct !DISubprogram(name: "klee_overshift_check", scope: !41, file: !41, line: 20, type: !42, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!41 = !DIFile(filename: "runtime/Intrinsic/klee_overshift_check.c", directory: "/home/rongfeng/klee")
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !44}
!44 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !40, file: !41, line: 20, type: !44)
!46 = !DILocation(line: 20, column: 46, scope: !40)
!47 = !DILocalVariable(name: "shift", arg: 2, scope: !40, file: !41, line: 20, type: !44)
!48 = !DILocation(line: 20, column: 75, scope: !40)
!49 = !DILocation(line: 21, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !40, file: !41, line: 21, column: 7)
!51 = !DILocation(line: 21, column: 16, scope: !50)
!52 = !DILocation(line: 21, column: 13, scope: !50)
!53 = !DILocation(line: 21, column: 7, scope: !40)
!54 = !DILocation(line: 27, column: 5, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !41, line: 21, column: 26)
!56 = !DILocation(line: 29, column: 1, scope: !40)
