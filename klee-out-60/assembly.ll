; ModuleID = '61.bc'
source_filename = "61.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"61.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"/home/rongfeng/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.4 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.5 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_prime(i32 noundef %0) #0 !dbg !14 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !18, metadata !DIExpression()), !dbg !19
  %5 = load i32, i32* %3, align 4, !dbg !20
  %6 = icmp slt i32 %5, 2, !dbg !22
  br i1 %6, label %7, label %8, !dbg !23

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !24
  br label %26, !dbg !24

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !27
  store i32 2, i32* %4, align 4, !dbg !27
  br label %9, !dbg !28

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %4, align 4, !dbg !29
  %11 = load i32, i32* %4, align 4, !dbg !31
  %12 = mul nsw i32 %10, %11, !dbg !32
  %13 = load i32, i32* %3, align 4, !dbg !33
  %14 = icmp sle i32 %12, %13, !dbg !34
  br i1 %14, label %15, label %25, !dbg !35

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4, !dbg !36
  %17 = load i32, i32* %4, align 4, !dbg !38
  %int_cast_to_i64 = zext i32 %17 to i64, !dbg !39
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !39
  %18 = srem i32 %16, %17, !dbg !39, !klee.check.div !40
  %19 = icmp eq i32 %18, 0, !dbg !41
  br i1 %19, label %20, label %21, !dbg !42

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4, !dbg !43
  br label %26, !dbg !43

21:                                               ; preds = %15
  br label %22, !dbg !44

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4, !dbg !45
  %24 = add nsw i32 %23, 1, !dbg !45
  store i32 %24, i32* %4, align 4, !dbg !45
  br label %9, !dbg !46, !llvm.loop !47

25:                                               ; preds = %9
  store i32 1, i32* %2, align 4, !dbg !50
  br label %26, !dbg !50

26:                                               ; preds = %25, %20, %7
  %27 = load i32, i32* %2, align 4, !dbg !51
  ret i32 %27, !dbg !51
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !52 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %3, metadata !57, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %3, align 4, !dbg !58
  %5 = bitcast i32* %2 to i8*, !dbg !59
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !60
  %6 = load i32, i32* %2, align 4, !dbg !61
  %7 = icmp sge i32 %6, 2, !dbg !62
  br i1 %7, label %8, label %11, !dbg !63

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4, !dbg !64
  %10 = icmp sle i32 %9, 50, !dbg !65
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ], !dbg !66
  %13 = zext i1 %12 to i32, !dbg !63
  %14 = sext i32 %13 to i64, !dbg !61
  call void @klee_assume(i64 noundef %14), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %4, metadata !68, metadata !DIExpression()), !dbg !70
  store i32 2, i32* %4, align 4, !dbg !70
  br label %15, !dbg !71

15:                                               ; preds = %27, %11
  %16 = load i32, i32* %4, align 4, !dbg !72
  %17 = load i32, i32* %2, align 4, !dbg !74
  %18 = icmp sle i32 %16, %17, !dbg !75
  br i1 %18, label %19, label %30, !dbg !76

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4, !dbg !77
  %21 = call i32 @is_prime(i32 noundef %20), !dbg !80
  %22 = icmp ne i32 %21, 0, !dbg !80
  br i1 %22, label %23, label %26, !dbg !81

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4, !dbg !82
  %25 = add nsw i32 %24, 1, !dbg !82
  store i32 %25, i32* %3, align 4, !dbg !82
  br label %26, !dbg !83

26:                                               ; preds = %23, %19
  br label %27, !dbg !84

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4, !dbg !85
  %29 = add nsw i32 %28, 1, !dbg !85
  store i32 %29, i32* %4, align 4, !dbg !85
  br label %15, !dbg !86, !llvm.loop !87

30:                                               ; preds = %15
  %31 = load i32, i32* %3, align 4, !dbg !89
  %32 = icmp slt i32 %31, 0, !dbg !91
  br i1 %32, label %33, label %34, !dbg !92

33:                                               ; preds = %30
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6, !dbg !93
  unreachable, !dbg !93

34:                                               ; preds = %30
  ret i32 0, !dbg !94
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %0) #4 !dbg !95 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !100, metadata !DIExpression()), !dbg !101
  %3 = load i64, i64* %2, align 8, !dbg !102
  %4 = icmp eq i64 %3, 0, !dbg !104
  br i1 %4, label %5, label %6, !dbg !105

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.5, i64 0, i64 0)) #7, !dbg !106
  unreachable, !dbg !106

6:                                                ; preds = %1
  ret void, !dbg !107
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "61.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "c78996bf561639a4488a1eddb7cf790b")
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
!14 = distinct !DISubprogram(name: "is_prime", scope: !1, file: !1, line: 5, type: !15, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "n", arg: 1, scope: !14, file: !1, line: 5, type: !17)
!19 = !DILocation(line: 5, column: 18, scope: !14)
!20 = !DILocation(line: 6, column: 6, scope: !21)
!21 = distinct !DILexicalBlock(scope: !14, file: !1, line: 6, column: 6)
!22 = !DILocation(line: 6, column: 8, scope: !21)
!23 = !DILocation(line: 6, column: 6, scope: !14)
!24 = !DILocation(line: 6, column: 13, scope: !21)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 7, type: !17)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 7, column: 3)
!27 = !DILocation(line: 7, column: 12, scope: !26)
!28 = !DILocation(line: 7, column: 8, scope: !26)
!29 = !DILocation(line: 7, column: 19, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 7, column: 3)
!31 = !DILocation(line: 7, column: 23, scope: !30)
!32 = !DILocation(line: 7, column: 21, scope: !30)
!33 = !DILocation(line: 7, column: 28, scope: !30)
!34 = !DILocation(line: 7, column: 25, scope: !30)
!35 = !DILocation(line: 7, column: 3, scope: !26)
!36 = !DILocation(line: 8, column: 8, scope: !37)
!37 = distinct !DILexicalBlock(scope: !30, file: !1, line: 8, column: 8)
!38 = !DILocation(line: 8, column: 12, scope: !37)
!39 = !DILocation(line: 8, column: 10, scope: !37)
!40 = !{!"True"}
!41 = !DILocation(line: 8, column: 14, scope: !37)
!42 = !DILocation(line: 8, column: 8, scope: !30)
!43 = !DILocation(line: 9, column: 7, scope: !37)
!44 = !DILocation(line: 8, column: 17, scope: !37)
!45 = !DILocation(line: 7, column: 32, scope: !30)
!46 = !DILocation(line: 7, column: 3, scope: !30)
!47 = distinct !{!47, !35, !48, !49}
!48 = !DILocation(line: 9, column: 14, scope: !26)
!49 = !{!"llvm.loop.mustprogress"}
!50 = !DILocation(line: 10, column: 3, scope: !14)
!51 = !DILocation(line: 11, column: 1, scope: !14)
!52 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !53, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!53 = !DISubroutineType(types: !54)
!54 = !{!17}
!55 = !DILocalVariable(name: "n", scope: !52, file: !1, line: 14, type: !17)
!56 = !DILocation(line: 14, column: 7, scope: !52)
!57 = !DILocalVariable(name: "count", scope: !52, file: !1, line: 14, type: !17)
!58 = !DILocation(line: 14, column: 10, scope: !52)
!59 = !DILocation(line: 15, column: 22, scope: !52)
!60 = !DILocation(line: 15, column: 3, scope: !52)
!61 = !DILocation(line: 16, column: 15, scope: !52)
!62 = !DILocation(line: 16, column: 17, scope: !52)
!63 = !DILocation(line: 16, column: 22, scope: !52)
!64 = !DILocation(line: 16, column: 25, scope: !52)
!65 = !DILocation(line: 16, column: 27, scope: !52)
!66 = !DILocation(line: 0, scope: !52)
!67 = !DILocation(line: 16, column: 3, scope: !52)
!68 = !DILocalVariable(name: "i", scope: !69, file: !1, line: 17, type: !17)
!69 = distinct !DILexicalBlock(scope: !52, file: !1, line: 17, column: 3)
!70 = !DILocation(line: 17, column: 12, scope: !69)
!71 = !DILocation(line: 17, column: 8, scope: !69)
!72 = !DILocation(line: 17, column: 19, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 17, column: 3)
!74 = !DILocation(line: 17, column: 24, scope: !73)
!75 = !DILocation(line: 17, column: 21, scope: !73)
!76 = !DILocation(line: 17, column: 3, scope: !69)
!77 = !DILocation(line: 18, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 18, column: 8)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 17, column: 32)
!80 = !DILocation(line: 18, column: 8, scope: !78)
!81 = !DILocation(line: 18, column: 8, scope: !79)
!82 = !DILocation(line: 19, column: 12, scope: !78)
!83 = !DILocation(line: 19, column: 7, scope: !78)
!84 = !DILocation(line: 20, column: 3, scope: !79)
!85 = !DILocation(line: 17, column: 28, scope: !73)
!86 = !DILocation(line: 17, column: 3, scope: !73)
!87 = distinct !{!87, !76, !88, !49}
!88 = !DILocation(line: 20, column: 3, scope: !69)
!89 = !DILocation(line: 21, column: 6, scope: !90)
!90 = distinct !DILexicalBlock(scope: !52, file: !1, line: 21, column: 6)
!91 = !DILocation(line: 21, column: 12, scope: !90)
!92 = !DILocation(line: 21, column: 6, scope: !52)
!93 = !DILocation(line: 22, column: 5, scope: !90)
!94 = !DILocation(line: 23, column: 3, scope: !52)
!95 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !96, file: !96, line: 12, type: !97, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!96 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee")
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99}
!99 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!100 = !DILocalVariable(name: "z", arg: 1, scope: !95, file: !96, line: 12, type: !99)
!101 = !DILocation(line: 12, column: 36, scope: !95)
!102 = !DILocation(line: 13, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !95, file: !96, line: 13, column: 7)
!104 = !DILocation(line: 13, column: 9, scope: !103)
!105 = !DILocation(line: 13, column: 7, scope: !95)
!106 = !DILocation(line: 14, column: 5, scope: !103)
!107 = !DILocation(line: 15, column: 1, scope: !95)
