; ModuleID = '72.bc'
source_filename = "72.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"z\00", align 1

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
  %9 = icmp sge i32 %8, -50, !dbg !28
  br i1 %9, label %10, label %13, !dbg !29

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4, !dbg !30
  %12 = icmp sle i32 %11, 50, !dbg !31
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !32
  %15 = zext i1 %14 to i32, !dbg !29
  %16 = sext i32 %15 to i64, !dbg !27
  call void @klee_assume(i64 noundef %16), !dbg !33
  %17 = load i32, i32* %3, align 4, !dbg !34
  %18 = icmp sge i32 %17, -50, !dbg !35
  br i1 %18, label %19, label %22, !dbg !36

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4, !dbg !37
  %21 = icmp sle i32 %20, 50, !dbg !38
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i1 [ false, %13 ], [ %21, %19 ], !dbg !32
  %24 = zext i1 %23 to i32, !dbg !36
  %25 = sext i32 %24 to i64, !dbg !34
  call void @klee_assume(i64 noundef %25), !dbg !39
  %26 = load i32, i32* %4, align 4, !dbg !40
  %27 = icmp sge i32 %26, -50, !dbg !41
  br i1 %27, label %28, label %31, !dbg !42

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4, !dbg !43
  %30 = icmp sle i32 %29, 50, !dbg !44
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
  %39 = mul nsw i32 %37, %38, !dbg !51
  %40 = srem i32 %39, 11, !dbg !52
  %41 = icmp eq i32 %40, 5, !dbg !53
  br i1 %41, label %49, label %42, !dbg !54

42:                                               ; preds = %31
  %43 = load i32, i32* %2, align 4, !dbg !55
  %44 = load i32, i32* %3, align 4, !dbg !56
  %45 = add nsw i32 %43, %44, !dbg !57
  %46 = load i32, i32* %4, align 4, !dbg !58
  %47 = add nsw i32 %45, %46, !dbg !59
  %48 = icmp sgt i32 %47, 60, !dbg !60
  br i1 %48, label %49, label %91, !dbg !61

49:                                               ; preds = %42, %31
  %50 = load i32, i32* %2, align 4, !dbg !62
  %51 = load i32, i32* %3, align 4, !dbg !65
  %52 = sub nsw i32 %50, %51, !dbg !66
  %53 = load i32, i32* %4, align 4, !dbg !67
  %54 = add nsw i32 %52, %53, !dbg !68
  %55 = load i32, i32* %2, align 4, !dbg !69
  %56 = load i32, i32* %3, align 4, !dbg !70
  %57 = add nsw i32 %55, %56, !dbg !71
  %58 = load i32, i32* %4, align 4, !dbg !72
  %59 = sub nsw i32 %57, %58, !dbg !73
  %60 = mul nsw i32 %54, %59, !dbg !74
  %61 = icmp slt i32 %60, 400, !dbg !75
  br i1 %61, label %62, label %67, !dbg !76

62:                                               ; preds = %49
  %63 = load i32, i32* %3, align 4, !dbg !77
  %64 = load i32, i32* %4, align 4, !dbg !79
  %65 = mul nsw i32 %63, %64, !dbg !80
  %66 = add nsw i32 %65, 8, !dbg !81
  store i32 %66, i32* %2, align 4, !dbg !82
  br label %90, !dbg !83

67:                                               ; preds = %49
  %68 = load i32, i32* %4, align 4, !dbg !84
  %69 = load i32, i32* %4, align 4, !dbg !86
  %70 = mul nsw i32 %68, %69, !dbg !87
  %71 = load i32, i32* %3, align 4, !dbg !88
  %72 = load i32, i32* %2, align 4, !dbg !89
  %73 = mul nsw i32 %71, %72, !dbg !90
  %74 = sub nsw i32 %70, %73, !dbg !91
  %75 = icmp sgt i32 %74, 250, !dbg !92
  br i1 %75, label %76, label %82, !dbg !93

76:                                               ; preds = %67
  %77 = load i32, i32* %2, align 4, !dbg !94
  %78 = load i32, i32* %2, align 4, !dbg !96
  %79 = mul nsw i32 %77, %78, !dbg !97
  %80 = load i32, i32* %4, align 4, !dbg !98
  %81 = sub nsw i32 %79, %80, !dbg !99
  store i32 %81, i32* %3, align 4, !dbg !100
  br label %89, !dbg !101

82:                                               ; preds = %67
  %83 = load i32, i32* %2, align 4, !dbg !102
  %84 = load i32, i32* %3, align 4, !dbg !104
  %85 = add nsw i32 %83, %84, !dbg !105
  %86 = load i32, i32* %4, align 4, !dbg !106
  %87 = sub nsw i32 %86, 1, !dbg !107
  %88 = mul nsw i32 %85, %87, !dbg !108
  store i32 %88, i32* %4, align 4, !dbg !109
  br label %89

89:                                               ; preds = %82, %76
  br label %90

90:                                               ; preds = %89, %62
  br label %116, !dbg !110

91:                                               ; preds = %42
  %92 = load i32, i32* %2, align 4, !dbg !111
  %93 = load i32, i32* %2, align 4, !dbg !113
  %94 = mul nsw i32 %92, %93, !dbg !114
  %95 = load i32, i32* %3, align 4, !dbg !115
  %96 = load i32, i32* %3, align 4, !dbg !116
  %97 = mul nsw i32 %95, %96, !dbg !117
  %98 = add nsw i32 %94, %97, !dbg !118
  %99 = load i32, i32* %4, align 4, !dbg !119
  %100 = load i32, i32* %4, align 4, !dbg !120
  %101 = mul nsw i32 %99, %100, !dbg !121
  %102 = sub nsw i32 %98, %101, !dbg !122
  %103 = srem i32 %102, 12, !dbg !123
  %104 = icmp eq i32 %103, 3, !dbg !124
  br i1 %104, label %105, label %110, !dbg !125

105:                                              ; preds = %91
  %106 = load i32, i32* %3, align 4, !dbg !126
  %107 = load i32, i32* %4, align 4, !dbg !128
  %108 = add nsw i32 %106, %107, !dbg !129
  %109 = add nsw i32 %108, 33, !dbg !130
  store i32 %109, i32* %2, align 4, !dbg !131
  br label %115, !dbg !132

110:                                              ; preds = %91
  %111 = load i32, i32* %2, align 4, !dbg !133
  %112 = load i32, i32* %3, align 4, !dbg !135
  %113 = mul nsw i32 %111, %112, !dbg !136
  %114 = sub nsw i32 %113, 27, !dbg !137
  store i32 %114, i32* %4, align 4, !dbg !138
  br label %115

115:                                              ; preds = %110, %105
  br label %116

116:                                              ; preds = %115, %90
  ret i32 0, !dbg !139
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
!1 = !DIFile(filename: "72.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "8ea2ab56c16fc3fe34c82e08af020328")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !11, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "x", scope: !10, file: !1, line: 4, type: !13)
!16 = !DILocation(line: 4, column: 9, scope: !10)
!17 = !DILocalVariable(name: "y", scope: !10, file: !1, line: 4, type: !13)
!18 = !DILocation(line: 4, column: 12, scope: !10)
!19 = !DILocalVariable(name: "z", scope: !10, file: !1, line: 4, type: !13)
!20 = !DILocation(line: 4, column: 15, scope: !10)
!21 = !DILocation(line: 5, column: 24, scope: !10)
!22 = !DILocation(line: 5, column: 5, scope: !10)
!23 = !DILocation(line: 6, column: 24, scope: !10)
!24 = !DILocation(line: 6, column: 5, scope: !10)
!25 = !DILocation(line: 7, column: 24, scope: !10)
!26 = !DILocation(line: 7, column: 5, scope: !10)
!27 = !DILocation(line: 8, column: 17, scope: !10)
!28 = !DILocation(line: 8, column: 19, scope: !10)
!29 = !DILocation(line: 8, column: 26, scope: !10)
!30 = !DILocation(line: 8, column: 29, scope: !10)
!31 = !DILocation(line: 8, column: 31, scope: !10)
!32 = !DILocation(line: 0, scope: !10)
!33 = !DILocation(line: 8, column: 5, scope: !10)
!34 = !DILocation(line: 9, column: 17, scope: !10)
!35 = !DILocation(line: 9, column: 19, scope: !10)
!36 = !DILocation(line: 9, column: 26, scope: !10)
!37 = !DILocation(line: 9, column: 29, scope: !10)
!38 = !DILocation(line: 9, column: 31, scope: !10)
!39 = !DILocation(line: 9, column: 5, scope: !10)
!40 = !DILocation(line: 10, column: 17, scope: !10)
!41 = !DILocation(line: 10, column: 19, scope: !10)
!42 = !DILocation(line: 10, column: 26, scope: !10)
!43 = !DILocation(line: 10, column: 29, scope: !10)
!44 = !DILocation(line: 10, column: 31, scope: !10)
!45 = !DILocation(line: 10, column: 5, scope: !10)
!46 = !DILocation(line: 12, column: 10, scope: !47)
!47 = distinct !DILexicalBlock(scope: !10, file: !1, line: 12, column: 9)
!48 = !DILocation(line: 12, column: 14, scope: !47)
!49 = !DILocation(line: 12, column: 12, scope: !47)
!50 = !DILocation(line: 12, column: 18, scope: !47)
!51 = !DILocation(line: 12, column: 16, scope: !47)
!52 = !DILocation(line: 12, column: 21, scope: !47)
!53 = !DILocation(line: 12, column: 26, scope: !47)
!54 = !DILocation(line: 12, column: 31, scope: !47)
!55 = !DILocation(line: 12, column: 35, scope: !47)
!56 = !DILocation(line: 12, column: 39, scope: !47)
!57 = !DILocation(line: 12, column: 37, scope: !47)
!58 = !DILocation(line: 12, column: 43, scope: !47)
!59 = !DILocation(line: 12, column: 41, scope: !47)
!60 = !DILocation(line: 12, column: 46, scope: !47)
!61 = !DILocation(line: 12, column: 9, scope: !10)
!62 = !DILocation(line: 13, column: 14, scope: !63)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 13, column: 13)
!64 = distinct !DILexicalBlock(scope: !47, file: !1, line: 12, column: 52)
!65 = !DILocation(line: 13, column: 18, scope: !63)
!66 = !DILocation(line: 13, column: 16, scope: !63)
!67 = !DILocation(line: 13, column: 22, scope: !63)
!68 = !DILocation(line: 13, column: 20, scope: !63)
!69 = !DILocation(line: 13, column: 28, scope: !63)
!70 = !DILocation(line: 13, column: 32, scope: !63)
!71 = !DILocation(line: 13, column: 30, scope: !63)
!72 = !DILocation(line: 13, column: 36, scope: !63)
!73 = !DILocation(line: 13, column: 34, scope: !63)
!74 = !DILocation(line: 13, column: 25, scope: !63)
!75 = !DILocation(line: 13, column: 39, scope: !63)
!76 = !DILocation(line: 13, column: 13, scope: !64)
!77 = !DILocation(line: 14, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !63, file: !1, line: 13, column: 46)
!79 = !DILocation(line: 14, column: 21, scope: !78)
!80 = !DILocation(line: 14, column: 19, scope: !78)
!81 = !DILocation(line: 14, column: 23, scope: !78)
!82 = !DILocation(line: 14, column: 15, scope: !78)
!83 = !DILocation(line: 15, column: 9, scope: !78)
!84 = !DILocation(line: 15, column: 21, scope: !85)
!85 = distinct !DILexicalBlock(scope: !63, file: !1, line: 15, column: 20)
!86 = !DILocation(line: 15, column: 25, scope: !85)
!87 = !DILocation(line: 15, column: 23, scope: !85)
!88 = !DILocation(line: 15, column: 29, scope: !85)
!89 = !DILocation(line: 15, column: 33, scope: !85)
!90 = !DILocation(line: 15, column: 31, scope: !85)
!91 = !DILocation(line: 15, column: 27, scope: !85)
!92 = !DILocation(line: 15, column: 36, scope: !85)
!93 = !DILocation(line: 15, column: 20, scope: !63)
!94 = !DILocation(line: 16, column: 17, scope: !95)
!95 = distinct !DILexicalBlock(scope: !85, file: !1, line: 15, column: 43)
!96 = !DILocation(line: 16, column: 21, scope: !95)
!97 = !DILocation(line: 16, column: 19, scope: !95)
!98 = !DILocation(line: 16, column: 25, scope: !95)
!99 = !DILocation(line: 16, column: 23, scope: !95)
!100 = !DILocation(line: 16, column: 15, scope: !95)
!101 = !DILocation(line: 17, column: 9, scope: !95)
!102 = !DILocation(line: 18, column: 18, scope: !103)
!103 = distinct !DILexicalBlock(scope: !85, file: !1, line: 17, column: 16)
!104 = !DILocation(line: 18, column: 22, scope: !103)
!105 = !DILocation(line: 18, column: 20, scope: !103)
!106 = !DILocation(line: 18, column: 28, scope: !103)
!107 = !DILocation(line: 18, column: 30, scope: !103)
!108 = !DILocation(line: 18, column: 25, scope: !103)
!109 = !DILocation(line: 18, column: 15, scope: !103)
!110 = !DILocation(line: 20, column: 5, scope: !64)
!111 = !DILocation(line: 20, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !47, file: !1, line: 20, column: 16)
!113 = !DILocation(line: 20, column: 21, scope: !112)
!114 = !DILocation(line: 20, column: 19, scope: !112)
!115 = !DILocation(line: 20, column: 25, scope: !112)
!116 = !DILocation(line: 20, column: 29, scope: !112)
!117 = !DILocation(line: 20, column: 27, scope: !112)
!118 = !DILocation(line: 20, column: 23, scope: !112)
!119 = !DILocation(line: 20, column: 33, scope: !112)
!120 = !DILocation(line: 20, column: 37, scope: !112)
!121 = !DILocation(line: 20, column: 35, scope: !112)
!122 = !DILocation(line: 20, column: 31, scope: !112)
!123 = !DILocation(line: 20, column: 40, scope: !112)
!124 = !DILocation(line: 20, column: 45, scope: !112)
!125 = !DILocation(line: 20, column: 16, scope: !47)
!126 = !DILocation(line: 21, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !112, file: !1, line: 20, column: 51)
!128 = !DILocation(line: 21, column: 17, scope: !127)
!129 = !DILocation(line: 21, column: 15, scope: !127)
!130 = !DILocation(line: 21, column: 19, scope: !127)
!131 = !DILocation(line: 21, column: 11, scope: !127)
!132 = !DILocation(line: 22, column: 5, scope: !127)
!133 = !DILocation(line: 23, column: 13, scope: !134)
!134 = distinct !DILexicalBlock(scope: !112, file: !1, line: 22, column: 12)
!135 = !DILocation(line: 23, column: 17, scope: !134)
!136 = !DILocation(line: 23, column: 15, scope: !134)
!137 = !DILocation(line: 23, column: 19, scope: !134)
!138 = !DILocation(line: 23, column: 11, scope: !134)
!139 = !DILocation(line: 26, column: 5, scope: !10)
