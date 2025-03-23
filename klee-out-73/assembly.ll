; ModuleID = '74.bc'
source_filename = "74.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1

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
  %9 = icmp sge i32 %8, -80, !dbg !28
  br i1 %9, label %10, label %13, !dbg !29

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4, !dbg !30
  %12 = icmp sle i32 %11, 80, !dbg !31
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !32
  %15 = zext i1 %14 to i32, !dbg !29
  %16 = sext i32 %15 to i64, !dbg !27
  call void @klee_assume(i64 noundef %16), !dbg !33
  %17 = load i32, i32* %3, align 4, !dbg !34
  %18 = icmp sge i32 %17, -80, !dbg !35
  br i1 %18, label %19, label %22, !dbg !36

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4, !dbg !37
  %21 = icmp sle i32 %20, 80, !dbg !38
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i1 [ false, %13 ], [ %21, %19 ], !dbg !32
  %24 = zext i1 %23 to i32, !dbg !36
  %25 = sext i32 %24 to i64, !dbg !34
  call void @klee_assume(i64 noundef %25), !dbg !39
  %26 = load i32, i32* %4, align 4, !dbg !40
  %27 = icmp sge i32 %26, -80, !dbg !41
  br i1 %27, label %28, label %31, !dbg !42

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4, !dbg !43
  %30 = icmp sle i32 %29, 80, !dbg !44
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
  %40 = srem i32 %39, 15, !dbg !52
  %41 = icmp eq i32 %40, 6, !dbg !53
  br i1 %41, label %42, label %86, !dbg !54

42:                                               ; preds = %31
  %43 = load i32, i32* %2, align 4, !dbg !55
  %44 = load i32, i32* %3, align 4, !dbg !56
  %45 = add nsw i32 %43, %44, !dbg !57
  %46 = load i32, i32* %4, align 4, !dbg !58
  %47 = icmp sgt i32 %45, %46, !dbg !59
  br i1 %47, label %48, label %86, !dbg !60

48:                                               ; preds = %42
  %49 = load i32, i32* %2, align 4, !dbg !61
  %50 = load i32, i32* %4, align 4, !dbg !64
  %51 = sub nsw i32 %49, %50, !dbg !65
  %52 = load i32, i32* %3, align 4, !dbg !66
  %53 = load i32, i32* %4, align 4, !dbg !67
  %54 = add nsw i32 %52, %53, !dbg !68
  %55 = mul nsw i32 %51, %54, !dbg !69
  %56 = icmp slt i32 %55, -300, !dbg !70
  br i1 %56, label %57, label %62, !dbg !71

57:                                               ; preds = %48
  %58 = load i32, i32* %3, align 4, !dbg !72
  %59 = load i32, i32* %4, align 4, !dbg !74
  %60 = mul nsw i32 %58, %59, !dbg !75
  %61 = add nsw i32 %60, 12, !dbg !76
  store i32 %61, i32* %2, align 4, !dbg !77
  br label %85, !dbg !78

62:                                               ; preds = %48
  %63 = load i32, i32* %3, align 4, !dbg !79
  %64 = load i32, i32* %3, align 4, !dbg !81
  %65 = mul nsw i32 %63, %64, !dbg !82
  %66 = load i32, i32* %2, align 4, !dbg !83
  %67 = load i32, i32* %4, align 4, !dbg !84
  %68 = mul nsw i32 %66, %67, !dbg !85
  %69 = sub nsw i32 %65, %68, !dbg !86
  %70 = icmp sgt i32 %69, 180, !dbg !87
  br i1 %70, label %71, label %77, !dbg !88

71:                                               ; preds = %62
  %72 = load i32, i32* %2, align 4, !dbg !89
  %73 = load i32, i32* %2, align 4, !dbg !91
  %74 = mul nsw i32 %72, %73, !dbg !92
  %75 = load i32, i32* %4, align 4, !dbg !93
  %76 = add nsw i32 %74, %75, !dbg !94
  store i32 %76, i32* %3, align 4, !dbg !95
  br label %84, !dbg !96

77:                                               ; preds = %62
  %78 = load i32, i32* %2, align 4, !dbg !97
  %79 = load i32, i32* %3, align 4, !dbg !99
  %80 = add nsw i32 %78, %79, !dbg !100
  %81 = load i32, i32* %4, align 4, !dbg !101
  %82 = sub nsw i32 %81, 2, !dbg !102
  %83 = mul nsw i32 %80, %82, !dbg !103
  store i32 %83, i32* %4, align 4, !dbg !104
  br label %84

84:                                               ; preds = %77, %71
  br label %85

85:                                               ; preds = %84, %57
  br label %105, !dbg !105

86:                                               ; preds = %42, %31
  %87 = load i32, i32* %2, align 4, !dbg !106
  %88 = load i32, i32* %3, align 4, !dbg !108
  %89 = mul nsw i32 %87, %88, !dbg !109
  %90 = load i32, i32* %4, align 4, !dbg !110
  %91 = mul nsw i32 %89, %90, !dbg !111
  %92 = srem i32 %91, 20, !dbg !112
  %93 = icmp eq i32 %92, 3, !dbg !113
  br i1 %93, label %94, label %99, !dbg !114

94:                                               ; preds = %86
  %95 = load i32, i32* %3, align 4, !dbg !115
  %96 = load i32, i32* %4, align 4, !dbg !117
  %97 = add nsw i32 %95, %96, !dbg !118
  %98 = add nsw i32 %97, 42, !dbg !119
  store i32 %98, i32* %2, align 4, !dbg !120
  br label %104, !dbg !121

99:                                               ; preds = %86
  %100 = load i32, i32* %2, align 4, !dbg !122
  %101 = load i32, i32* %4, align 4, !dbg !124
  %102 = mul nsw i32 %100, %101, !dbg !125
  %103 = sub nsw i32 %102, 19, !dbg !126
  store i32 %103, i32* %3, align 4, !dbg !127
  br label %104

104:                                              ; preds = %99, %94
  br label %105

105:                                              ; preds = %104, %85
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
!1 = !DIFile(filename: "74.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "fd21d8486381dd63b07aff9491ab734f")
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
!15 = !DILocalVariable(name: "u", scope: !10, file: !1, line: 3, type: !13)
!16 = !DILocation(line: 3, column: 9, scope: !10)
!17 = !DILocalVariable(name: "v", scope: !10, file: !1, line: 3, type: !13)
!18 = !DILocation(line: 3, column: 12, scope: !10)
!19 = !DILocalVariable(name: "w", scope: !10, file: !1, line: 3, type: !13)
!20 = !DILocation(line: 3, column: 15, scope: !10)
!21 = !DILocation(line: 4, column: 24, scope: !10)
!22 = !DILocation(line: 4, column: 5, scope: !10)
!23 = !DILocation(line: 5, column: 24, scope: !10)
!24 = !DILocation(line: 5, column: 5, scope: !10)
!25 = !DILocation(line: 6, column: 24, scope: !10)
!26 = !DILocation(line: 6, column: 5, scope: !10)
!27 = !DILocation(line: 7, column: 17, scope: !10)
!28 = !DILocation(line: 7, column: 19, scope: !10)
!29 = !DILocation(line: 7, column: 26, scope: !10)
!30 = !DILocation(line: 7, column: 29, scope: !10)
!31 = !DILocation(line: 7, column: 31, scope: !10)
!32 = !DILocation(line: 0, scope: !10)
!33 = !DILocation(line: 7, column: 5, scope: !10)
!34 = !DILocation(line: 8, column: 17, scope: !10)
!35 = !DILocation(line: 8, column: 19, scope: !10)
!36 = !DILocation(line: 8, column: 26, scope: !10)
!37 = !DILocation(line: 8, column: 29, scope: !10)
!38 = !DILocation(line: 8, column: 31, scope: !10)
!39 = !DILocation(line: 8, column: 5, scope: !10)
!40 = !DILocation(line: 9, column: 17, scope: !10)
!41 = !DILocation(line: 9, column: 19, scope: !10)
!42 = !DILocation(line: 9, column: 26, scope: !10)
!43 = !DILocation(line: 9, column: 29, scope: !10)
!44 = !DILocation(line: 9, column: 31, scope: !10)
!45 = !DILocation(line: 9, column: 5, scope: !10)
!46 = !DILocation(line: 11, column: 11, scope: !47)
!47 = distinct !DILexicalBlock(scope: !10, file: !1, line: 11, column: 9)
!48 = !DILocation(line: 11, column: 15, scope: !47)
!49 = !DILocation(line: 11, column: 13, scope: !47)
!50 = !DILocation(line: 11, column: 19, scope: !47)
!51 = !DILocation(line: 11, column: 17, scope: !47)
!52 = !DILocation(line: 11, column: 22, scope: !47)
!53 = !DILocation(line: 11, column: 27, scope: !47)
!54 = !DILocation(line: 11, column: 33, scope: !47)
!55 = !DILocation(line: 11, column: 37, scope: !47)
!56 = !DILocation(line: 11, column: 41, scope: !47)
!57 = !DILocation(line: 11, column: 39, scope: !47)
!58 = !DILocation(line: 11, column: 45, scope: !47)
!59 = !DILocation(line: 11, column: 43, scope: !47)
!60 = !DILocation(line: 11, column: 9, scope: !10)
!61 = !DILocation(line: 12, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 12, column: 13)
!63 = distinct !DILexicalBlock(scope: !47, file: !1, line: 11, column: 49)
!64 = !DILocation(line: 12, column: 18, scope: !62)
!65 = !DILocation(line: 12, column: 16, scope: !62)
!66 = !DILocation(line: 12, column: 24, scope: !62)
!67 = !DILocation(line: 12, column: 28, scope: !62)
!68 = !DILocation(line: 12, column: 26, scope: !62)
!69 = !DILocation(line: 12, column: 21, scope: !62)
!70 = !DILocation(line: 12, column: 31, scope: !62)
!71 = !DILocation(line: 12, column: 13, scope: !63)
!72 = !DILocation(line: 13, column: 18, scope: !73)
!73 = distinct !DILexicalBlock(scope: !62, file: !1, line: 12, column: 39)
!74 = !DILocation(line: 13, column: 22, scope: !73)
!75 = !DILocation(line: 13, column: 20, scope: !73)
!76 = !DILocation(line: 13, column: 25, scope: !73)
!77 = !DILocation(line: 13, column: 15, scope: !73)
!78 = !DILocation(line: 14, column: 9, scope: !73)
!79 = !DILocation(line: 14, column: 21, scope: !80)
!80 = distinct !DILexicalBlock(scope: !62, file: !1, line: 14, column: 20)
!81 = !DILocation(line: 14, column: 25, scope: !80)
!82 = !DILocation(line: 14, column: 23, scope: !80)
!83 = !DILocation(line: 14, column: 29, scope: !80)
!84 = !DILocation(line: 14, column: 33, scope: !80)
!85 = !DILocation(line: 14, column: 31, scope: !80)
!86 = !DILocation(line: 14, column: 27, scope: !80)
!87 = !DILocation(line: 14, column: 36, scope: !80)
!88 = !DILocation(line: 14, column: 20, scope: !62)
!89 = !DILocation(line: 15, column: 18, scope: !90)
!90 = distinct !DILexicalBlock(scope: !80, file: !1, line: 14, column: 43)
!91 = !DILocation(line: 15, column: 22, scope: !90)
!92 = !DILocation(line: 15, column: 20, scope: !90)
!93 = !DILocation(line: 15, column: 27, scope: !90)
!94 = !DILocation(line: 15, column: 25, scope: !90)
!95 = !DILocation(line: 15, column: 15, scope: !90)
!96 = !DILocation(line: 16, column: 9, scope: !90)
!97 = !DILocation(line: 17, column: 18, scope: !98)
!98 = distinct !DILexicalBlock(scope: !80, file: !1, line: 16, column: 16)
!99 = !DILocation(line: 17, column: 22, scope: !98)
!100 = !DILocation(line: 17, column: 20, scope: !98)
!101 = !DILocation(line: 17, column: 28, scope: !98)
!102 = !DILocation(line: 17, column: 30, scope: !98)
!103 = !DILocation(line: 17, column: 25, scope: !98)
!104 = !DILocation(line: 17, column: 15, scope: !98)
!105 = !DILocation(line: 19, column: 5, scope: !63)
!106 = !DILocation(line: 19, column: 17, scope: !107)
!107 = distinct !DILexicalBlock(scope: !47, file: !1, line: 19, column: 16)
!108 = !DILocation(line: 19, column: 21, scope: !107)
!109 = !DILocation(line: 19, column: 19, scope: !107)
!110 = !DILocation(line: 19, column: 25, scope: !107)
!111 = !DILocation(line: 19, column: 23, scope: !107)
!112 = !DILocation(line: 19, column: 28, scope: !107)
!113 = !DILocation(line: 19, column: 33, scope: !107)
!114 = !DILocation(line: 19, column: 16, scope: !47)
!115 = !DILocation(line: 20, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !107, file: !1, line: 19, column: 39)
!117 = !DILocation(line: 20, column: 17, scope: !116)
!118 = !DILocation(line: 20, column: 15, scope: !116)
!119 = !DILocation(line: 20, column: 19, scope: !116)
!120 = !DILocation(line: 20, column: 11, scope: !116)
!121 = !DILocation(line: 21, column: 5, scope: !116)
!122 = !DILocation(line: 22, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !107, file: !1, line: 21, column: 12)
!124 = !DILocation(line: 22, column: 17, scope: !123)
!125 = !DILocation(line: 22, column: 15, scope: !123)
!126 = !DILocation(line: 22, column: 19, scope: !123)
!127 = !DILocation(line: 22, column: 11, scope: !123)
!128 = !DILocation(line: 25, column: 5, scope: !10)
