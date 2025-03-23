; ModuleID = '64.bc'
source_filename = "64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  %6 = bitcast i32* %2 to i8*, !dbg !23
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !24
  %7 = bitcast i32* %3 to i8*, !dbg !25
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !26
  %8 = bitcast i32* %4 to i8*, !dbg !27
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !28
  %9 = bitcast i32* %5 to i8*, !dbg !29
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !30
  %10 = load i32, i32* %2, align 4, !dbg !31
  %11 = icmp sge i32 %10, 0, !dbg !32
  br i1 %11, label %12, label %15, !dbg !33

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4, !dbg !34
  %14 = icmp sle i32 %13, 50, !dbg !35
  br label %15

15:                                               ; preds = %12, %0
  %16 = phi i1 [ false, %0 ], [ %14, %12 ], !dbg !36
  %17 = zext i1 %16 to i32, !dbg !33
  %18 = sext i32 %17 to i64, !dbg !31
  call void @klee_assume(i64 noundef %18), !dbg !37
  %19 = load i32, i32* %3, align 4, !dbg !38
  %20 = icmp sge i32 %19, 0, !dbg !39
  br i1 %20, label %21, label %24, !dbg !40

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4, !dbg !41
  %23 = icmp sle i32 %22, 50, !dbg !42
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i1 [ false, %15 ], [ %23, %21 ], !dbg !36
  %26 = zext i1 %25 to i32, !dbg !40
  %27 = sext i32 %26 to i64, !dbg !38
  call void @klee_assume(i64 noundef %27), !dbg !43
  %28 = load i32, i32* %4, align 4, !dbg !44
  %29 = icmp sge i32 %28, 0, !dbg !45
  br i1 %29, label %30, label %33, !dbg !46

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4, !dbg !47
  %32 = icmp sle i32 %31, 50, !dbg !48
  br label %33

33:                                               ; preds = %30, %24
  %34 = phi i1 [ false, %24 ], [ %32, %30 ], !dbg !36
  %35 = zext i1 %34 to i32, !dbg !46
  %36 = sext i32 %35 to i64, !dbg !44
  call void @klee_assume(i64 noundef %36), !dbg !49
  %37 = load i32, i32* %5, align 4, !dbg !50
  %38 = icmp sge i32 %37, 0, !dbg !51
  br i1 %38, label %39, label %42, !dbg !52

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4, !dbg !53
  %41 = icmp sle i32 %40, 50, !dbg !54
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i1 [ false, %33 ], [ %41, %39 ], !dbg !36
  %44 = zext i1 %43 to i32, !dbg !52
  %45 = sext i32 %44 to i64, !dbg !50
  call void @klee_assume(i64 noundef %45), !dbg !55
  %46 = load i32, i32* %2, align 4, !dbg !56
  %47 = load i32, i32* %3, align 4, !dbg !58
  %48 = add nsw i32 %46, %47, !dbg !59
  %49 = load i32, i32* %4, align 4, !dbg !60
  %50 = load i32, i32* %5, align 4, !dbg !61
  %51 = add nsw i32 %49, %50, !dbg !62
  %52 = icmp sgt i32 %48, %51, !dbg !63
  br i1 %52, label %53, label %66, !dbg !64

53:                                               ; preds = %42
  %54 = load i32, i32* %2, align 4, !dbg !65
  %55 = srem i32 %54, 2, !dbg !68
  %56 = icmp eq i32 %55, 0, !dbg !69
  br i1 %56, label %57, label %61, !dbg !70

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4, !dbg !71
  %59 = load i32, i32* %5, align 4, !dbg !73
  %60 = add nsw i32 %58, %59, !dbg !74
  store i32 %60, i32* %2, align 4, !dbg !75
  br label %65, !dbg !76

61:                                               ; preds = %53
  %62 = load i32, i32* %2, align 4, !dbg !77
  %63 = load i32, i32* %3, align 4, !dbg !79
  %64 = sub nsw i32 %62, %63, !dbg !80
  store i32 %64, i32* %4, align 4, !dbg !81
  br label %65

65:                                               ; preds = %61, %57
  br label %83, !dbg !82

66:                                               ; preds = %42
  %67 = load i32, i32* %2, align 4, !dbg !83
  %68 = load i32, i32* %5, align 4, !dbg !85
  %69 = mul nsw i32 %67, %68, !dbg !86
  %70 = load i32, i32* %4, align 4, !dbg !87
  %71 = load i32, i32* %3, align 4, !dbg !88
  %72 = mul nsw i32 %70, %71, !dbg !89
  %73 = icmp slt i32 %69, %72, !dbg !90
  br i1 %73, label %74, label %78, !dbg !91

74:                                               ; preds = %66
  %75 = load i32, i32* %4, align 4, !dbg !92
  %76 = load i32, i32* %3, align 4, !dbg !94
  %77 = add nsw i32 %75, %76, !dbg !95
  store i32 %77, i32* %5, align 4, !dbg !96
  br label %82, !dbg !97

78:                                               ; preds = %66
  %79 = load i32, i32* %5, align 4, !dbg !98
  %80 = load i32, i32* %4, align 4, !dbg !100
  %81 = sub nsw i32 %79, %80, !dbg !101
  store i32 %81, i32* %2, align 4, !dbg !102
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %65
  ret i32 0, !dbg !103
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
!1 = !DIFile(filename: "64.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "176e8667035ff4af0271673050fee59b")
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
!23 = !DILocation(line: 4, column: 24, scope: !10)
!24 = !DILocation(line: 4, column: 5, scope: !10)
!25 = !DILocation(line: 5, column: 24, scope: !10)
!26 = !DILocation(line: 5, column: 5, scope: !10)
!27 = !DILocation(line: 6, column: 24, scope: !10)
!28 = !DILocation(line: 6, column: 5, scope: !10)
!29 = !DILocation(line: 7, column: 24, scope: !10)
!30 = !DILocation(line: 7, column: 5, scope: !10)
!31 = !DILocation(line: 8, column: 17, scope: !10)
!32 = !DILocation(line: 8, column: 19, scope: !10)
!33 = !DILocation(line: 8, column: 24, scope: !10)
!34 = !DILocation(line: 8, column: 27, scope: !10)
!35 = !DILocation(line: 8, column: 29, scope: !10)
!36 = !DILocation(line: 0, scope: !10)
!37 = !DILocation(line: 8, column: 5, scope: !10)
!38 = !DILocation(line: 9, column: 17, scope: !10)
!39 = !DILocation(line: 9, column: 19, scope: !10)
!40 = !DILocation(line: 9, column: 24, scope: !10)
!41 = !DILocation(line: 9, column: 27, scope: !10)
!42 = !DILocation(line: 9, column: 29, scope: !10)
!43 = !DILocation(line: 9, column: 5, scope: !10)
!44 = !DILocation(line: 10, column: 17, scope: !10)
!45 = !DILocation(line: 10, column: 19, scope: !10)
!46 = !DILocation(line: 10, column: 24, scope: !10)
!47 = !DILocation(line: 10, column: 27, scope: !10)
!48 = !DILocation(line: 10, column: 29, scope: !10)
!49 = !DILocation(line: 10, column: 5, scope: !10)
!50 = !DILocation(line: 11, column: 17, scope: !10)
!51 = !DILocation(line: 11, column: 19, scope: !10)
!52 = !DILocation(line: 11, column: 24, scope: !10)
!53 = !DILocation(line: 11, column: 27, scope: !10)
!54 = !DILocation(line: 11, column: 29, scope: !10)
!55 = !DILocation(line: 11, column: 5, scope: !10)
!56 = !DILocation(line: 13, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !10, file: !1, line: 13, column: 9)
!58 = !DILocation(line: 13, column: 13, scope: !57)
!59 = !DILocation(line: 13, column: 11, scope: !57)
!60 = !DILocation(line: 13, column: 17, scope: !57)
!61 = !DILocation(line: 13, column: 21, scope: !57)
!62 = !DILocation(line: 13, column: 19, scope: !57)
!63 = !DILocation(line: 13, column: 15, scope: !57)
!64 = !DILocation(line: 13, column: 9, scope: !10)
!65 = !DILocation(line: 14, column: 13, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 14, column: 13)
!67 = distinct !DILexicalBlock(scope: !57, file: !1, line: 13, column: 24)
!68 = !DILocation(line: 14, column: 15, scope: !66)
!69 = !DILocation(line: 14, column: 19, scope: !66)
!70 = !DILocation(line: 14, column: 13, scope: !67)
!71 = !DILocation(line: 15, column: 17, scope: !72)
!72 = distinct !DILexicalBlock(scope: !66, file: !1, line: 14, column: 25)
!73 = !DILocation(line: 15, column: 21, scope: !72)
!74 = !DILocation(line: 15, column: 19, scope: !72)
!75 = !DILocation(line: 15, column: 15, scope: !72)
!76 = !DILocation(line: 16, column: 9, scope: !72)
!77 = !DILocation(line: 17, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !66, file: !1, line: 16, column: 16)
!79 = !DILocation(line: 17, column: 21, scope: !78)
!80 = !DILocation(line: 17, column: 19, scope: !78)
!81 = !DILocation(line: 17, column: 15, scope: !78)
!82 = !DILocation(line: 19, column: 5, scope: !67)
!83 = !DILocation(line: 19, column: 16, scope: !84)
!84 = distinct !DILexicalBlock(scope: !57, file: !1, line: 19, column: 16)
!85 = !DILocation(line: 19, column: 20, scope: !84)
!86 = !DILocation(line: 19, column: 18, scope: !84)
!87 = !DILocation(line: 19, column: 24, scope: !84)
!88 = !DILocation(line: 19, column: 28, scope: !84)
!89 = !DILocation(line: 19, column: 26, scope: !84)
!90 = !DILocation(line: 19, column: 22, scope: !84)
!91 = !DILocation(line: 19, column: 16, scope: !57)
!92 = !DILocation(line: 20, column: 13, scope: !93)
!93 = distinct !DILexicalBlock(scope: !84, file: !1, line: 19, column: 31)
!94 = !DILocation(line: 20, column: 17, scope: !93)
!95 = !DILocation(line: 20, column: 15, scope: !93)
!96 = !DILocation(line: 20, column: 11, scope: !93)
!97 = !DILocation(line: 21, column: 5, scope: !93)
!98 = !DILocation(line: 22, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !84, file: !1, line: 21, column: 12)
!100 = !DILocation(line: 22, column: 17, scope: !99)
!101 = !DILocation(line: 22, column: 15, scope: !99)
!102 = !DILocation(line: 22, column: 11, scope: !99)
!103 = !DILocation(line: 24, column: 5, scope: !10)
