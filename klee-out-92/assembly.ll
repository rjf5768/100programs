; ModuleID = '93.bc'
source_filename = "93.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"dividend\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"divisor\00", align 1

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
  store i32 0, i32* %4, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  %6 = bitcast i32* %2 to i8*, !dbg !23
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !24
  %7 = bitcast i32* %3 to i8*, !dbg !25
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !26
  %8 = load i32, i32* %3, align 4, !dbg !27
  %9 = icmp sgt i32 %8, 0, !dbg !28
  br i1 %9, label %10, label %13, !dbg !29

10:                                               ; preds = %0
  %11 = load i32, i32* %3, align 4, !dbg !30
  %12 = icmp sle i32 %11, 100, !dbg !31
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !32
  %15 = zext i1 %14 to i32, !dbg !29
  %16 = sext i32 %15 to i64, !dbg !27
  call void @klee_assume(i64 noundef %16), !dbg !33
  %17 = load i32, i32* %2, align 4, !dbg !34
  %18 = icmp sge i32 %17, 0, !dbg !35
  br i1 %18, label %19, label %22, !dbg !36

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4, !dbg !37
  %21 = icmp sle i32 %20, 1000, !dbg !38
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i1 [ false, %13 ], [ %21, %19 ], !dbg !32
  %24 = zext i1 %23 to i32, !dbg !36
  %25 = sext i32 %24 to i64, !dbg !34
  call void @klee_assume(i64 noundef %25), !dbg !39
  %26 = load i32, i32* %2, align 4, !dbg !40
  store i32 %26, i32* %5, align 4, !dbg !41
  br label %27, !dbg !42

27:                                               ; preds = %31, %22
  %28 = load i32, i32* %5, align 4, !dbg !43
  %29 = load i32, i32* %3, align 4, !dbg !44
  %30 = icmp sge i32 %28, %29, !dbg !45
  br i1 %30, label %31, label %37, !dbg !42

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4, !dbg !46
  %33 = load i32, i32* %3, align 4, !dbg !48
  %34 = sub nsw i32 %32, %33, !dbg !49
  store i32 %34, i32* %5, align 4, !dbg !50
  %35 = load i32, i32* %4, align 4, !dbg !51
  %36 = add nsw i32 %35, 1, !dbg !51
  store i32 %36, i32* %4, align 4, !dbg !51
  br label %27, !dbg !42, !llvm.loop !52

37:                                               ; preds = %27
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
!1 = !DIFile(filename: "93.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "67473244623bb84178276e886dd5919b")
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
!15 = !DILocalVariable(name: "dividend", scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 9, scope: !10)
!17 = !DILocalVariable(name: "divisor", scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 5, column: 19, scope: !10)
!19 = !DILocalVariable(name: "quotient", scope: !10, file: !1, line: 5, type: !13)
!20 = !DILocation(line: 5, column: 28, scope: !10)
!21 = !DILocalVariable(name: "remainder", scope: !10, file: !1, line: 5, type: !13)
!22 = !DILocation(line: 5, column: 42, scope: !10)
!23 = !DILocation(line: 6, column: 24, scope: !10)
!24 = !DILocation(line: 6, column: 5, scope: !10)
!25 = !DILocation(line: 7, column: 24, scope: !10)
!26 = !DILocation(line: 7, column: 5, scope: !10)
!27 = !DILocation(line: 8, column: 17, scope: !10)
!28 = !DILocation(line: 8, column: 25, scope: !10)
!29 = !DILocation(line: 8, column: 29, scope: !10)
!30 = !DILocation(line: 8, column: 32, scope: !10)
!31 = !DILocation(line: 8, column: 40, scope: !10)
!32 = !DILocation(line: 0, scope: !10)
!33 = !DILocation(line: 8, column: 5, scope: !10)
!34 = !DILocation(line: 9, column: 17, scope: !10)
!35 = !DILocation(line: 9, column: 26, scope: !10)
!36 = !DILocation(line: 9, column: 31, scope: !10)
!37 = !DILocation(line: 9, column: 34, scope: !10)
!38 = !DILocation(line: 9, column: 43, scope: !10)
!39 = !DILocation(line: 9, column: 5, scope: !10)
!40 = !DILocation(line: 10, column: 17, scope: !10)
!41 = !DILocation(line: 10, column: 15, scope: !10)
!42 = !DILocation(line: 11, column: 5, scope: !10)
!43 = !DILocation(line: 11, column: 12, scope: !10)
!44 = !DILocation(line: 11, column: 25, scope: !10)
!45 = !DILocation(line: 11, column: 22, scope: !10)
!46 = !DILocation(line: 12, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !10, file: !1, line: 11, column: 34)
!48 = !DILocation(line: 12, column: 33, scope: !47)
!49 = !DILocation(line: 12, column: 31, scope: !47)
!50 = !DILocation(line: 12, column: 19, scope: !47)
!51 = !DILocation(line: 13, column: 17, scope: !47)
!52 = distinct !{!52, !42, !53, !54}
!53 = !DILocation(line: 14, column: 5, scope: !10)
!54 = !{!"llvm.loop.mustprogress"}
!55 = !DILocation(line: 15, column: 5, scope: !10)
