; ModuleID = '73.bc'
source_filename = "73.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  %5 = bitcast i32* %2 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !22
  %6 = bitcast i32* %3 to i8*, !dbg !23
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !24
  %7 = bitcast i32* %4 to i8*, !dbg !25
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !26
  %8 = load i32, i32* %2, align 4, !dbg !27
  %9 = icmp sge i32 %8, -200, !dbg !28
  br i1 %9, label %10, label %13, !dbg !29

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4, !dbg !30
  %12 = icmp sle i32 %11, 200, !dbg !31
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !32
  %15 = zext i1 %14 to i32, !dbg !29
  %16 = sext i32 %15 to i64, !dbg !27
  call void @klee_assume(i64 noundef %16), !dbg !33
  %17 = load i32, i32* %3, align 4, !dbg !34
  %18 = icmp sge i32 %17, -200, !dbg !35
  br i1 %18, label %19, label %22, !dbg !36

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4, !dbg !37
  %21 = icmp sle i32 %20, 200, !dbg !38
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i1 [ false, %13 ], [ %21, %19 ], !dbg !32
  %24 = zext i1 %23 to i32, !dbg !36
  %25 = sext i32 %24 to i64, !dbg !34
  call void @klee_assume(i64 noundef %25), !dbg !39
  %26 = load i32, i32* %4, align 4, !dbg !40
  %27 = icmp sge i32 %26, -200, !dbg !41
  br i1 %27, label %28, label %31, !dbg !42

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4, !dbg !43
  %30 = icmp sle i32 %29, 200, !dbg !44
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i1 [ false, %22 ], [ %30, %28 ], !dbg !32
  %33 = zext i1 %32 to i32, !dbg !42
  %34 = sext i32 %33 to i64, !dbg !40
  call void @klee_assume(i64 noundef %34), !dbg !45
  %35 = load i32, i32* %2, align 4, !dbg !46
  %36 = load i32, i32* %3, align 4, !dbg !48
  %37 = mul nsw i32 %35, %36, !dbg !49
  %38 = load i32, i32* %4, align 4, !dbg !50
  %39 = sub nsw i32 %37, %38, !dbg !51
  %40 = srem i32 %39, 10, !dbg !52
  %41 = icmp eq i32 %40, 0, !dbg !53
  br i1 %41, label %42, label %73, !dbg !54

42:                                               ; preds = %31
  %43 = load i32, i32* %2, align 4, !dbg !55
  %44 = load i32, i32* %3, align 4, !dbg !56
  %45 = add nsw i32 %43, %44, !dbg !57
  %46 = load i32, i32* %4, align 4, !dbg !58
  %47 = add nsw i32 %45, %46, !dbg !59
  %48 = icmp slt i32 %47, 0, !dbg !60
  br i1 %48, label %49, label %73, !dbg !61

49:                                               ; preds = %42
  %50 = load i32, i32* %2, align 4, !dbg !62
  %51 = load i32, i32* %2, align 4, !dbg !65
  %52 = mul nsw i32 %50, %51, !dbg !66
  %53 = load i32, i32* %3, align 4, !dbg !67
  %54 = load i32, i32* %3, align 4, !dbg !68
  %55 = mul nsw i32 %53, %54, !dbg !69
  %56 = add nsw i32 %52, %55, !dbg !70
  %57 = load i32, i32* %4, align 4, !dbg !71
  %58 = load i32, i32* %4, align 4, !dbg !72
  %59 = mul nsw i32 %57, %58, !dbg !73
  %60 = add nsw i32 %59, 100, !dbg !74
  %61 = icmp sgt i32 %56, %60, !dbg !75
  br i1 %61, label %62, label %67, !dbg !76

62:                                               ; preds = %49
  %63 = load i32, i32* %3, align 4, !dbg !77
  %64 = load i32, i32* %4, align 4, !dbg !79
  %65 = mul nsw i32 %63, %64, !dbg !80
  %66 = sub nsw i32 %65, 7, !dbg !81
  store i32 %66, i32* %2, align 4, !dbg !82
  br label %72, !dbg !83

67:                                               ; preds = %49
  %68 = load i32, i32* %2, align 4, !dbg !84
  %69 = load i32, i32* %3, align 4, !dbg !86
  %70 = mul nsw i32 %68, %69, !dbg !87
  %71 = add nsw i32 %70, 4, !dbg !88
  store i32 %71, i32* %4, align 4, !dbg !89
  br label %72

72:                                               ; preds = %67, %62
  br label %111, !dbg !90

73:                                               ; preds = %42, %31
  %74 = load i32, i32* %2, align 4, !dbg !91
  %75 = load i32, i32* %4, align 4, !dbg !93
  %76 = sub nsw i32 %74, %75, !dbg !94
  %77 = load i32, i32* %3, align 4, !dbg !95
  %78 = load i32, i32* %4, align 4, !dbg !96
  %79 = add nsw i32 %77, %78, !dbg !97
  %80 = mul nsw i32 %76, %79, !dbg !98
  %81 = icmp sgt i32 %80, 500, !dbg !99
  br i1 %81, label %82, label %87, !dbg !100

82:                                               ; preds = %73
  %83 = load i32, i32* %2, align 4, !dbg !101
  %84 = load i32, i32* %4, align 4, !dbg !103
  %85 = mul nsw i32 %83, %84, !dbg !104
  %86 = sub nsw i32 %85, 11, !dbg !105
  store i32 %86, i32* %3, align 4, !dbg !106
  br label %110, !dbg !107

87:                                               ; preds = %73
  %88 = load i32, i32* %2, align 4, !dbg !108
  %89 = load i32, i32* %3, align 4, !dbg !110
  %90 = add nsw i32 %88, %89, !dbg !111
  %91 = load i32, i32* %4, align 4, !dbg !112
  %92 = add nsw i32 %90, %91, !dbg !113
  %93 = srem i32 %92, 14, !dbg !114
  %94 = icmp eq i32 %93, 5, !dbg !115
  br i1 %94, label %95, label %101, !dbg !116

95:                                               ; preds = %87
  %96 = load i32, i32* %3, align 4, !dbg !117
  %97 = load i32, i32* %3, align 4, !dbg !119
  %98 = mul nsw i32 %96, %97, !dbg !120
  %99 = load i32, i32* %2, align 4, !dbg !121
  %100 = sub nsw i32 %98, %99, !dbg !122
  store i32 %100, i32* %4, align 4, !dbg !123
  br label %109, !dbg !124

101:                                              ; preds = %87
  %102 = load i32, i32* %4, align 4, !dbg !125
  %103 = load i32, i32* %4, align 4, !dbg !127
  %104 = mul nsw i32 %102, %103, !dbg !128
  %105 = load i32, i32* %3, align 4, !dbg !129
  %106 = load i32, i32* %2, align 4, !dbg !130
  %107 = mul nsw i32 %105, %106, !dbg !131
  %108 = sub nsw i32 %104, %107, !dbg !132
  store i32 %108, i32* %2, align 4, !dbg !133
  br label %109

109:                                              ; preds = %101, %95
  br label %110

110:                                              ; preds = %109, %82
  br label %111

111:                                              ; preds = %110, %72
  ret i32 0, !dbg !134
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
!1 = !DIFile(filename: "73.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "bccf21c1bc7576b2d703df45d9624c6e")
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
!15 = !DILocalVariable(name: "p", scope: !10, file: !1, line: 3, type: !13)
!16 = !DILocation(line: 3, column: 9, scope: !10)
!17 = !DILocalVariable(name: "q", scope: !10, file: !1, line: 3, type: !13)
!18 = !DILocation(line: 3, column: 12, scope: !10)
!19 = !DILocalVariable(name: "r", scope: !10, file: !1, line: 3, type: !13)
!20 = !DILocation(line: 3, column: 15, scope: !10)
!21 = !DILocation(line: 4, column: 24, scope: !10)
!22 = !DILocation(line: 4, column: 5, scope: !10)
!23 = !DILocation(line: 5, column: 24, scope: !10)
!24 = !DILocation(line: 5, column: 5, scope: !10)
!25 = !DILocation(line: 6, column: 24, scope: !10)
!26 = !DILocation(line: 6, column: 5, scope: !10)
!27 = !DILocation(line: 7, column: 17, scope: !10)
!28 = !DILocation(line: 7, column: 19, scope: !10)
!29 = !DILocation(line: 7, column: 27, scope: !10)
!30 = !DILocation(line: 7, column: 30, scope: !10)
!31 = !DILocation(line: 7, column: 32, scope: !10)
!32 = !DILocation(line: 0, scope: !10)
!33 = !DILocation(line: 7, column: 5, scope: !10)
!34 = !DILocation(line: 8, column: 17, scope: !10)
!35 = !DILocation(line: 8, column: 19, scope: !10)
!36 = !DILocation(line: 8, column: 27, scope: !10)
!37 = !DILocation(line: 8, column: 30, scope: !10)
!38 = !DILocation(line: 8, column: 32, scope: !10)
!39 = !DILocation(line: 8, column: 5, scope: !10)
!40 = !DILocation(line: 9, column: 17, scope: !10)
!41 = !DILocation(line: 9, column: 19, scope: !10)
!42 = !DILocation(line: 9, column: 27, scope: !10)
!43 = !DILocation(line: 9, column: 30, scope: !10)
!44 = !DILocation(line: 9, column: 32, scope: !10)
!45 = !DILocation(line: 9, column: 5, scope: !10)
!46 = !DILocation(line: 11, column: 10, scope: !47)
!47 = distinct !DILexicalBlock(scope: !10, file: !1, line: 11, column: 9)
!48 = !DILocation(line: 11, column: 14, scope: !47)
!49 = !DILocation(line: 11, column: 12, scope: !47)
!50 = !DILocation(line: 11, column: 18, scope: !47)
!51 = !DILocation(line: 11, column: 16, scope: !47)
!52 = !DILocation(line: 11, column: 21, scope: !47)
!53 = !DILocation(line: 11, column: 26, scope: !47)
!54 = !DILocation(line: 11, column: 31, scope: !47)
!55 = !DILocation(line: 11, column: 35, scope: !47)
!56 = !DILocation(line: 11, column: 39, scope: !47)
!57 = !DILocation(line: 11, column: 37, scope: !47)
!58 = !DILocation(line: 11, column: 43, scope: !47)
!59 = !DILocation(line: 11, column: 41, scope: !47)
!60 = !DILocation(line: 11, column: 46, scope: !47)
!61 = !DILocation(line: 11, column: 9, scope: !10)
!62 = !DILocation(line: 12, column: 14, scope: !63)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 12, column: 13)
!64 = distinct !DILexicalBlock(scope: !47, file: !1, line: 11, column: 51)
!65 = !DILocation(line: 12, column: 18, scope: !63)
!66 = !DILocation(line: 12, column: 16, scope: !63)
!67 = !DILocation(line: 12, column: 22, scope: !63)
!68 = !DILocation(line: 12, column: 26, scope: !63)
!69 = !DILocation(line: 12, column: 24, scope: !63)
!70 = !DILocation(line: 12, column: 20, scope: !63)
!71 = !DILocation(line: 12, column: 32, scope: !63)
!72 = !DILocation(line: 12, column: 36, scope: !63)
!73 = !DILocation(line: 12, column: 34, scope: !63)
!74 = !DILocation(line: 12, column: 38, scope: !63)
!75 = !DILocation(line: 12, column: 29, scope: !63)
!76 = !DILocation(line: 12, column: 13, scope: !64)
!77 = !DILocation(line: 13, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !63, file: !1, line: 12, column: 46)
!79 = !DILocation(line: 13, column: 21, scope: !78)
!80 = !DILocation(line: 13, column: 19, scope: !78)
!81 = !DILocation(line: 13, column: 23, scope: !78)
!82 = !DILocation(line: 13, column: 15, scope: !78)
!83 = !DILocation(line: 14, column: 9, scope: !78)
!84 = !DILocation(line: 15, column: 17, scope: !85)
!85 = distinct !DILexicalBlock(scope: !63, file: !1, line: 14, column: 16)
!86 = !DILocation(line: 15, column: 21, scope: !85)
!87 = !DILocation(line: 15, column: 19, scope: !85)
!88 = !DILocation(line: 15, column: 23, scope: !85)
!89 = !DILocation(line: 15, column: 15, scope: !85)
!90 = !DILocation(line: 17, column: 5, scope: !64)
!91 = !DILocation(line: 17, column: 17, scope: !92)
!92 = distinct !DILexicalBlock(scope: !47, file: !1, line: 17, column: 16)
!93 = !DILocation(line: 17, column: 21, scope: !92)
!94 = !DILocation(line: 17, column: 19, scope: !92)
!95 = !DILocation(line: 17, column: 27, scope: !92)
!96 = !DILocation(line: 17, column: 31, scope: !92)
!97 = !DILocation(line: 17, column: 29, scope: !92)
!98 = !DILocation(line: 17, column: 24, scope: !92)
!99 = !DILocation(line: 17, column: 34, scope: !92)
!100 = !DILocation(line: 17, column: 16, scope: !47)
!101 = !DILocation(line: 18, column: 13, scope: !102)
!102 = distinct !DILexicalBlock(scope: !92, file: !1, line: 17, column: 41)
!103 = !DILocation(line: 18, column: 17, scope: !102)
!104 = !DILocation(line: 18, column: 15, scope: !102)
!105 = !DILocation(line: 18, column: 19, scope: !102)
!106 = !DILocation(line: 18, column: 11, scope: !102)
!107 = !DILocation(line: 19, column: 5, scope: !102)
!108 = !DILocation(line: 19, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !92, file: !1, line: 19, column: 16)
!110 = !DILocation(line: 19, column: 21, scope: !109)
!111 = !DILocation(line: 19, column: 19, scope: !109)
!112 = !DILocation(line: 19, column: 25, scope: !109)
!113 = !DILocation(line: 19, column: 23, scope: !109)
!114 = !DILocation(line: 19, column: 28, scope: !109)
!115 = !DILocation(line: 19, column: 33, scope: !109)
!116 = !DILocation(line: 19, column: 16, scope: !92)
!117 = !DILocation(line: 20, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !109, file: !1, line: 19, column: 39)
!119 = !DILocation(line: 20, column: 17, scope: !118)
!120 = !DILocation(line: 20, column: 15, scope: !118)
!121 = !DILocation(line: 20, column: 21, scope: !118)
!122 = !DILocation(line: 20, column: 19, scope: !118)
!123 = !DILocation(line: 20, column: 11, scope: !118)
!124 = !DILocation(line: 21, column: 5, scope: !118)
!125 = !DILocation(line: 22, column: 14, scope: !126)
!126 = distinct !DILexicalBlock(scope: !109, file: !1, line: 21, column: 12)
!127 = !DILocation(line: 22, column: 18, scope: !126)
!128 = !DILocation(line: 22, column: 16, scope: !126)
!129 = !DILocation(line: 22, column: 24, scope: !126)
!130 = !DILocation(line: 22, column: 28, scope: !126)
!131 = !DILocation(line: 22, column: 26, scope: !126)
!132 = !DILocation(line: 22, column: 21, scope: !126)
!133 = !DILocation(line: 22, column: 11, scope: !126)
!134 = !DILocation(line: 25, column: 5, scope: !10)
