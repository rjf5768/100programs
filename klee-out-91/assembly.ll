; ModuleID = '92.bc'
source_filename = "92.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cycles\00", align 1

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
  %6 = bitcast i32* %2 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !22
  %7 = bitcast i32* %4 to i8*, !dbg !23
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !24
  %8 = load i32, i32* %2, align 4, !dbg !25
  %9 = icmp sgt i32 %8, 0, !dbg !26
  br i1 %9, label %10, label %13, !dbg !27

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4, !dbg !28
  %12 = icmp sle i32 %11, 100, !dbg !29
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !30
  %15 = zext i1 %14 to i32, !dbg !27
  %16 = sext i32 %15 to i64, !dbg !25
  call void @klee_assume(i64 noundef %16), !dbg !31
  %17 = load i32, i32* %4, align 4, !dbg !32
  %18 = icmp sge i32 %17, 1, !dbg !33
  br i1 %18, label %19, label %22, !dbg !34

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4, !dbg !35
  %21 = icmp sle i32 %20, 10, !dbg !36
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i1 [ false, %13 ], [ %21, %19 ], !dbg !30
  %24 = zext i1 %23 to i32, !dbg !34
  %25 = sext i32 %24 to i64, !dbg !32
  call void @klee_assume(i64 noundef %25), !dbg !37
  %26 = load i32, i32* %2, align 4, !dbg !38
  store i32 %26, i32* %3, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %5, metadata !40, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %5, align 4, !dbg !42
  br label %27, !dbg !43

27:                                               ; preds = %40, %22
  %28 = load i32, i32* %5, align 4, !dbg !44
  %29 = load i32, i32* %4, align 4, !dbg !46
  %30 = icmp slt i32 %28, %29, !dbg !47
  br i1 %30, label %31, label %43, !dbg !48

31:                                               ; preds = %27
  br label %32, !dbg !49

32:                                               ; preds = %35, %31
  %33 = load i32, i32* %3, align 4, !dbg !51
  %34 = icmp sgt i32 %33, 0, !dbg !52
  br i1 %34, label %35, label %38, !dbg !49

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4, !dbg !53
  %37 = add nsw i32 %36, -1, !dbg !53
  store i32 %37, i32* %3, align 4, !dbg !53
  br label %32, !dbg !49, !llvm.loop !55

38:                                               ; preds = %32
  %39 = load i32, i32* %2, align 4, !dbg !58
  store i32 %39, i32* %3, align 4, !dbg !59
  br label %40, !dbg !60

40:                                               ; preds = %38
  %41 = load i32, i32* %5, align 4, !dbg !61
  %42 = add nsw i32 %41, 1, !dbg !61
  store i32 %42, i32* %5, align 4, !dbg !61
  br label %27, !dbg !62, !llvm.loop !63

43:                                               ; preds = %27
  ret i32 0, !dbg !65
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
!1 = !DIFile(filename: "92.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "5f6e52624f06e4f081dd5530e0828216")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !11, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "start", scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 9, scope: !10)
!17 = !DILocalVariable(name: "current", scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 5, column: 16, scope: !10)
!19 = !DILocalVariable(name: "cycles", scope: !10, file: !1, line: 5, type: !13)
!20 = !DILocation(line: 5, column: 25, scope: !10)
!21 = !DILocation(line: 6, column: 24, scope: !10)
!22 = !DILocation(line: 6, column: 5, scope: !10)
!23 = !DILocation(line: 7, column: 24, scope: !10)
!24 = !DILocation(line: 7, column: 5, scope: !10)
!25 = !DILocation(line: 8, column: 17, scope: !10)
!26 = !DILocation(line: 8, column: 23, scope: !10)
!27 = !DILocation(line: 8, column: 27, scope: !10)
!28 = !DILocation(line: 8, column: 30, scope: !10)
!29 = !DILocation(line: 8, column: 36, scope: !10)
!30 = !DILocation(line: 0, scope: !10)
!31 = !DILocation(line: 8, column: 5, scope: !10)
!32 = !DILocation(line: 9, column: 17, scope: !10)
!33 = !DILocation(line: 9, column: 24, scope: !10)
!34 = !DILocation(line: 9, column: 29, scope: !10)
!35 = !DILocation(line: 9, column: 32, scope: !10)
!36 = !DILocation(line: 9, column: 39, scope: !10)
!37 = !DILocation(line: 9, column: 5, scope: !10)
!38 = !DILocation(line: 10, column: 15, scope: !10)
!39 = !DILocation(line: 10, column: 13, scope: !10)
!40 = !DILocalVariable(name: "i", scope: !41, file: !1, line: 11, type: !13)
!41 = distinct !DILexicalBlock(scope: !10, file: !1, line: 11, column: 5)
!42 = !DILocation(line: 11, column: 14, scope: !41)
!43 = !DILocation(line: 11, column: 10, scope: !41)
!44 = !DILocation(line: 11, column: 21, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 11, column: 5)
!46 = !DILocation(line: 11, column: 25, scope: !45)
!47 = !DILocation(line: 11, column: 23, scope: !45)
!48 = !DILocation(line: 11, column: 5, scope: !41)
!49 = !DILocation(line: 12, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !45, file: !1, line: 11, column: 38)
!51 = !DILocation(line: 12, column: 16, scope: !50)
!52 = !DILocation(line: 12, column: 24, scope: !50)
!53 = !DILocation(line: 13, column: 20, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 12, column: 29)
!55 = distinct !{!55, !49, !56, !57}
!56 = !DILocation(line: 14, column: 9, scope: !50)
!57 = !{!"llvm.loop.mustprogress"}
!58 = !DILocation(line: 15, column: 19, scope: !50)
!59 = !DILocation(line: 15, column: 17, scope: !50)
!60 = !DILocation(line: 16, column: 5, scope: !50)
!61 = !DILocation(line: 11, column: 34, scope: !45)
!62 = !DILocation(line: 11, column: 5, scope: !45)
!63 = distinct !{!63, !48, !64, !57}
!64 = !DILocation(line: 16, column: 5, scope: !41)
!65 = !DILocation(line: 17, column: 5, scope: !10)
