; ModuleID = '45.bc'
source_filename = "45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_power_of_two(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !DIExpression()), !dbg !16
  %4 = load i32, i32* %3, align 4, !dbg !17
  %5 = icmp sle i32 %4, 0, !dbg !19
  br i1 %5, label %6, label %7, !dbg !20

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !21
  br label %14, !dbg !21

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !22
  %9 = load i32, i32* %3, align 4, !dbg !23
  %10 = sub nsw i32 %9, 1, !dbg !24
  %11 = and i32 %8, %10, !dbg !25
  %12 = icmp eq i32 %11, 0, !dbg !26
  %13 = zext i1 %12 to i32, !dbg !26
  store i32 %13, i32* %2, align 4, !dbg !27
  br label %14, !dbg !27

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %2, align 4, !dbg !28
  ret i32 %15, !dbg !28
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %3, metadata !34, metadata !DIExpression()), !dbg !35
  %4 = bitcast i32* %2 to i8*, !dbg !36
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !37
  %5 = load i32, i32* %2, align 4, !dbg !38
  %6 = icmp sgt i32 %5, 0, !dbg !39
  br i1 %6, label %7, label %10, !dbg !40

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !41
  %9 = icmp sle i32 %8, 1024, !dbg !42
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !43
  %12 = zext i1 %11 to i32, !dbg !40
  %13 = sext i32 %12 to i64, !dbg !38
  call void @klee_assume(i64 noundef %13), !dbg !44
  %14 = load i32, i32* %2, align 4, !dbg !45
  %15 = call i32 @is_power_of_two(i32 noundef %14), !dbg !46
  store i32 %15, i32* %3, align 4, !dbg !47
  ret i32 0, !dbg !48
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
!1 = !DIFile(filename: "45.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "1a447770ca2f75b19487f6f0e6250d2c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "is_power_of_two", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 25, scope: !10)
!17 = !DILocation(line: 6, column: 6, scope: !18)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 6)
!19 = !DILocation(line: 6, column: 8, scope: !18)
!20 = !DILocation(line: 6, column: 6, scope: !10)
!21 = !DILocation(line: 7, column: 5, scope: !18)
!22 = !DILocation(line: 8, column: 12, scope: !10)
!23 = !DILocation(line: 8, column: 17, scope: !10)
!24 = !DILocation(line: 8, column: 19, scope: !10)
!25 = !DILocation(line: 8, column: 14, scope: !10)
!26 = !DILocation(line: 8, column: 25, scope: !10)
!27 = !DILocation(line: 8, column: 3, scope: !10)
!28 = !DILocation(line: 9, column: 1, scope: !10)
!29 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !30, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!30 = !DISubroutineType(types: !31)
!31 = !{!13}
!32 = !DILocalVariable(name: "n", scope: !29, file: !1, line: 12, type: !13)
!33 = !DILocation(line: 12, column: 7, scope: !29)
!34 = !DILocalVariable(name: "pow2", scope: !29, file: !1, line: 12, type: !13)
!35 = !DILocation(line: 12, column: 10, scope: !29)
!36 = !DILocation(line: 13, column: 22, scope: !29)
!37 = !DILocation(line: 13, column: 3, scope: !29)
!38 = !DILocation(line: 14, column: 15, scope: !29)
!39 = !DILocation(line: 14, column: 17, scope: !29)
!40 = !DILocation(line: 14, column: 21, scope: !29)
!41 = !DILocation(line: 14, column: 24, scope: !29)
!42 = !DILocation(line: 14, column: 26, scope: !29)
!43 = !DILocation(line: 0, scope: !29)
!44 = !DILocation(line: 14, column: 3, scope: !29)
!45 = !DILocation(line: 15, column: 26, scope: !29)
!46 = !DILocation(line: 15, column: 10, scope: !29)
!47 = !DILocation(line: 15, column: 8, scope: !29)
!48 = !DILocation(line: 16, column: 3, scope: !29)
