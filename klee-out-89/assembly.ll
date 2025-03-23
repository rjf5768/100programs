; ModuleID = '90.bc'
source_filename = "90.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %3, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  %5 = bitcast i32* %2 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !22
  %6 = load i32, i32* %2, align 4, !dbg !23
  %7 = icmp sge i32 %6, 0, !dbg !24
  br i1 %7, label %8, label %11, !dbg !25

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4, !dbg !26
  %10 = icmp sle i32 %9, 100, !dbg !27
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ], !dbg !28
  %13 = zext i1 %12 to i32, !dbg !25
  %14 = sext i32 %13 to i64, !dbg !23
  call void @klee_assume(i64 noundef %14), !dbg !29
  br label %15, !dbg !30

15:                                               ; preds = %11, %30
  %16 = load i32, i32* %3, align 4, !dbg !31
  %17 = load i32, i32* %3, align 4, !dbg !33
  %18 = mul nsw i32 %16, %17, !dbg !34
  %19 = load i32, i32* %3, align 4, !dbg !35
  %20 = mul nsw i32 %18, %19, !dbg !36
  store i32 %20, i32* %4, align 4, !dbg !37
  %21 = load i32, i32* %4, align 4, !dbg !38
  %22 = load i32, i32* %2, align 4, !dbg !40
  %23 = icmp eq i32 %21, %22, !dbg !41
  br i1 %23, label %24, label %25, !dbg !42

24:                                               ; preds = %15
  br label %33, !dbg !43

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4, !dbg !44
  %27 = load i32, i32* %2, align 4, !dbg !46
  %28 = icmp sgt i32 %26, %27, !dbg !47
  br i1 %28, label %29, label %30, !dbg !48

29:                                               ; preds = %25
  br label %33, !dbg !49

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4, !dbg !50
  %32 = add nsw i32 %31, 1, !dbg !50
  store i32 %32, i32* %3, align 4, !dbg !50
  br label %15, !dbg !30, !llvm.loop !51

33:                                               ; preds = %29, %24
  ret i32 0, !dbg !53
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
!1 = !DIFile(filename: "90.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "4590711b78714fc4f488f2a4320c6e18")
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
!17 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 5, column: 12, scope: !10)
!19 = !DILocalVariable(name: "cube", scope: !10, file: !1, line: 5, type: !13)
!20 = !DILocation(line: 5, column: 19, scope: !10)
!21 = !DILocation(line: 6, column: 24, scope: !10)
!22 = !DILocation(line: 6, column: 5, scope: !10)
!23 = !DILocation(line: 7, column: 17, scope: !10)
!24 = !DILocation(line: 7, column: 19, scope: !10)
!25 = !DILocation(line: 7, column: 24, scope: !10)
!26 = !DILocation(line: 7, column: 27, scope: !10)
!27 = !DILocation(line: 7, column: 29, scope: !10)
!28 = !DILocation(line: 0, scope: !10)
!29 = !DILocation(line: 7, column: 5, scope: !10)
!30 = !DILocation(line: 8, column: 5, scope: !10)
!31 = !DILocation(line: 9, column: 16, scope: !32)
!32 = distinct !DILexicalBlock(scope: !10, file: !1, line: 8, column: 15)
!33 = !DILocation(line: 9, column: 20, scope: !32)
!34 = !DILocation(line: 9, column: 18, scope: !32)
!35 = !DILocation(line: 9, column: 24, scope: !32)
!36 = !DILocation(line: 9, column: 22, scope: !32)
!37 = !DILocation(line: 9, column: 14, scope: !32)
!38 = !DILocation(line: 10, column: 13, scope: !39)
!39 = distinct !DILexicalBlock(scope: !32, file: !1, line: 10, column: 13)
!40 = !DILocation(line: 10, column: 21, scope: !39)
!41 = !DILocation(line: 10, column: 18, scope: !39)
!42 = !DILocation(line: 10, column: 13, scope: !32)
!43 = !DILocation(line: 11, column: 13, scope: !39)
!44 = !DILocation(line: 12, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !32, file: !1, line: 12, column: 13)
!46 = !DILocation(line: 12, column: 20, scope: !45)
!47 = !DILocation(line: 12, column: 18, scope: !45)
!48 = !DILocation(line: 12, column: 13, scope: !32)
!49 = !DILocation(line: 13, column: 13, scope: !45)
!50 = !DILocation(line: 14, column: 10, scope: !32)
!51 = distinct !{!51, !30, !52}
!52 = !DILocation(line: 15, column: 5, scope: !10)
!53 = !DILocation(line: 16, column: 5, scope: !10)
