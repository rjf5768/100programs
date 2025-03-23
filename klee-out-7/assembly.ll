; ModuleID = '8.bc'
source_filename = "8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @catalan(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !DIExpression()), !dbg !16
  %6 = load i32, i32* %3, align 4, !dbg !17
  %7 = icmp sle i32 %6, 1, !dbg !19
  br i1 %7, label %8, label %9, !dbg !20

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !21
  br label %30, !dbg !21

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %4, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %5, metadata !24, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %5, align 4, !dbg !26
  br label %10, !dbg !27

10:                                               ; preds = %25, %9
  %11 = load i32, i32* %5, align 4, !dbg !28
  %12 = load i32, i32* %3, align 4, !dbg !30
  %13 = icmp slt i32 %11, %12, !dbg !31
  br i1 %13, label %14, label %28, !dbg !32

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4, !dbg !33
  %16 = call i32 @catalan(i32 noundef %15), !dbg !35
  %17 = load i32, i32* %3, align 4, !dbg !36
  %18 = load i32, i32* %5, align 4, !dbg !37
  %19 = sub nsw i32 %17, %18, !dbg !38
  %20 = sub nsw i32 %19, 1, !dbg !39
  %21 = call i32 @catalan(i32 noundef %20), !dbg !40
  %22 = mul nsw i32 %16, %21, !dbg !41
  %23 = load i32, i32* %4, align 4, !dbg !42
  %24 = add nsw i32 %23, %22, !dbg !42
  store i32 %24, i32* %4, align 4, !dbg !42
  br label %25, !dbg !43

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4, !dbg !44
  %27 = add nsw i32 %26, 1, !dbg !44
  store i32 %27, i32* %5, align 4, !dbg !44
  br label %10, !dbg !45, !llvm.loop !46

28:                                               ; preds = %10
  %29 = load i32, i32* %4, align 4, !dbg !49
  store i32 %29, i32* %2, align 4, !dbg !50
  br label %30, !dbg !50

30:                                               ; preds = %28, %8
  %31 = load i32, i32* %2, align 4, !dbg !51
  ret i32 %31, !dbg !51
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !52 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !55, metadata !DIExpression()), !dbg !56
  %4 = bitcast i32* %2 to i8*, !dbg !57
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !58
  %5 = load i32, i32* %2, align 4, !dbg !59
  %6 = icmp sge i32 %5, 0, !dbg !60
  br i1 %6, label %7, label %10, !dbg !61

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !62
  %9 = icmp sle i32 %8, 8, !dbg !63
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !64
  %12 = zext i1 %11 to i32, !dbg !61
  %13 = sext i32 %12 to i64, !dbg !59
  call void @klee_assume(i64 noundef %13), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %3, metadata !66, metadata !DIExpression()), !dbg !67
  %14 = load i32, i32* %2, align 4, !dbg !68
  %15 = call i32 @catalan(i32 noundef %14), !dbg !69
  store i32 %15, i32* %3, align 4, !dbg !67
  ret i32 0, !dbg !70
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "8.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "176b2279d7d337771bb5127d9a8ad79a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "catalan", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 17, scope: !10)
!17 = !DILocation(line: 6, column: 6, scope: !18)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 6)
!19 = !DILocation(line: 6, column: 8, scope: !18)
!20 = !DILocation(line: 6, column: 6, scope: !10)
!21 = !DILocation(line: 6, column: 14, scope: !18)
!22 = !DILocalVariable(name: "res", scope: !10, file: !1, line: 7, type: !13)
!23 = !DILocation(line: 7, column: 7, scope: !10)
!24 = !DILocalVariable(name: "i", scope: !25, file: !1, line: 8, type: !13)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 8, column: 3)
!26 = !DILocation(line: 8, column: 11, scope: !25)
!27 = !DILocation(line: 8, column: 7, scope: !25)
!28 = !DILocation(line: 8, column: 18, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 3)
!30 = !DILocation(line: 8, column: 22, scope: !29)
!31 = !DILocation(line: 8, column: 20, scope: !29)
!32 = !DILocation(line: 8, column: 3, scope: !25)
!33 = !DILocation(line: 9, column: 20, scope: !34)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 8, column: 29)
!35 = !DILocation(line: 9, column: 12, scope: !34)
!36 = !DILocation(line: 9, column: 33, scope: !34)
!37 = !DILocation(line: 9, column: 37, scope: !34)
!38 = !DILocation(line: 9, column: 35, scope: !34)
!39 = !DILocation(line: 9, column: 39, scope: !34)
!40 = !DILocation(line: 9, column: 25, scope: !34)
!41 = !DILocation(line: 9, column: 23, scope: !34)
!42 = !DILocation(line: 9, column: 9, scope: !34)
!43 = !DILocation(line: 10, column: 3, scope: !34)
!44 = !DILocation(line: 8, column: 26, scope: !29)
!45 = !DILocation(line: 8, column: 3, scope: !29)
!46 = distinct !{!46, !32, !47, !48}
!47 = !DILocation(line: 10, column: 3, scope: !25)
!48 = !{!"llvm.loop.mustprogress"}
!49 = !DILocation(line: 11, column: 10, scope: !10)
!50 = !DILocation(line: 11, column: 3, scope: !10)
!51 = !DILocation(line: 12, column: 1, scope: !10)
!52 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !53, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!53 = !DISubroutineType(types: !54)
!54 = !{!13}
!55 = !DILocalVariable(name: "n", scope: !52, file: !1, line: 15, type: !13)
!56 = !DILocation(line: 15, column: 7, scope: !52)
!57 = !DILocation(line: 16, column: 22, scope: !52)
!58 = !DILocation(line: 16, column: 3, scope: !52)
!59 = !DILocation(line: 17, column: 15, scope: !52)
!60 = !DILocation(line: 17, column: 17, scope: !52)
!61 = !DILocation(line: 17, column: 22, scope: !52)
!62 = !DILocation(line: 17, column: 25, scope: !52)
!63 = !DILocation(line: 17, column: 27, scope: !52)
!64 = !DILocation(line: 0, scope: !52)
!65 = !DILocation(line: 17, column: 3, scope: !52)
!66 = !DILocalVariable(name: "cat", scope: !52, file: !1, line: 18, type: !13)
!67 = !DILocation(line: 18, column: 7, scope: !52)
!68 = !DILocation(line: 18, column: 21, scope: !52)
!69 = !DILocation(line: 18, column: 13, scope: !52)
!70 = !DILocation(line: 19, column: 3, scope: !52)
