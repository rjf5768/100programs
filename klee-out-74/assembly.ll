; ModuleID = '75.bc'
source_filename = "75.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"o\00", align 1

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
  %9 = icmp sge i32 %8, -120, !dbg !28
  br i1 %9, label %10, label %13, !dbg !29

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4, !dbg !30
  %12 = icmp sle i32 %11, 120, !dbg !31
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !32
  %15 = zext i1 %14 to i32, !dbg !29
  %16 = sext i32 %15 to i64, !dbg !27
  call void @klee_assume(i64 noundef %16), !dbg !33
  %17 = load i32, i32* %3, align 4, !dbg !34
  %18 = icmp sge i32 %17, -120, !dbg !35
  br i1 %18, label %19, label %22, !dbg !36

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4, !dbg !37
  %21 = icmp sle i32 %20, 120, !dbg !38
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i1 [ false, %13 ], [ %21, %19 ], !dbg !32
  %24 = zext i1 %23 to i32, !dbg !36
  %25 = sext i32 %24 to i64, !dbg !34
  call void @klee_assume(i64 noundef %25), !dbg !39
  %26 = load i32, i32* %4, align 4, !dbg !40
  %27 = icmp sge i32 %26, -120, !dbg !41
  br i1 %27, label %28, label %31, !dbg !42

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4, !dbg !43
  %30 = icmp sle i32 %29, 120, !dbg !44
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
  %39 = add nsw i32 %37, %38, !dbg !51
  %40 = srem i32 %39, 17, !dbg !52
  %41 = icmp eq i32 %40, 7, !dbg !53
  br i1 %41, label %42, label %82, !dbg !54

42:                                               ; preds = %31
  %43 = load i32, i32* %2, align 4, !dbg !55
  %44 = load i32, i32* %4, align 4, !dbg !56
  %45 = add nsw i32 %43, %44, !dbg !57
  %46 = load i32, i32* %3, align 4, !dbg !58
  %47 = icmp slt i32 %45, %46, !dbg !59
  br i1 %47, label %48, label %82, !dbg !60

48:                                               ; preds = %42
  %49 = load i32, i32* %2, align 4, !dbg !61
  %50 = load i32, i32* %2, align 4, !dbg !64
  %51 = mul nsw i32 %49, %50, !dbg !65
  %52 = load i32, i32* %4, align 4, !dbg !66
  %53 = load i32, i32* %4, align 4, !dbg !67
  %54 = mul nsw i32 %52, %53, !dbg !68
  %55 = sub nsw i32 %51, %54, !dbg !69
  %56 = icmp sgt i32 %55, 400, !dbg !70
  br i1 %56, label %57, label %62, !dbg !71

57:                                               ; preds = %48
  %58 = load i32, i32* %2, align 4, !dbg !72
  %59 = load i32, i32* %4, align 4, !dbg !74
  %60 = mul nsw i32 %58, %59, !dbg !75
  %61 = add nsw i32 %60, 9, !dbg !76
  store i32 %61, i32* %3, align 4, !dbg !77
  br label %81, !dbg !78

62:                                               ; preds = %48
  %63 = load i32, i32* %2, align 4, !dbg !79
  %64 = load i32, i32* %3, align 4, !dbg !81
  %65 = add nsw i32 %63, %64, !dbg !82
  %66 = load i32, i32* %4, align 4, !dbg !83
  %67 = add nsw i32 %65, %66, !dbg !84
  %68 = srem i32 %67, 10, !dbg !85
  %69 = icmp eq i32 %68, 2, !dbg !86
  br i1 %69, label %70, label %75, !dbg !87

70:                                               ; preds = %62
  %71 = load i32, i32* %3, align 4, !dbg !88
  %72 = load i32, i32* %4, align 4, !dbg !90
  %73 = mul nsw i32 %71, %72, !dbg !91
  %74 = sub nsw i32 %73, 13, !dbg !92
  store i32 %74, i32* %2, align 4, !dbg !93
  br label %80, !dbg !94

75:                                               ; preds = %62
  %76 = load i32, i32* %2, align 4, !dbg !95
  %77 = load i32, i32* %3, align 4, !dbg !97
  %78 = mul nsw i32 %76, %77, !dbg !98
  %79 = add nsw i32 %78, 14, !dbg !99
  store i32 %79, i32* %4, align 4, !dbg !100
  br label %80

80:                                               ; preds = %75, %70
  br label %81

81:                                               ; preds = %80, %57
  br label %105, !dbg !101

82:                                               ; preds = %42, %31
  %83 = load i32, i32* %2, align 4, !dbg !102
  %84 = load i32, i32* %3, align 4, !dbg !104
  %85 = sub nsw i32 %83, %84, !dbg !105
  %86 = load i32, i32* %4, align 4, !dbg !106
  %87 = load i32, i32* %3, align 4, !dbg !107
  %88 = add nsw i32 %86, %87, !dbg !108
  %89 = mul nsw i32 %85, %88, !dbg !109
  %90 = icmp sgt i32 %89, 700, !dbg !110
  br i1 %90, label %91, label %96, !dbg !111

91:                                               ; preds = %82
  %92 = load i32, i32* %2, align 4, !dbg !112
  %93 = load i32, i32* %3, align 4, !dbg !114
  %94 = mul nsw i32 %92, %93, !dbg !115
  %95 = sub nsw i32 %94, 15, !dbg !116
  store i32 %95, i32* %4, align 4, !dbg !117
  br label %104, !dbg !118

96:                                               ; preds = %82
  %97 = load i32, i32* %4, align 4, !dbg !119
  %98 = load i32, i32* %4, align 4, !dbg !121
  %99 = mul nsw i32 %97, %98, !dbg !122
  %100 = load i32, i32* %2, align 4, !dbg !123
  %101 = load i32, i32* %3, align 4, !dbg !124
  %102 = mul nsw i32 %100, %101, !dbg !125
  %103 = sub nsw i32 %99, %102, !dbg !126
  store i32 %103, i32* %2, align 4, !dbg !127
  br label %104

104:                                              ; preds = %96, %91
  br label %105

105:                                              ; preds = %104, %81
  ret i32 0, !dbg !128
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
!1 = !DIFile(filename: "75.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "8839b80ba17726e9fa484ef95652ae18")
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
!15 = !DILocalVariable(name: "m", scope: !10, file: !1, line: 3, type: !13)
!16 = !DILocation(line: 3, column: 9, scope: !10)
!17 = !DILocalVariable(name: "n", scope: !10, file: !1, line: 3, type: !13)
!18 = !DILocation(line: 3, column: 12, scope: !10)
!19 = !DILocalVariable(name: "o", scope: !10, file: !1, line: 3, type: !13)
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
!58 = !DILocation(line: 11, column: 44, scope: !47)
!59 = !DILocation(line: 11, column: 42, scope: !47)
!60 = !DILocation(line: 11, column: 9, scope: !10)
!61 = !DILocation(line: 12, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 12, column: 13)
!63 = distinct !DILexicalBlock(scope: !47, file: !1, line: 11, column: 47)
!64 = !DILocation(line: 12, column: 18, scope: !62)
!65 = !DILocation(line: 12, column: 16, scope: !62)
!66 = !DILocation(line: 12, column: 22, scope: !62)
!67 = !DILocation(line: 12, column: 26, scope: !62)
!68 = !DILocation(line: 12, column: 24, scope: !62)
!69 = !DILocation(line: 12, column: 20, scope: !62)
!70 = !DILocation(line: 12, column: 29, scope: !62)
!71 = !DILocation(line: 12, column: 13, scope: !63)
!72 = !DILocation(line: 13, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !62, file: !1, line: 12, column: 36)
!74 = !DILocation(line: 13, column: 21, scope: !73)
!75 = !DILocation(line: 13, column: 19, scope: !73)
!76 = !DILocation(line: 13, column: 23, scope: !73)
!77 = !DILocation(line: 13, column: 15, scope: !73)
!78 = !DILocation(line: 14, column: 9, scope: !73)
!79 = !DILocation(line: 14, column: 21, scope: !80)
!80 = distinct !DILexicalBlock(scope: !62, file: !1, line: 14, column: 20)
!81 = !DILocation(line: 14, column: 25, scope: !80)
!82 = !DILocation(line: 14, column: 23, scope: !80)
!83 = !DILocation(line: 14, column: 29, scope: !80)
!84 = !DILocation(line: 14, column: 27, scope: !80)
!85 = !DILocation(line: 14, column: 32, scope: !80)
!86 = !DILocation(line: 14, column: 37, scope: !80)
!87 = !DILocation(line: 14, column: 20, scope: !62)
!88 = !DILocation(line: 15, column: 17, scope: !89)
!89 = distinct !DILexicalBlock(scope: !80, file: !1, line: 14, column: 43)
!90 = !DILocation(line: 15, column: 21, scope: !89)
!91 = !DILocation(line: 15, column: 19, scope: !89)
!92 = !DILocation(line: 15, column: 23, scope: !89)
!93 = !DILocation(line: 15, column: 15, scope: !89)
!94 = !DILocation(line: 16, column: 9, scope: !89)
!95 = !DILocation(line: 17, column: 18, scope: !96)
!96 = distinct !DILexicalBlock(scope: !80, file: !1, line: 16, column: 16)
!97 = !DILocation(line: 17, column: 22, scope: !96)
!98 = !DILocation(line: 17, column: 20, scope: !96)
!99 = !DILocation(line: 17, column: 25, scope: !96)
!100 = !DILocation(line: 17, column: 15, scope: !96)
!101 = !DILocation(line: 19, column: 5, scope: !63)
!102 = !DILocation(line: 19, column: 18, scope: !103)
!103 = distinct !DILexicalBlock(scope: !47, file: !1, line: 19, column: 16)
!104 = !DILocation(line: 19, column: 22, scope: !103)
!105 = !DILocation(line: 19, column: 20, scope: !103)
!106 = !DILocation(line: 19, column: 28, scope: !103)
!107 = !DILocation(line: 19, column: 32, scope: !103)
!108 = !DILocation(line: 19, column: 30, scope: !103)
!109 = !DILocation(line: 19, column: 25, scope: !103)
!110 = !DILocation(line: 19, column: 36, scope: !103)
!111 = !DILocation(line: 19, column: 16, scope: !47)
!112 = !DILocation(line: 20, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !103, file: !1, line: 19, column: 43)
!114 = !DILocation(line: 20, column: 17, scope: !113)
!115 = !DILocation(line: 20, column: 15, scope: !113)
!116 = !DILocation(line: 20, column: 19, scope: !113)
!117 = !DILocation(line: 20, column: 11, scope: !113)
!118 = !DILocation(line: 21, column: 5, scope: !113)
!119 = !DILocation(line: 22, column: 14, scope: !120)
!120 = distinct !DILexicalBlock(scope: !103, file: !1, line: 21, column: 12)
!121 = !DILocation(line: 22, column: 18, scope: !120)
!122 = !DILocation(line: 22, column: 16, scope: !120)
!123 = !DILocation(line: 22, column: 24, scope: !120)
!124 = !DILocation(line: 22, column: 28, scope: !120)
!125 = !DILocation(line: 22, column: 26, scope: !120)
!126 = !DILocation(line: 22, column: 21, scope: !120)
!127 = !DILocation(line: 22, column: 11, scope: !120)
!128 = !DILocation(line: 25, column: 5, scope: !10)
