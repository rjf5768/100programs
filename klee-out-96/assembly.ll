; ModuleID = '97.bc'
source_filename = "97.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"transitions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %2, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  %6 = bitcast i32* %3 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !22
  %7 = bitcast i32* %4 to i8*, !dbg !23
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !24
  %8 = load i32, i32* %4, align 4, !dbg !25
  %9 = icmp sge i32 %8, 1, !dbg !26
  br i1 %9, label %10, label %13, !dbg !27

10:                                               ; preds = %0
  %11 = load i32, i32* %4, align 4, !dbg !28
  %12 = icmp sle i32 %11, 20, !dbg !29
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !30
  %15 = zext i1 %14 to i32, !dbg !27
  %16 = sext i32 %15 to i64, !dbg !25
  call void @klee_assume(i64 noundef %16), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %5, metadata !32, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %5, align 4, !dbg !34
  br label %17, !dbg !35

17:                                               ; preds = %41, %13
  %18 = load i32, i32* %5, align 4, !dbg !36
  %19 = load i32, i32* %4, align 4, !dbg !38
  %20 = icmp slt i32 %18, %19, !dbg !39
  br i1 %20, label %21, label %44, !dbg !40

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4, !dbg !41
  %23 = srem i32 %22, 3, !dbg !44
  %24 = icmp eq i32 %23, 0, !dbg !45
  br i1 %24, label %25, label %29, !dbg !46

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4, !dbg !47
  %27 = add nsw i32 %26, 1, !dbg !48
  %28 = srem i32 %27, 3, !dbg !49
  store i32 %28, i32* %2, align 4, !dbg !50
  br label %40, !dbg !51

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4, !dbg !52
  %31 = srem i32 %30, 3, !dbg !54
  %32 = icmp eq i32 %31, 1, !dbg !55
  br i1 %32, label %33, label %37, !dbg !56

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4, !dbg !57
  %35 = add nsw i32 %34, 2, !dbg !58
  %36 = srem i32 %35, 3, !dbg !59
  store i32 %36, i32* %2, align 4, !dbg !60
  br label %39, !dbg !61

37:                                               ; preds = %29
  %38 = load i32, i32* %2, align 4, !dbg !62
  store i32 %38, i32* %2, align 4, !dbg !63
  br label %39

39:                                               ; preds = %37, %33
  br label %40

40:                                               ; preds = %39, %25
  br label %41, !dbg !64

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4, !dbg !65
  %43 = add nsw i32 %42, 1, !dbg !65
  store i32 %43, i32* %5, align 4, !dbg !65
  br label %17, !dbg !66, !llvm.loop !67

44:                                               ; preds = %17
  ret i32 0, !dbg !70
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
!1 = !DIFile(filename: "97.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "5e39e674678bfb65f5daee6f75b3a5a4")
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
!15 = !DILocalVariable(name: "state", scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 9, scope: !10)
!17 = !DILocalVariable(name: "input", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 9, scope: !10)
!19 = !DILocalVariable(name: "transitions", scope: !10, file: !1, line: 6, type: !13)
!20 = !DILocation(line: 6, column: 16, scope: !10)
!21 = !DILocation(line: 7, column: 24, scope: !10)
!22 = !DILocation(line: 7, column: 5, scope: !10)
!23 = !DILocation(line: 8, column: 24, scope: !10)
!24 = !DILocation(line: 8, column: 5, scope: !10)
!25 = !DILocation(line: 9, column: 17, scope: !10)
!26 = !DILocation(line: 9, column: 29, scope: !10)
!27 = !DILocation(line: 9, column: 34, scope: !10)
!28 = !DILocation(line: 9, column: 37, scope: !10)
!29 = !DILocation(line: 9, column: 49, scope: !10)
!30 = !DILocation(line: 0, scope: !10)
!31 = !DILocation(line: 9, column: 5, scope: !10)
!32 = !DILocalVariable(name: "i", scope: !33, file: !1, line: 10, type: !13)
!33 = distinct !DILexicalBlock(scope: !10, file: !1, line: 10, column: 5)
!34 = !DILocation(line: 10, column: 14, scope: !33)
!35 = !DILocation(line: 10, column: 10, scope: !33)
!36 = !DILocation(line: 10, column: 21, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 10, column: 5)
!38 = !DILocation(line: 10, column: 25, scope: !37)
!39 = !DILocation(line: 10, column: 23, scope: !37)
!40 = !DILocation(line: 10, column: 5, scope: !33)
!41 = !DILocation(line: 11, column: 13, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 11, column: 13)
!43 = distinct !DILexicalBlock(scope: !37, file: !1, line: 10, column: 43)
!44 = !DILocation(line: 11, column: 19, scope: !42)
!45 = !DILocation(line: 11, column: 23, scope: !42)
!46 = !DILocation(line: 11, column: 13, scope: !43)
!47 = !DILocation(line: 12, column: 22, scope: !42)
!48 = !DILocation(line: 12, column: 28, scope: !42)
!49 = !DILocation(line: 12, column: 33, scope: !42)
!50 = !DILocation(line: 12, column: 19, scope: !42)
!51 = !DILocation(line: 12, column: 13, scope: !42)
!52 = !DILocation(line: 13, column: 18, scope: !53)
!53 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 18)
!54 = !DILocation(line: 13, column: 24, scope: !53)
!55 = !DILocation(line: 13, column: 28, scope: !53)
!56 = !DILocation(line: 13, column: 18, scope: !42)
!57 = !DILocation(line: 14, column: 22, scope: !53)
!58 = !DILocation(line: 14, column: 28, scope: !53)
!59 = !DILocation(line: 14, column: 33, scope: !53)
!60 = !DILocation(line: 14, column: 19, scope: !53)
!61 = !DILocation(line: 14, column: 13, scope: !53)
!62 = !DILocation(line: 16, column: 21, scope: !53)
!63 = !DILocation(line: 16, column: 19, scope: !53)
!64 = !DILocation(line: 17, column: 5, scope: !43)
!65 = !DILocation(line: 10, column: 39, scope: !37)
!66 = !DILocation(line: 10, column: 5, scope: !37)
!67 = distinct !{!67, !40, !68, !69}
!68 = !DILocation(line: 17, column: 5, scope: !33)
!69 = !{!"llvm.loop.mustprogress"}
!70 = !DILocation(line: 18, column: 5, scope: !10)
