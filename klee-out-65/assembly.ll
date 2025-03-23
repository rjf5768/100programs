; ModuleID = '66.bc'
source_filename = "66.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %6, metadata !23, metadata !DIExpression()), !dbg !24
  %7 = bitcast i32* %2 to i8*, !dbg !25
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !26
  %8 = bitcast i32* %3 to i8*, !dbg !27
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !28
  %9 = bitcast i32* %4 to i8*, !dbg !29
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !30
  %10 = bitcast i32* %5 to i8*, !dbg !31
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !32
  %11 = bitcast i32* %6 to i8*, !dbg !33
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !34
  %12 = load i32, i32* %2, align 4, !dbg !35
  %13 = icmp sge i32 %12, 0, !dbg !36
  br i1 %13, label %14, label %17, !dbg !37

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4, !dbg !38
  %16 = icmp sle i32 %15, 100, !dbg !39
  br label %17

17:                                               ; preds = %14, %0
  %18 = phi i1 [ false, %0 ], [ %16, %14 ], !dbg !40
  %19 = zext i1 %18 to i32, !dbg !37
  %20 = sext i32 %19 to i64, !dbg !35
  call void @klee_assume(i64 noundef %20), !dbg !41
  %21 = load i32, i32* %3, align 4, !dbg !42
  %22 = icmp sge i32 %21, 0, !dbg !43
  br i1 %22, label %23, label %26, !dbg !44

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4, !dbg !45
  %25 = icmp sle i32 %24, 100, !dbg !46
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i1 [ false, %17 ], [ %25, %23 ], !dbg !40
  %28 = zext i1 %27 to i32, !dbg !44
  %29 = sext i32 %28 to i64, !dbg !42
  call void @klee_assume(i64 noundef %29), !dbg !47
  %30 = load i32, i32* %4, align 4, !dbg !48
  %31 = icmp sge i32 %30, 0, !dbg !49
  br i1 %31, label %32, label %35, !dbg !50

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4, !dbg !51
  %34 = icmp sle i32 %33, 100, !dbg !52
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi i1 [ false, %26 ], [ %34, %32 ], !dbg !40
  %37 = zext i1 %36 to i32, !dbg !50
  %38 = sext i32 %37 to i64, !dbg !48
  call void @klee_assume(i64 noundef %38), !dbg !53
  %39 = load i32, i32* %5, align 4, !dbg !54
  %40 = icmp sge i32 %39, 0, !dbg !55
  br i1 %40, label %41, label %44, !dbg !56

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4, !dbg !57
  %43 = icmp sle i32 %42, 100, !dbg !58
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi i1 [ false, %35 ], [ %43, %41 ], !dbg !40
  %46 = zext i1 %45 to i32, !dbg !56
  %47 = sext i32 %46 to i64, !dbg !54
  call void @klee_assume(i64 noundef %47), !dbg !59
  %48 = load i32, i32* %6, align 4, !dbg !60
  %49 = icmp sge i32 %48, 0, !dbg !61
  br i1 %49, label %50, label %53, !dbg !62

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4, !dbg !63
  %52 = icmp sle i32 %51, 100, !dbg !64
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi i1 [ false, %44 ], [ %52, %50 ], !dbg !40
  %55 = zext i1 %54 to i32, !dbg !62
  %56 = sext i32 %55 to i64, !dbg !60
  call void @klee_assume(i64 noundef %56), !dbg !65
  %57 = load i32, i32* %2, align 4, !dbg !66
  %58 = load i32, i32* %3, align 4, !dbg !68
  %59 = add nsw i32 %57, %58, !dbg !69
  %60 = load i32, i32* %4, align 4, !dbg !70
  %61 = add nsw i32 %59, %60, !dbg !71
  %62 = srem i32 %61, 4, !dbg !72
  %63 = icmp eq i32 %62, 0, !dbg !73
  br i1 %63, label %64, label %77, !dbg !74

64:                                               ; preds = %53
  %65 = load i32, i32* %5, align 4, !dbg !75
  %66 = load i32, i32* %6, align 4, !dbg !78
  %67 = icmp sgt i32 %65, %66, !dbg !79
  br i1 %67, label %68, label %72, !dbg !80

68:                                               ; preds = %64
  %69 = load i32, i32* %2, align 4, !dbg !81
  %70 = load i32, i32* %3, align 4, !dbg !83
  %71 = add nsw i32 %69, %70, !dbg !84
  store i32 %71, i32* %5, align 4, !dbg !85
  br label %76, !dbg !86

72:                                               ; preds = %64
  %73 = load i32, i32* %4, align 4, !dbg !87
  %74 = load i32, i32* %5, align 4, !dbg !89
  %75 = add nsw i32 %73, %74, !dbg !90
  store i32 %75, i32* %6, align 4, !dbg !91
  br label %76

76:                                               ; preds = %72, %68
  br label %94, !dbg !92

77:                                               ; preds = %53
  %78 = load i32, i32* %2, align 4, !dbg !93
  %79 = load i32, i32* %3, align 4, !dbg !95
  %80 = icmp slt i32 %78, %79, !dbg !96
  br i1 %80, label %81, label %89, !dbg !97

81:                                               ; preds = %77
  %82 = load i32, i32* %4, align 4, !dbg !98
  %83 = load i32, i32* %5, align 4, !dbg !99
  %84 = icmp slt i32 %82, %83, !dbg !100
  br i1 %84, label %85, label %89, !dbg !101

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4, !dbg !102
  %87 = load i32, i32* %3, align 4, !dbg !104
  %88 = sub nsw i32 %86, %87, !dbg !105
  store i32 %88, i32* %2, align 4, !dbg !106
  br label %93, !dbg !107

89:                                               ; preds = %81, %77
  %90 = load i32, i32* %2, align 4, !dbg !108
  %91 = load i32, i32* %6, align 4, !dbg !110
  %92 = add nsw i32 %90, %91, !dbg !111
  store i32 %92, i32* %4, align 4, !dbg !112
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %76
  ret i32 0, !dbg !113
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "66.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "823c0b11dad2c27ade48f92195907e37")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !11, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "a", scope: !10, file: !1, line: 3, type: !13)
!16 = !DILocation(line: 3, column: 9, scope: !10)
!17 = !DILocalVariable(name: "b", scope: !10, file: !1, line: 3, type: !13)
!18 = !DILocation(line: 3, column: 12, scope: !10)
!19 = !DILocalVariable(name: "c", scope: !10, file: !1, line: 3, type: !13)
!20 = !DILocation(line: 3, column: 15, scope: !10)
!21 = !DILocalVariable(name: "d", scope: !10, file: !1, line: 3, type: !13)
!22 = !DILocation(line: 3, column: 18, scope: !10)
!23 = !DILocalVariable(name: "e", scope: !10, file: !1, line: 3, type: !13)
!24 = !DILocation(line: 3, column: 21, scope: !10)
!25 = !DILocation(line: 4, column: 24, scope: !10)
!26 = !DILocation(line: 4, column: 5, scope: !10)
!27 = !DILocation(line: 5, column: 24, scope: !10)
!28 = !DILocation(line: 5, column: 5, scope: !10)
!29 = !DILocation(line: 6, column: 24, scope: !10)
!30 = !DILocation(line: 6, column: 5, scope: !10)
!31 = !DILocation(line: 7, column: 24, scope: !10)
!32 = !DILocation(line: 7, column: 5, scope: !10)
!33 = !DILocation(line: 8, column: 24, scope: !10)
!34 = !DILocation(line: 8, column: 5, scope: !10)
!35 = !DILocation(line: 9, column: 17, scope: !10)
!36 = !DILocation(line: 9, column: 19, scope: !10)
!37 = !DILocation(line: 9, column: 24, scope: !10)
!38 = !DILocation(line: 9, column: 27, scope: !10)
!39 = !DILocation(line: 9, column: 29, scope: !10)
!40 = !DILocation(line: 0, scope: !10)
!41 = !DILocation(line: 9, column: 5, scope: !10)
!42 = !DILocation(line: 10, column: 17, scope: !10)
!43 = !DILocation(line: 10, column: 19, scope: !10)
!44 = !DILocation(line: 10, column: 24, scope: !10)
!45 = !DILocation(line: 10, column: 27, scope: !10)
!46 = !DILocation(line: 10, column: 29, scope: !10)
!47 = !DILocation(line: 10, column: 5, scope: !10)
!48 = !DILocation(line: 11, column: 17, scope: !10)
!49 = !DILocation(line: 11, column: 19, scope: !10)
!50 = !DILocation(line: 11, column: 24, scope: !10)
!51 = !DILocation(line: 11, column: 27, scope: !10)
!52 = !DILocation(line: 11, column: 29, scope: !10)
!53 = !DILocation(line: 11, column: 5, scope: !10)
!54 = !DILocation(line: 12, column: 17, scope: !10)
!55 = !DILocation(line: 12, column: 19, scope: !10)
!56 = !DILocation(line: 12, column: 24, scope: !10)
!57 = !DILocation(line: 12, column: 27, scope: !10)
!58 = !DILocation(line: 12, column: 29, scope: !10)
!59 = !DILocation(line: 12, column: 5, scope: !10)
!60 = !DILocation(line: 13, column: 17, scope: !10)
!61 = !DILocation(line: 13, column: 19, scope: !10)
!62 = !DILocation(line: 13, column: 24, scope: !10)
!63 = !DILocation(line: 13, column: 27, scope: !10)
!64 = !DILocation(line: 13, column: 29, scope: !10)
!65 = !DILocation(line: 13, column: 5, scope: !10)
!66 = !DILocation(line: 15, column: 10, scope: !67)
!67 = distinct !DILexicalBlock(scope: !10, file: !1, line: 15, column: 9)
!68 = !DILocation(line: 15, column: 14, scope: !67)
!69 = !DILocation(line: 15, column: 12, scope: !67)
!70 = !DILocation(line: 15, column: 18, scope: !67)
!71 = !DILocation(line: 15, column: 16, scope: !67)
!72 = !DILocation(line: 15, column: 21, scope: !67)
!73 = !DILocation(line: 15, column: 25, scope: !67)
!74 = !DILocation(line: 15, column: 9, scope: !10)
!75 = !DILocation(line: 16, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 16, column: 13)
!77 = distinct !DILexicalBlock(scope: !67, file: !1, line: 15, column: 31)
!78 = !DILocation(line: 16, column: 17, scope: !76)
!79 = !DILocation(line: 16, column: 15, scope: !76)
!80 = !DILocation(line: 16, column: 13, scope: !77)
!81 = !DILocation(line: 17, column: 17, scope: !82)
!82 = distinct !DILexicalBlock(scope: !76, file: !1, line: 16, column: 20)
!83 = !DILocation(line: 17, column: 21, scope: !82)
!84 = !DILocation(line: 17, column: 19, scope: !82)
!85 = !DILocation(line: 17, column: 15, scope: !82)
!86 = !DILocation(line: 18, column: 9, scope: !82)
!87 = !DILocation(line: 19, column: 17, scope: !88)
!88 = distinct !DILexicalBlock(scope: !76, file: !1, line: 18, column: 16)
!89 = !DILocation(line: 19, column: 21, scope: !88)
!90 = !DILocation(line: 19, column: 19, scope: !88)
!91 = !DILocation(line: 19, column: 15, scope: !88)
!92 = !DILocation(line: 21, column: 5, scope: !77)
!93 = !DILocation(line: 21, column: 16, scope: !94)
!94 = distinct !DILexicalBlock(scope: !67, file: !1, line: 21, column: 16)
!95 = !DILocation(line: 21, column: 20, scope: !94)
!96 = !DILocation(line: 21, column: 18, scope: !94)
!97 = !DILocation(line: 21, column: 22, scope: !94)
!98 = !DILocation(line: 21, column: 25, scope: !94)
!99 = !DILocation(line: 21, column: 29, scope: !94)
!100 = !DILocation(line: 21, column: 27, scope: !94)
!101 = !DILocation(line: 21, column: 16, scope: !67)
!102 = !DILocation(line: 22, column: 13, scope: !103)
!103 = distinct !DILexicalBlock(scope: !94, file: !1, line: 21, column: 32)
!104 = !DILocation(line: 22, column: 17, scope: !103)
!105 = !DILocation(line: 22, column: 15, scope: !103)
!106 = !DILocation(line: 22, column: 11, scope: !103)
!107 = !DILocation(line: 23, column: 5, scope: !103)
!108 = !DILocation(line: 24, column: 13, scope: !109)
!109 = distinct !DILexicalBlock(scope: !94, file: !1, line: 23, column: 12)
!110 = !DILocation(line: 24, column: 17, scope: !109)
!111 = !DILocation(line: 24, column: 15, scope: !109)
!112 = !DILocation(line: 24, column: 11, scope: !109)
!113 = !DILocation(line: 26, column: 5, scope: !10)
