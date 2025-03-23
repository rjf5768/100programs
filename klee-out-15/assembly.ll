; ModuleID = '16.bc'
source_filename = "16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"/home/rongfeng/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.4 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.5 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evaluate(i32 noundef %0, i32 noundef %1, i8 noundef signext %2) #0 !dbg !14 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !21, metadata !DIExpression()), !dbg !22
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !23, metadata !DIExpression()), !dbg !24
  %8 = load i8, i8* %7, align 1, !dbg !25
  %9 = sext i8 %8 to i32, !dbg !25
  %10 = icmp eq i32 %9, 43, !dbg !27
  br i1 %10, label %11, label %15, !dbg !28

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4, !dbg !29
  %13 = load i32, i32* %6, align 4, !dbg !30
  %14 = add nsw i32 %12, %13, !dbg !31
  store i32 %14, i32* %4, align 4, !dbg !32
  br label %46, !dbg !32

15:                                               ; preds = %3
  %16 = load i8, i8* %7, align 1, !dbg !33
  %17 = sext i8 %16 to i32, !dbg !33
  %18 = icmp eq i32 %17, 45, !dbg !35
  br i1 %18, label %19, label %23, !dbg !36

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4, !dbg !37
  %21 = load i32, i32* %6, align 4, !dbg !38
  %22 = sub nsw i32 %20, %21, !dbg !39
  store i32 %22, i32* %4, align 4, !dbg !40
  br label %46, !dbg !40

23:                                               ; preds = %15
  %24 = load i8, i8* %7, align 1, !dbg !41
  %25 = sext i8 %24 to i32, !dbg !41
  %26 = icmp eq i32 %25, 42, !dbg !43
  br i1 %26, label %27, label %31, !dbg !44

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4, !dbg !45
  %29 = load i32, i32* %6, align 4, !dbg !46
  %30 = mul nsw i32 %28, %29, !dbg !47
  store i32 %30, i32* %4, align 4, !dbg !48
  br label %46, !dbg !48

31:                                               ; preds = %23
  %32 = load i8, i8* %7, align 1, !dbg !49
  %33 = sext i8 %32 to i32, !dbg !49
  %34 = icmp eq i32 %33, 47, !dbg !51
  br i1 %34, label %35, label %45, !dbg !52

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4, !dbg !53
  %37 = icmp ne i32 %36, 0, !dbg !54
  br i1 %37, label %38, label %42, !dbg !55

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4, !dbg !56
  %40 = load i32, i32* %6, align 4, !dbg !57
  %int_cast_to_i64 = zext i32 %40 to i64, !dbg !58
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !58
  %41 = sdiv i32 %39, %40, !dbg !58, !klee.check.div !59
  br label %43, !dbg !55

42:                                               ; preds = %35
  br label %43, !dbg !55

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ], !dbg !55
  store i32 %44, i32* %4, align 4, !dbg !60
  br label %46, !dbg !60

45:                                               ; preds = %31
  store i32 0, i32* %4, align 4, !dbg !61
  br label %46, !dbg !61

46:                                               ; preds = %45, %43, %27, %19, %11
  %47 = load i32, i32* %4, align 4, !dbg !62
  ret i32 %47, !dbg !62
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !63 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %3, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i8* %4, metadata !70, metadata !DIExpression()), !dbg !71
  %6 = bitcast i32* %2 to i8*, !dbg !72
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !73
  %7 = bitcast i32* %3 to i8*, !dbg !74
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !75
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !76
  %8 = load i8, i8* %4, align 1, !dbg !77
  %9 = sext i8 %8 to i32, !dbg !77
  %10 = icmp eq i32 %9, 43, !dbg !78
  br i1 %10, label %23, label %11, !dbg !79

11:                                               ; preds = %0
  %12 = load i8, i8* %4, align 1, !dbg !80
  %13 = sext i8 %12 to i32, !dbg !80
  %14 = icmp eq i32 %13, 45, !dbg !81
  br i1 %14, label %23, label %15, !dbg !82

15:                                               ; preds = %11
  %16 = load i8, i8* %4, align 1, !dbg !83
  %17 = sext i8 %16 to i32, !dbg !83
  %18 = icmp eq i32 %17, 42, !dbg !84
  br i1 %18, label %23, label %19, !dbg !85

19:                                               ; preds = %15
  %20 = load i8, i8* %4, align 1, !dbg !86
  %21 = sext i8 %20 to i32, !dbg !86
  %22 = icmp eq i32 %21, 47, !dbg !87
  br label %23, !dbg !85

23:                                               ; preds = %19, %15, %11, %0
  %24 = phi i1 [ true, %15 ], [ true, %11 ], [ true, %0 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32, !dbg !85
  %26 = sext i32 %25 to i64, !dbg !77
  call void @klee_assume(i64 noundef %26), !dbg !88
  %27 = load i8, i8* %4, align 1, !dbg !89
  %28 = sext i8 %27 to i32, !dbg !89
  %29 = icmp eq i32 %28, 47, !dbg !91
  br i1 %29, label %30, label %35, !dbg !92

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4, !dbg !93
  %32 = icmp ne i32 %31, 0, !dbg !94
  %33 = zext i1 %32 to i32, !dbg !94
  %34 = sext i32 %33 to i64, !dbg !93
  call void @klee_assume(i64 noundef %34), !dbg !95
  br label %35, !dbg !95

35:                                               ; preds = %30, %23
  call void @llvm.dbg.declare(metadata i32* %5, metadata !96, metadata !DIExpression()), !dbg !97
  %36 = load i32, i32* %2, align 4, !dbg !98
  %37 = load i32, i32* %3, align 4, !dbg !99
  %38 = load i8, i8* %4, align 1, !dbg !100
  %39 = call i32 @evaluate(i32 noundef %36, i32 noundef %37, i8 noundef signext %38), !dbg !101
  store i32 %39, i32* %5, align 4, !dbg !97
  %40 = load i32, i32* %5, align 4, !dbg !102
  ret i32 0, !dbg !103
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %0) #3 !dbg !104 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !109, metadata !DIExpression()), !dbg !110
  %3 = load i64, i64* %2, align 8, !dbg !111
  %4 = icmp eq i64 %3, 0, !dbg !113
  br i1 %4, label %5, label %6, !dbg !114

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.5, i64 0, i64 0)) #5, !dbg !115
  unreachable, !dbg !115

6:                                                ; preds = %1
  ret void, !dbg !116
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
!1 = !DIFile(filename: "16.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "57a6777ba25ea13616effcd9b0a78cc3")
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
!14 = distinct !DISubprogram(name: "evaluate", scope: !1, file: !1, line: 5, type: !15, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !17, !18}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 5, type: !17)
!20 = !DILocation(line: 5, column: 18, scope: !14)
!21 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 5, type: !17)
!22 = !DILocation(line: 5, column: 25, scope: !14)
!23 = !DILocalVariable(name: "op", arg: 3, scope: !14, file: !1, line: 5, type: !18)
!24 = !DILocation(line: 5, column: 33, scope: !14)
!25 = !DILocation(line: 6, column: 6, scope: !26)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 6, column: 6)
!27 = !DILocation(line: 6, column: 9, scope: !26)
!28 = !DILocation(line: 6, column: 6, scope: !14)
!29 = !DILocation(line: 6, column: 24, scope: !26)
!30 = !DILocation(line: 6, column: 28, scope: !26)
!31 = !DILocation(line: 6, column: 26, scope: !26)
!32 = !DILocation(line: 6, column: 17, scope: !26)
!33 = !DILocation(line: 7, column: 6, scope: !34)
!34 = distinct !DILexicalBlock(scope: !14, file: !1, line: 7, column: 6)
!35 = !DILocation(line: 7, column: 9, scope: !34)
!36 = !DILocation(line: 7, column: 6, scope: !14)
!37 = !DILocation(line: 7, column: 24, scope: !34)
!38 = !DILocation(line: 7, column: 28, scope: !34)
!39 = !DILocation(line: 7, column: 26, scope: !34)
!40 = !DILocation(line: 7, column: 17, scope: !34)
!41 = !DILocation(line: 8, column: 6, scope: !42)
!42 = distinct !DILexicalBlock(scope: !14, file: !1, line: 8, column: 6)
!43 = !DILocation(line: 8, column: 9, scope: !42)
!44 = !DILocation(line: 8, column: 6, scope: !14)
!45 = !DILocation(line: 8, column: 24, scope: !42)
!46 = !DILocation(line: 8, column: 28, scope: !42)
!47 = !DILocation(line: 8, column: 26, scope: !42)
!48 = !DILocation(line: 8, column: 17, scope: !42)
!49 = !DILocation(line: 9, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !14, file: !1, line: 9, column: 6)
!51 = !DILocation(line: 9, column: 9, scope: !50)
!52 = !DILocation(line: 9, column: 6, scope: !14)
!53 = !DILocation(line: 9, column: 25, scope: !50)
!54 = !DILocation(line: 9, column: 27, scope: !50)
!55 = !DILocation(line: 9, column: 24, scope: !50)
!56 = !DILocation(line: 9, column: 35, scope: !50)
!57 = !DILocation(line: 9, column: 39, scope: !50)
!58 = !DILocation(line: 9, column: 37, scope: !50)
!59 = !{!"True"}
!60 = !DILocation(line: 9, column: 17, scope: !50)
!61 = !DILocation(line: 10, column: 3, scope: !14)
!62 = !DILocation(line: 11, column: 1, scope: !14)
!63 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !64, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!64 = !DISubroutineType(types: !65)
!65 = !{!17}
!66 = !DILocalVariable(name: "a", scope: !63, file: !1, line: 14, type: !17)
!67 = !DILocation(line: 14, column: 7, scope: !63)
!68 = !DILocalVariable(name: "b", scope: !63, file: !1, line: 14, type: !17)
!69 = !DILocation(line: 14, column: 10, scope: !63)
!70 = !DILocalVariable(name: "op", scope: !63, file: !1, line: 15, type: !18)
!71 = !DILocation(line: 15, column: 8, scope: !63)
!72 = !DILocation(line: 16, column: 22, scope: !63)
!73 = !DILocation(line: 16, column: 3, scope: !63)
!74 = !DILocation(line: 17, column: 22, scope: !63)
!75 = !DILocation(line: 17, column: 3, scope: !63)
!76 = !DILocation(line: 18, column: 3, scope: !63)
!77 = !DILocation(line: 19, column: 15, scope: !63)
!78 = !DILocation(line: 19, column: 18, scope: !63)
!79 = !DILocation(line: 19, column: 25, scope: !63)
!80 = !DILocation(line: 19, column: 28, scope: !63)
!81 = !DILocation(line: 19, column: 31, scope: !63)
!82 = !DILocation(line: 19, column: 38, scope: !63)
!83 = !DILocation(line: 19, column: 41, scope: !63)
!84 = !DILocation(line: 19, column: 44, scope: !63)
!85 = !DILocation(line: 19, column: 51, scope: !63)
!86 = !DILocation(line: 19, column: 54, scope: !63)
!87 = !DILocation(line: 19, column: 57, scope: !63)
!88 = !DILocation(line: 19, column: 3, scope: !63)
!89 = !DILocation(line: 20, column: 6, scope: !90)
!90 = distinct !DILexicalBlock(scope: !63, file: !1, line: 20, column: 6)
!91 = !DILocation(line: 20, column: 9, scope: !90)
!92 = !DILocation(line: 20, column: 6, scope: !63)
!93 = !DILocation(line: 21, column: 17, scope: !90)
!94 = !DILocation(line: 21, column: 19, scope: !90)
!95 = !DILocation(line: 21, column: 5, scope: !90)
!96 = !DILocalVariable(name: "result", scope: !63, file: !1, line: 22, type: !17)
!97 = !DILocation(line: 22, column: 7, scope: !63)
!98 = !DILocation(line: 22, column: 25, scope: !63)
!99 = !DILocation(line: 22, column: 28, scope: !63)
!100 = !DILocation(line: 22, column: 31, scope: !63)
!101 = !DILocation(line: 22, column: 16, scope: !63)
!102 = !DILocation(line: 23, column: 10, scope: !63)
!103 = !DILocation(line: 24, column: 3, scope: !63)
!104 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !105, file: !105, line: 12, type: !106, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!105 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee")
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108}
!108 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!109 = !DILocalVariable(name: "z", arg: 1, scope: !104, file: !105, line: 12, type: !108)
!110 = !DILocation(line: 12, column: 36, scope: !104)
!111 = !DILocation(line: 13, column: 7, scope: !112)
!112 = distinct !DILexicalBlock(scope: !104, file: !105, line: 13, column: 7)
!113 = !DILocation(line: 13, column: 9, scope: !112)
!114 = !DILocation(line: 13, column: 7, scope: !104)
!115 = !DILocation(line: 14, column: 5, scope: !112)
!116 = !DILocation(line: 15, column: 1, scope: !104)
