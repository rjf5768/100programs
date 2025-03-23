; ModuleID = '71.bc'
source_filename = "71.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1

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
  %9 = icmp sge i32 %8, -100, !dbg !28
  br i1 %9, label %10, label %13, !dbg !29

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4, !dbg !30
  %12 = icmp sle i32 %11, 100, !dbg !31
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !32
  %15 = zext i1 %14 to i32, !dbg !29
  %16 = sext i32 %15 to i64, !dbg !27
  call void @klee_assume(i64 noundef %16), !dbg !33
  %17 = load i32, i32* %3, align 4, !dbg !34
  %18 = icmp sge i32 %17, -100, !dbg !35
  br i1 %18, label %19, label %22, !dbg !36

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4, !dbg !37
  %21 = icmp sle i32 %20, 100, !dbg !38
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i1 [ false, %13 ], [ %21, %19 ], !dbg !32
  %24 = zext i1 %23 to i32, !dbg !36
  %25 = sext i32 %24 to i64, !dbg !34
  call void @klee_assume(i64 noundef %25), !dbg !39
  %26 = load i32, i32* %4, align 4, !dbg !40
  %27 = icmp sge i32 %26, -100, !dbg !41
  br i1 %27, label %28, label %31, !dbg !42

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4, !dbg !43
  %30 = icmp sle i32 %29, 100, !dbg !44
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i1 [ false, %22 ], [ %30, %28 ], !dbg !32
  %33 = zext i1 %32 to i32, !dbg !42
  %34 = sext i32 %33 to i64, !dbg !40
  call void @klee_assume(i64 noundef %34), !dbg !45
  %35 = load i32, i32* %2, align 4, !dbg !46
  %36 = load i32, i32* %4, align 4, !dbg !48
  %37 = mul nsw i32 %35, %36, !dbg !49
  %38 = load i32, i32* %3, align 4, !dbg !50
  %39 = load i32, i32* %3, align 4, !dbg !51
  %40 = mul nsw i32 %38, %39, !dbg !52
  %41 = add nsw i32 %37, %40, !dbg !53
  %42 = srem i32 %41, 13, !dbg !54
  %43 = icmp eq i32 %42, 7, !dbg !55
  br i1 %43, label %44, label %85, !dbg !56

44:                                               ; preds = %31
  %45 = load i32, i32* %2, align 4, !dbg !57
  %46 = load i32, i32* %3, align 4, !dbg !58
  %47 = add nsw i32 %45, %46, !dbg !59
  %48 = load i32, i32* %4, align 4, !dbg !60
  %49 = sub nsw i32 %47, %48, !dbg !61
  %50 = icmp slt i32 %49, 50, !dbg !62
  br i1 %50, label %51, label %85, !dbg !63

51:                                               ; preds = %44
  %52 = load i32, i32* %2, align 4, !dbg !64
  %53 = load i32, i32* %2, align 4, !dbg !67
  %54 = mul nsw i32 %52, %53, !dbg !68
  %55 = load i32, i32* %4, align 4, !dbg !69
  %56 = load i32, i32* %4, align 4, !dbg !70
  %57 = mul nsw i32 %55, %56, !dbg !71
  %58 = sub nsw i32 %54, %57, !dbg !72
  %59 = icmp sgt i32 %58, 300, !dbg !73
  br i1 %59, label %60, label %65, !dbg !74

60:                                               ; preds = %51
  %61 = load i32, i32* %2, align 4, !dbg !75
  %62 = load i32, i32* %4, align 4, !dbg !77
  %63 = add nsw i32 %61, %62, !dbg !78
  %64 = mul nsw i32 %63, 3, !dbg !79
  store i32 %64, i32* %3, align 4, !dbg !80
  br label %84, !dbg !81

65:                                               ; preds = %51
  %66 = load i32, i32* %2, align 4, !dbg !82
  %67 = load i32, i32* %3, align 4, !dbg !84
  %68 = add nsw i32 %66, %67, !dbg !85
  %69 = load i32, i32* %4, align 4, !dbg !86
  %70 = add nsw i32 %68, %69, !dbg !87
  %71 = srem i32 %70, 9, !dbg !88
  %72 = icmp eq i32 %71, 4, !dbg !89
  br i1 %72, label %73, label %78, !dbg !90

73:                                               ; preds = %65
  %74 = load i32, i32* %3, align 4, !dbg !91
  %75 = load i32, i32* %4, align 4, !dbg !93
  %76 = mul nsw i32 %74, %75, !dbg !94
  %77 = sub nsw i32 %76, 11, !dbg !95
  store i32 %77, i32* %2, align 4, !dbg !96
  br label %83, !dbg !97

78:                                               ; preds = %65
  %79 = load i32, i32* %2, align 4, !dbg !98
  %80 = load i32, i32* %3, align 4, !dbg !100
  %81 = mul nsw i32 %79, %80, !dbg !101
  %82 = add nsw i32 %81, 17, !dbg !102
  store i32 %82, i32* %4, align 4, !dbg !103
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %83, %60
  br label %110, !dbg !104

85:                                               ; preds = %44, %31
  %86 = load i32, i32* %2, align 4, !dbg !105
  %87 = load i32, i32* %3, align 4, !dbg !107
  %88 = sub nsw i32 %86, %87, !dbg !108
  %89 = load i32, i32* %4, align 4, !dbg !109
  %90 = load i32, i32* %3, align 4, !dbg !110
  %91 = add nsw i32 %89, %90, !dbg !111
  %92 = mul nsw i32 %88, %91, !dbg !112
  %93 = icmp slt i32 %92, -200, !dbg !113
  br i1 %93, label %94, label %101, !dbg !114

94:                                               ; preds = %85
  %95 = load i32, i32* %2, align 4, !dbg !115
  %96 = load i32, i32* %4, align 4, !dbg !117
  %97 = add nsw i32 %95, %96, !dbg !118
  %98 = load i32, i32* %3, align 4, !dbg !119
  %99 = sub nsw i32 %98, 2, !dbg !120
  %100 = mul nsw i32 %97, %99, !dbg !121
  store i32 %100, i32* %4, align 4, !dbg !122
  br label %109, !dbg !123

101:                                              ; preds = %85
  %102 = load i32, i32* %4, align 4, !dbg !124
  %103 = load i32, i32* %4, align 4, !dbg !126
  %104 = mul nsw i32 %102, %103, !dbg !127
  %105 = load i32, i32* %2, align 4, !dbg !128
  %106 = load i32, i32* %3, align 4, !dbg !129
  %107 = mul nsw i32 %105, %106, !dbg !130
  %108 = sub nsw i32 %104, %107, !dbg !131
  store i32 %108, i32* %3, align 4, !dbg !132
  br label %109

109:                                              ; preds = %101, %94
  br label %110

110:                                              ; preds = %109, %84
  ret i32 0, !dbg !133
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
!1 = !DIFile(filename: "71.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "93ea445344ac3a8005462f67ff647143")
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
!15 = !DILocalVariable(name: "a", scope: !10, file: !1, line: 4, type: !13)
!16 = !DILocation(line: 4, column: 9, scope: !10)
!17 = !DILocalVariable(name: "b", scope: !10, file: !1, line: 4, type: !13)
!18 = !DILocation(line: 4, column: 12, scope: !10)
!19 = !DILocalVariable(name: "c", scope: !10, file: !1, line: 4, type: !13)
!20 = !DILocation(line: 4, column: 15, scope: !10)
!21 = !DILocation(line: 5, column: 24, scope: !10)
!22 = !DILocation(line: 5, column: 5, scope: !10)
!23 = !DILocation(line: 6, column: 24, scope: !10)
!24 = !DILocation(line: 6, column: 5, scope: !10)
!25 = !DILocation(line: 7, column: 24, scope: !10)
!26 = !DILocation(line: 7, column: 5, scope: !10)
!27 = !DILocation(line: 8, column: 17, scope: !10)
!28 = !DILocation(line: 8, column: 19, scope: !10)
!29 = !DILocation(line: 8, column: 27, scope: !10)
!30 = !DILocation(line: 8, column: 30, scope: !10)
!31 = !DILocation(line: 8, column: 32, scope: !10)
!32 = !DILocation(line: 0, scope: !10)
!33 = !DILocation(line: 8, column: 5, scope: !10)
!34 = !DILocation(line: 9, column: 17, scope: !10)
!35 = !DILocation(line: 9, column: 19, scope: !10)
!36 = !DILocation(line: 9, column: 27, scope: !10)
!37 = !DILocation(line: 9, column: 30, scope: !10)
!38 = !DILocation(line: 9, column: 32, scope: !10)
!39 = !DILocation(line: 9, column: 5, scope: !10)
!40 = !DILocation(line: 10, column: 17, scope: !10)
!41 = !DILocation(line: 10, column: 19, scope: !10)
!42 = !DILocation(line: 10, column: 27, scope: !10)
!43 = !DILocation(line: 10, column: 30, scope: !10)
!44 = !DILocation(line: 10, column: 32, scope: !10)
!45 = !DILocation(line: 10, column: 5, scope: !10)
!46 = !DILocation(line: 12, column: 10, scope: !47)
!47 = distinct !DILexicalBlock(scope: !10, file: !1, line: 12, column: 9)
!48 = !DILocation(line: 12, column: 14, scope: !47)
!49 = !DILocation(line: 12, column: 12, scope: !47)
!50 = !DILocation(line: 12, column: 18, scope: !47)
!51 = !DILocation(line: 12, column: 22, scope: !47)
!52 = !DILocation(line: 12, column: 20, scope: !47)
!53 = !DILocation(line: 12, column: 16, scope: !47)
!54 = !DILocation(line: 12, column: 25, scope: !47)
!55 = !DILocation(line: 12, column: 30, scope: !47)
!56 = !DILocation(line: 12, column: 35, scope: !47)
!57 = !DILocation(line: 12, column: 39, scope: !47)
!58 = !DILocation(line: 12, column: 43, scope: !47)
!59 = !DILocation(line: 12, column: 41, scope: !47)
!60 = !DILocation(line: 12, column: 47, scope: !47)
!61 = !DILocation(line: 12, column: 45, scope: !47)
!62 = !DILocation(line: 12, column: 50, scope: !47)
!63 = !DILocation(line: 12, column: 9, scope: !10)
!64 = !DILocation(line: 13, column: 14, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 13, column: 13)
!66 = distinct !DILexicalBlock(scope: !47, file: !1, line: 12, column: 56)
!67 = !DILocation(line: 13, column: 18, scope: !65)
!68 = !DILocation(line: 13, column: 16, scope: !65)
!69 = !DILocation(line: 13, column: 22, scope: !65)
!70 = !DILocation(line: 13, column: 26, scope: !65)
!71 = !DILocation(line: 13, column: 24, scope: !65)
!72 = !DILocation(line: 13, column: 20, scope: !65)
!73 = !DILocation(line: 13, column: 29, scope: !65)
!74 = !DILocation(line: 13, column: 13, scope: !66)
!75 = !DILocation(line: 14, column: 18, scope: !76)
!76 = distinct !DILexicalBlock(scope: !65, file: !1, line: 13, column: 36)
!77 = !DILocation(line: 14, column: 22, scope: !76)
!78 = !DILocation(line: 14, column: 20, scope: !76)
!79 = !DILocation(line: 14, column: 25, scope: !76)
!80 = !DILocation(line: 14, column: 15, scope: !76)
!81 = !DILocation(line: 15, column: 9, scope: !76)
!82 = !DILocation(line: 15, column: 21, scope: !83)
!83 = distinct !DILexicalBlock(scope: !65, file: !1, line: 15, column: 20)
!84 = !DILocation(line: 15, column: 25, scope: !83)
!85 = !DILocation(line: 15, column: 23, scope: !83)
!86 = !DILocation(line: 15, column: 29, scope: !83)
!87 = !DILocation(line: 15, column: 27, scope: !83)
!88 = !DILocation(line: 15, column: 32, scope: !83)
!89 = !DILocation(line: 15, column: 36, scope: !83)
!90 = !DILocation(line: 15, column: 20, scope: !65)
!91 = !DILocation(line: 16, column: 17, scope: !92)
!92 = distinct !DILexicalBlock(scope: !83, file: !1, line: 15, column: 42)
!93 = !DILocation(line: 16, column: 21, scope: !92)
!94 = !DILocation(line: 16, column: 19, scope: !92)
!95 = !DILocation(line: 16, column: 23, scope: !92)
!96 = !DILocation(line: 16, column: 15, scope: !92)
!97 = !DILocation(line: 17, column: 9, scope: !92)
!98 = !DILocation(line: 18, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !83, file: !1, line: 17, column: 16)
!100 = !DILocation(line: 18, column: 21, scope: !99)
!101 = !DILocation(line: 18, column: 19, scope: !99)
!102 = !DILocation(line: 18, column: 23, scope: !99)
!103 = !DILocation(line: 18, column: 15, scope: !99)
!104 = !DILocation(line: 20, column: 5, scope: !66)
!105 = !DILocation(line: 20, column: 18, scope: !106)
!106 = distinct !DILexicalBlock(scope: !47, file: !1, line: 20, column: 16)
!107 = !DILocation(line: 20, column: 22, scope: !106)
!108 = !DILocation(line: 20, column: 20, scope: !106)
!109 = !DILocation(line: 20, column: 28, scope: !106)
!110 = !DILocation(line: 20, column: 32, scope: !106)
!111 = !DILocation(line: 20, column: 30, scope: !106)
!112 = !DILocation(line: 20, column: 25, scope: !106)
!113 = !DILocation(line: 20, column: 36, scope: !106)
!114 = !DILocation(line: 20, column: 16, scope: !47)
!115 = !DILocation(line: 21, column: 14, scope: !116)
!116 = distinct !DILexicalBlock(scope: !106, file: !1, line: 20, column: 44)
!117 = !DILocation(line: 21, column: 18, scope: !116)
!118 = !DILocation(line: 21, column: 16, scope: !116)
!119 = !DILocation(line: 21, column: 24, scope: !116)
!120 = !DILocation(line: 21, column: 26, scope: !116)
!121 = !DILocation(line: 21, column: 21, scope: !116)
!122 = !DILocation(line: 21, column: 11, scope: !116)
!123 = !DILocation(line: 22, column: 5, scope: !116)
!124 = !DILocation(line: 23, column: 14, scope: !125)
!125 = distinct !DILexicalBlock(scope: !106, file: !1, line: 22, column: 12)
!126 = !DILocation(line: 23, column: 18, scope: !125)
!127 = !DILocation(line: 23, column: 16, scope: !125)
!128 = !DILocation(line: 23, column: 24, scope: !125)
!129 = !DILocation(line: 23, column: 28, scope: !125)
!130 = !DILocation(line: 23, column: 26, scope: !125)
!131 = !DILocation(line: 23, column: 21, scope: !125)
!132 = !DILocation(line: 23, column: 11, scope: !125)
!133 = !DILocation(line: 26, column: 5, scope: !10)
