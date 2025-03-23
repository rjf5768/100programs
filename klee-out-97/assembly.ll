; ModuleID = '98.bc'
source_filename = "98.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"steps\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"step\00", align 1

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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  %6 = bitcast i32* %2 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !22
  %7 = load i32, i32* %2, align 4, !dbg !23
  %8 = icmp sge i32 %7, 1, !dbg !24
  br i1 %8, label %9, label %12, !dbg !25

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !26
  %11 = icmp sle i32 %10, 50, !dbg !27
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !28
  %14 = zext i1 %13 to i32, !dbg !25
  %15 = sext i32 %14 to i64, !dbg !23
  call void @klee_assume(i64 noundef %15), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %5, metadata !30, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %5, align 4, !dbg !32
  br label %16, !dbg !33

16:                                               ; preds = %34, %12
  %17 = load i32, i32* %5, align 4, !dbg !34
  %18 = load i32, i32* %2, align 4, !dbg !36
  %19 = icmp slt i32 %17, %18, !dbg !37
  br i1 %19, label %20, label %37, !dbg !38

20:                                               ; preds = %16
  %21 = bitcast i32* %4 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !41
  %22 = load i32, i32* %4, align 4, !dbg !42
  %23 = icmp sge i32 %22, -1, !dbg !43
  br i1 %23, label %24, label %27, !dbg !44

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4, !dbg !45
  %26 = icmp sle i32 %25, 1, !dbg !46
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ false, %20 ], [ %26, %24 ], !dbg !47
  %29 = zext i1 %28 to i32, !dbg !44
  %30 = sext i32 %29 to i64, !dbg !42
  call void @klee_assume(i64 noundef %30), !dbg !48
  %31 = load i32, i32* %3, align 4, !dbg !49
  %32 = load i32, i32* %4, align 4, !dbg !50
  %33 = add nsw i32 %31, %32, !dbg !51
  store i32 %33, i32* %3, align 4, !dbg !52
  br label %34, !dbg !53

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4, !dbg !54
  %36 = add nsw i32 %35, 1, !dbg !54
  store i32 %36, i32* %5, align 4, !dbg !54
  br label %16, !dbg !55, !llvm.loop !56

37:                                               ; preds = %16
  ret i32 0, !dbg !59
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
!1 = !DIFile(filename: "98.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "d8eab553150dd36c5ed7561edd0d8ac0")
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
!15 = !DILocalVariable(name: "steps", scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 9, scope: !10)
!17 = !DILocalVariable(name: "pos", scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 5, column: 16, scope: !10)
!19 = !DILocalVariable(name: "step", scope: !10, file: !1, line: 5, type: !13)
!20 = !DILocation(line: 5, column: 25, scope: !10)
!21 = !DILocation(line: 6, column: 24, scope: !10)
!22 = !DILocation(line: 6, column: 5, scope: !10)
!23 = !DILocation(line: 7, column: 17, scope: !10)
!24 = !DILocation(line: 7, column: 23, scope: !10)
!25 = !DILocation(line: 7, column: 28, scope: !10)
!26 = !DILocation(line: 7, column: 31, scope: !10)
!27 = !DILocation(line: 7, column: 37, scope: !10)
!28 = !DILocation(line: 0, scope: !10)
!29 = !DILocation(line: 7, column: 5, scope: !10)
!30 = !DILocalVariable(name: "i", scope: !31, file: !1, line: 8, type: !13)
!31 = distinct !DILexicalBlock(scope: !10, file: !1, line: 8, column: 5)
!32 = !DILocation(line: 8, column: 14, scope: !31)
!33 = !DILocation(line: 8, column: 10, scope: !31)
!34 = !DILocation(line: 8, column: 21, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 8, column: 5)
!36 = !DILocation(line: 8, column: 25, scope: !35)
!37 = !DILocation(line: 8, column: 23, scope: !35)
!38 = !DILocation(line: 8, column: 5, scope: !31)
!39 = !DILocation(line: 9, column: 28, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 8, column: 37)
!41 = !DILocation(line: 9, column: 9, scope: !40)
!42 = !DILocation(line: 10, column: 21, scope: !40)
!43 = !DILocation(line: 10, column: 26, scope: !40)
!44 = !DILocation(line: 10, column: 32, scope: !40)
!45 = !DILocation(line: 10, column: 35, scope: !40)
!46 = !DILocation(line: 10, column: 40, scope: !40)
!47 = !DILocation(line: 0, scope: !40)
!48 = !DILocation(line: 10, column: 9, scope: !40)
!49 = !DILocation(line: 11, column: 15, scope: !40)
!50 = !DILocation(line: 11, column: 21, scope: !40)
!51 = !DILocation(line: 11, column: 19, scope: !40)
!52 = !DILocation(line: 11, column: 13, scope: !40)
!53 = !DILocation(line: 12, column: 5, scope: !40)
!54 = !DILocation(line: 8, column: 33, scope: !35)
!55 = !DILocation(line: 8, column: 5, scope: !35)
!56 = distinct !{!56, !38, !57, !58}
!57 = !DILocation(line: 12, column: 5, scope: !31)
!58 = !{!"llvm.loop.mustprogress"}
!59 = !DILocation(line: 13, column: 5, scope: !10)
