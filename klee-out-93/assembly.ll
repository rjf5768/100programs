; ModuleID = '94.bc'
source_filename = "94.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

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
  store i32 0, i32* %3, align 4, !dbg !18
  %6 = bitcast i32* %2 to i8*, !dbg !19
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !20
  %7 = load i32, i32* %2, align 4, !dbg !21
  %8 = icmp sge i32 %7, 0, !dbg !22
  br i1 %8, label %9, label %12, !dbg !23

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !24
  %11 = icmp sle i32 %10, 20, !dbg !25
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !26
  %14 = zext i1 %13 to i32, !dbg !23
  %15 = sext i32 %14 to i64, !dbg !21
  call void @klee_assume(i64 noundef %15), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %4, metadata !28, metadata !DIExpression()), !dbg !30
  store i32 1, i32* %4, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %5, metadata !31, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %5, align 4, !dbg !32
  br label %16, !dbg !33

16:                                               ; preds = %24, %12
  %17 = load i32, i32* %5, align 4, !dbg !34
  %18 = load i32, i32* %2, align 4, !dbg !36
  %19 = icmp slt i32 %17, %18, !dbg !37
  br i1 %19, label %20, label %29, !dbg !38

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4, !dbg !39
  %22 = load i32, i32* %3, align 4, !dbg !41
  %23 = add nsw i32 %22, %21, !dbg !41
  store i32 %23, i32* %3, align 4, !dbg !41
  br label %24, !dbg !42

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4, !dbg !43
  %26 = add nsw i32 %25, 2, !dbg !43
  store i32 %26, i32* %4, align 4, !dbg !43
  %27 = load i32, i32* %5, align 4, !dbg !44
  %28 = add nsw i32 %27, 1, !dbg !44
  store i32 %28, i32* %5, align 4, !dbg !44
  br label %16, !dbg !45, !llvm.loop !46

29:                                               ; preds = %16
  ret i32 0, !dbg !49
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
!1 = !DIFile(filename: "94.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "c1d3a9f270e8665f48bc4539725a2531")
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
!15 = !DILocalVariable(name: "n", scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 9, scope: !10)
!17 = !DILocalVariable(name: "sum", scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 5, column: 12, scope: !10)
!19 = !DILocation(line: 6, column: 24, scope: !10)
!20 = !DILocation(line: 6, column: 5, scope: !10)
!21 = !DILocation(line: 7, column: 17, scope: !10)
!22 = !DILocation(line: 7, column: 19, scope: !10)
!23 = !DILocation(line: 7, column: 24, scope: !10)
!24 = !DILocation(line: 7, column: 27, scope: !10)
!25 = !DILocation(line: 7, column: 29, scope: !10)
!26 = !DILocation(line: 0, scope: !10)
!27 = !DILocation(line: 7, column: 5, scope: !10)
!28 = !DILocalVariable(name: "i", scope: !29, file: !1, line: 8, type: !13)
!29 = distinct !DILexicalBlock(scope: !10, file: !1, line: 8, column: 5)
!30 = !DILocation(line: 8, column: 14, scope: !29)
!31 = !DILocalVariable(name: "count", scope: !29, file: !1, line: 8, type: !13)
!32 = !DILocation(line: 8, column: 21, scope: !29)
!33 = !DILocation(line: 8, column: 10, scope: !29)
!34 = !DILocation(line: 8, column: 32, scope: !35)
!35 = distinct !DILexicalBlock(scope: !29, file: !1, line: 8, column: 5)
!36 = !DILocation(line: 8, column: 40, scope: !35)
!37 = !DILocation(line: 8, column: 38, scope: !35)
!38 = !DILocation(line: 8, column: 5, scope: !29)
!39 = !DILocation(line: 9, column: 16, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 8, column: 60)
!41 = !DILocation(line: 9, column: 13, scope: !40)
!42 = !DILocation(line: 10, column: 5, scope: !40)
!43 = !DILocation(line: 8, column: 45, scope: !35)
!44 = !DILocation(line: 8, column: 56, scope: !35)
!45 = !DILocation(line: 8, column: 5, scope: !35)
!46 = distinct !{!46, !38, !47, !48}
!47 = !DILocation(line: 10, column: 5, scope: !29)
!48 = !{!"llvm.loop.mustprogress"}
!49 = !DILocation(line: 11, column: 5, scope: !10)
