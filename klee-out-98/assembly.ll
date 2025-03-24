; ModuleID = '99.bc'
source_filename = "99.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  %5 = bitcast i32* %2 to i8*, !dbg !19
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !20
  %6 = bitcast i32* %3 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !22
  %7 = load i32, i32* %2, align 4, !dbg !23
  %8 = icmp eq i32 %7, 0, !dbg !24
  br i1 %8, label %12, label %9, !dbg !25

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !26
  %11 = icmp eq i32 %10, 1, !dbg !27
  br label %12, !dbg !25

12:                                               ; preds = %9, %0
  %13 = phi i1 [ true, %0 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !25
  %15 = sext i32 %14 to i64, !dbg !23
  call void @klee_assume(i64 noundef %15), !dbg !28
  %16 = load i32, i32* %3, align 4, !dbg !29
  %17 = icmp sge i32 %16, 1, !dbg !30
  br i1 %17, label %18, label %21, !dbg !31

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4, !dbg !32
  %20 = icmp sle i32 %19, 20, !dbg !33
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i1 [ false, %12 ], [ %20, %18 ], !dbg !34
  %23 = zext i1 %22 to i32, !dbg !31
  %24 = sext i32 %23 to i64, !dbg !29
  call void @klee_assume(i64 noundef %24), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %4, metadata !36, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %4, align 4, !dbg !38
  br label %25, !dbg !39

25:                                               ; preds = %32, %21
  %26 = load i32, i32* %4, align 4, !dbg !40
  %27 = load i32, i32* %3, align 4, !dbg !42
  %28 = icmp slt i32 %26, %27, !dbg !43
  br i1 %28, label %29, label %35, !dbg !44

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4, !dbg !45
  %31 = xor i32 %30, 1, !dbg !47
  store i32 %31, i32* %2, align 4, !dbg !48
  br label %32, !dbg !49

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4, !dbg !50
  %34 = add nsw i32 %33, 1, !dbg !50
  store i32 %34, i32* %4, align 4, !dbg !50
  br label %25, !dbg !51, !llvm.loop !52

35:                                               ; preds = %25
  ret i32 0, !dbg !55
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
!1 = !DIFile(filename: "99.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "bd89d93afa7a7a07f1388cb74b1fd448")
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
!15 = !DILocalVariable(name: "flag", scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 9, scope: !10)
!17 = !DILocalVariable(name: "iterations", scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 5, column: 15, scope: !10)
!19 = !DILocation(line: 6, column: 24, scope: !10)
!20 = !DILocation(line: 6, column: 5, scope: !10)
!21 = !DILocation(line: 7, column: 24, scope: !10)
!22 = !DILocation(line: 7, column: 5, scope: !10)
!23 = !DILocation(line: 8, column: 17, scope: !10)
!24 = !DILocation(line: 8, column: 22, scope: !10)
!25 = !DILocation(line: 8, column: 27, scope: !10)
!26 = !DILocation(line: 8, column: 30, scope: !10)
!27 = !DILocation(line: 8, column: 35, scope: !10)
!28 = !DILocation(line: 8, column: 5, scope: !10)
!29 = !DILocation(line: 9, column: 17, scope: !10)
!30 = !DILocation(line: 9, column: 28, scope: !10)
!31 = !DILocation(line: 9, column: 33, scope: !10)
!32 = !DILocation(line: 9, column: 36, scope: !10)
!33 = !DILocation(line: 9, column: 47, scope: !10)
!34 = !DILocation(line: 0, scope: !10)
!35 = !DILocation(line: 9, column: 5, scope: !10)
!36 = !DILocalVariable(name: "i", scope: !37, file: !1, line: 10, type: !13)
!37 = distinct !DILexicalBlock(scope: !10, file: !1, line: 10, column: 5)
!38 = !DILocation(line: 10, column: 14, scope: !37)
!39 = !DILocation(line: 10, column: 10, scope: !37)
!40 = !DILocation(line: 10, column: 21, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 10, column: 5)
!42 = !DILocation(line: 10, column: 25, scope: !41)
!43 = !DILocation(line: 10, column: 23, scope: !41)
!44 = !DILocation(line: 10, column: 5, scope: !37)
!45 = !DILocation(line: 11, column: 16, scope: !46)
!46 = distinct !DILexicalBlock(scope: !41, file: !1, line: 10, column: 42)
!47 = !DILocation(line: 11, column: 21, scope: !46)
!48 = !DILocation(line: 11, column: 14, scope: !46)
!49 = !DILocation(line: 12, column: 5, scope: !46)
!50 = !DILocation(line: 10, column: 38, scope: !41)
!51 = !DILocation(line: 10, column: 5, scope: !41)
!52 = distinct !{!52, !44, !53, !54}
!53 = !DILocation(line: 12, column: 5, scope: !37)
!54 = !{!"llvm.loop.mustprogress"}
!55 = !DILocation(line: 13, column: 5, scope: !10)
