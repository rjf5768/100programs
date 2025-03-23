; ModuleID = '21.bc'
source_filename = "21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"21.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @valid_date(i32 noundef %0, i32 noundef %1) #0 !dbg !10 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = load i32, i32* %5, align 4, !dbg !19
  %7 = icmp slt i32 %6, 1, !dbg !21
  br i1 %7, label %11, label %8, !dbg !22

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4, !dbg !23
  %10 = icmp sgt i32 %9, 12, !dbg !24
  br i1 %10, label %11, label %12, !dbg !25

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4, !dbg !26
  br label %48, !dbg !26

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4, !dbg !27
  %14 = icmp slt i32 %13, 1, !dbg !29
  br i1 %14, label %15, label %16, !dbg !30

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4, !dbg !31
  br label %48, !dbg !31

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4, !dbg !32
  %18 = icmp eq i32 %17, 2, !dbg !34
  br i1 %18, label %19, label %24, !dbg !35

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4, !dbg !36
  %21 = icmp sgt i32 %20, 29, !dbg !39
  br i1 %21, label %22, label %23, !dbg !40

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4, !dbg !41
  br label %48, !dbg !41

23:                                               ; preds = %19
  br label %47, !dbg !42

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4, !dbg !43
  %26 = icmp eq i32 %25, 4, !dbg !45
  br i1 %26, label %36, label %27, !dbg !46

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4, !dbg !47
  %29 = icmp eq i32 %28, 6, !dbg !48
  br i1 %29, label %36, label %30, !dbg !49

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4, !dbg !50
  %32 = icmp eq i32 %31, 9, !dbg !51
  br i1 %32, label %36, label %33, !dbg !52

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4, !dbg !53
  %35 = icmp eq i32 %34, 11, !dbg !54
  br i1 %35, label %36, label %41, !dbg !55

36:                                               ; preds = %33, %30, %27, %24
  %37 = load i32, i32* %4, align 4, !dbg !56
  %38 = icmp sgt i32 %37, 30, !dbg !59
  br i1 %38, label %39, label %40, !dbg !60

39:                                               ; preds = %36
  store i32 0, i32* %3, align 4, !dbg !61
  br label %48, !dbg !61

40:                                               ; preds = %36
  br label %46, !dbg !62

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4, !dbg !63
  %43 = icmp sgt i32 %42, 31, !dbg !66
  br i1 %43, label %44, label %45, !dbg !67

44:                                               ; preds = %41
  store i32 0, i32* %3, align 4, !dbg !68
  br label %48, !dbg !68

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %40
  br label %47

47:                                               ; preds = %46, %23
  store i32 1, i32* %3, align 4, !dbg !69
  br label %48, !dbg !69

48:                                               ; preds = %47, %44, %39, %22, %15, %11
  %49 = load i32, i32* %3, align 4, !dbg !70
  ret i32 %49, !dbg !70
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !71 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %3, metadata !76, metadata !DIExpression()), !dbg !77
  %5 = bitcast i32* %2 to i8*, !dbg !78
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !79
  %6 = bitcast i32* %3 to i8*, !dbg !80
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !81
  %7 = load i32, i32* %2, align 4, !dbg !82
  %8 = icmp sge i32 %7, 0, !dbg !83
  br i1 %8, label %9, label %12, !dbg !84

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !85
  %11 = icmp sle i32 %10, 40, !dbg !86
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !87
  %14 = zext i1 %13 to i32, !dbg !84
  %15 = sext i32 %14 to i64, !dbg !82
  call void @klee_assume(i64 noundef %15), !dbg !88
  %16 = load i32, i32* %3, align 4, !dbg !89
  %17 = icmp sge i32 %16, 0, !dbg !90
  br i1 %17, label %18, label %21, !dbg !91

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4, !dbg !92
  %20 = icmp sle i32 %19, 15, !dbg !93
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i1 [ false, %12 ], [ %20, %18 ], !dbg !87
  %23 = zext i1 %22 to i32, !dbg !91
  %24 = sext i32 %23 to i64, !dbg !89
  call void @klee_assume(i64 noundef %24), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %4, metadata !95, metadata !DIExpression()), !dbg !96
  %25 = load i32, i32* %2, align 4, !dbg !97
  %26 = load i32, i32* %3, align 4, !dbg !98
  %27 = call i32 @valid_date(i32 noundef %25, i32 noundef %26), !dbg !99
  store i32 %27, i32* %4, align 4, !dbg !96
  %28 = load i32, i32* %4, align 4, !dbg !100
  %29 = icmp ne i32 %28, 0, !dbg !100
  br i1 %29, label %30, label %37, !dbg !102

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4, !dbg !103
  %32 = icmp slt i32 %31, 1, !dbg !104
  br i1 %32, label %36, label %33, !dbg !105

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4, !dbg !106
  %35 = icmp sgt i32 %34, 12, !dbg !107
  br i1 %35, label %36, label %37, !dbg !108

36:                                               ; preds = %33, %30
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !109
  unreachable, !dbg !109

37:                                               ; preds = %33, %21
  ret i32 0, !dbg !110
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "21.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "655cc5299720ed0e29a460905dd95645")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "valid_date", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "day", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 20, scope: !10)
!17 = !DILocalVariable(name: "month", arg: 2, scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 5, column: 29, scope: !10)
!19 = !DILocation(line: 6, column: 6, scope: !20)
!20 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 6)
!21 = !DILocation(line: 6, column: 12, scope: !20)
!22 = !DILocation(line: 6, column: 16, scope: !20)
!23 = !DILocation(line: 6, column: 19, scope: !20)
!24 = !DILocation(line: 6, column: 25, scope: !20)
!25 = !DILocation(line: 6, column: 6, scope: !10)
!26 = !DILocation(line: 6, column: 31, scope: !20)
!27 = !DILocation(line: 7, column: 6, scope: !28)
!28 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 6)
!29 = !DILocation(line: 7, column: 10, scope: !28)
!30 = !DILocation(line: 7, column: 6, scope: !10)
!31 = !DILocation(line: 7, column: 15, scope: !28)
!32 = !DILocation(line: 8, column: 6, scope: !33)
!33 = distinct !DILexicalBlock(scope: !10, file: !1, line: 8, column: 6)
!34 = !DILocation(line: 8, column: 12, scope: !33)
!35 = !DILocation(line: 8, column: 6, scope: !10)
!36 = !DILocation(line: 9, column: 8, scope: !37)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 9, column: 8)
!38 = distinct !DILexicalBlock(scope: !33, file: !1, line: 8, column: 18)
!39 = !DILocation(line: 9, column: 12, scope: !37)
!40 = !DILocation(line: 9, column: 8, scope: !38)
!41 = !DILocation(line: 9, column: 18, scope: !37)
!42 = !DILocation(line: 10, column: 3, scope: !38)
!43 = !DILocation(line: 10, column: 13, scope: !44)
!44 = distinct !DILexicalBlock(scope: !33, file: !1, line: 10, column: 13)
!45 = !DILocation(line: 10, column: 19, scope: !44)
!46 = !DILocation(line: 10, column: 24, scope: !44)
!47 = !DILocation(line: 10, column: 27, scope: !44)
!48 = !DILocation(line: 10, column: 33, scope: !44)
!49 = !DILocation(line: 10, column: 38, scope: !44)
!50 = !DILocation(line: 10, column: 41, scope: !44)
!51 = !DILocation(line: 10, column: 47, scope: !44)
!52 = !DILocation(line: 10, column: 52, scope: !44)
!53 = !DILocation(line: 10, column: 55, scope: !44)
!54 = !DILocation(line: 10, column: 61, scope: !44)
!55 = !DILocation(line: 10, column: 13, scope: !33)
!56 = !DILocation(line: 11, column: 8, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 11, column: 8)
!58 = distinct !DILexicalBlock(scope: !44, file: !1, line: 10, column: 68)
!59 = !DILocation(line: 11, column: 12, scope: !57)
!60 = !DILocation(line: 11, column: 8, scope: !58)
!61 = !DILocation(line: 11, column: 18, scope: !57)
!62 = !DILocation(line: 12, column: 3, scope: !58)
!63 = !DILocation(line: 13, column: 8, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !1, line: 13, column: 8)
!65 = distinct !DILexicalBlock(scope: !44, file: !1, line: 12, column: 10)
!66 = !DILocation(line: 13, column: 12, scope: !64)
!67 = !DILocation(line: 13, column: 8, scope: !65)
!68 = !DILocation(line: 13, column: 18, scope: !64)
!69 = !DILocation(line: 15, column: 3, scope: !10)
!70 = !DILocation(line: 16, column: 1, scope: !10)
!71 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !72, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!72 = !DISubroutineType(types: !73)
!73 = !{!13}
!74 = !DILocalVariable(name: "day", scope: !71, file: !1, line: 19, type: !13)
!75 = !DILocation(line: 19, column: 7, scope: !71)
!76 = !DILocalVariable(name: "month", scope: !71, file: !1, line: 19, type: !13)
!77 = !DILocation(line: 19, column: 12, scope: !71)
!78 = !DILocation(line: 20, column: 22, scope: !71)
!79 = !DILocation(line: 20, column: 3, scope: !71)
!80 = !DILocation(line: 21, column: 22, scope: !71)
!81 = !DILocation(line: 21, column: 3, scope: !71)
!82 = !DILocation(line: 22, column: 15, scope: !71)
!83 = !DILocation(line: 22, column: 19, scope: !71)
!84 = !DILocation(line: 22, column: 24, scope: !71)
!85 = !DILocation(line: 22, column: 27, scope: !71)
!86 = !DILocation(line: 22, column: 31, scope: !71)
!87 = !DILocation(line: 0, scope: !71)
!88 = !DILocation(line: 22, column: 3, scope: !71)
!89 = !DILocation(line: 23, column: 15, scope: !71)
!90 = !DILocation(line: 23, column: 21, scope: !71)
!91 = !DILocation(line: 23, column: 26, scope: !71)
!92 = !DILocation(line: 23, column: 29, scope: !71)
!93 = !DILocation(line: 23, column: 35, scope: !71)
!94 = !DILocation(line: 23, column: 3, scope: !71)
!95 = !DILocalVariable(name: "valid", scope: !71, file: !1, line: 24, type: !13)
!96 = !DILocation(line: 24, column: 7, scope: !71)
!97 = !DILocation(line: 24, column: 26, scope: !71)
!98 = !DILocation(line: 24, column: 31, scope: !71)
!99 = !DILocation(line: 24, column: 15, scope: !71)
!100 = !DILocation(line: 25, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !71, file: !1, line: 25, column: 6)
!102 = !DILocation(line: 25, column: 12, scope: !101)
!103 = !DILocation(line: 25, column: 16, scope: !101)
!104 = !DILocation(line: 25, column: 22, scope: !101)
!105 = !DILocation(line: 25, column: 26, scope: !101)
!106 = !DILocation(line: 25, column: 29, scope: !101)
!107 = !DILocation(line: 25, column: 35, scope: !101)
!108 = !DILocation(line: 25, column: 6, scope: !71)
!109 = !DILocation(line: 26, column: 5, scope: !101)
!110 = !DILocation(line: 27, column: 3, scope: !71)
