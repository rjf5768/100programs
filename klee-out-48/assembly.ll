; ModuleID = '49.bc'
source_filename = "49.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"49.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  %3 = bitcast i32* %2 to i8*, !dbg !17
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !18
  %4 = load i32, i32* %2, align 4, !dbg !19
  %5 = icmp sge i32 %4, 0, !dbg !20
  br i1 %5, label %6, label %9, !dbg !21

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4, !dbg !22
  %8 = icmp sle i32 %7, 10, !dbg !23
  br label %9

9:                                                ; preds = %6, %0
  %10 = phi i1 [ false, %0 ], [ %8, %6 ], !dbg !24
  %11 = zext i1 %10 to i32, !dbg !21
  %12 = sext i32 %11 to i64, !dbg !19
  call void @klee_assume(i64 noundef %12), !dbg !25
  br label %13, !dbg !26

13:                                               ; preds = %16, %9
  %14 = load i32, i32* %2, align 4, !dbg !27
  %15 = icmp sgt i32 %14, 0, !dbg !28
  br i1 %15, label %16, label %19, !dbg !26

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4, !dbg !29
  %18 = add nsw i32 %17, -1, !dbg !29
  store i32 %18, i32* %2, align 4, !dbg !29
  br label %13, !dbg !26, !llvm.loop !30

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4, !dbg !32
  %21 = icmp ne i32 %20, 0, !dbg !34
  br i1 %21, label %22, label %23, !dbg !35

22:                                               ; preds = %19
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 12, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !36
  unreachable, !dbg !36

23:                                               ; preds = %19
  ret i32 0, !dbg !37
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "49.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "7023f6ba708dacfd4ad14167a6b765c2")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", scope: !10, file: !1, line: 6, type: !13)
!16 = !DILocation(line: 6, column: 7, scope: !10)
!17 = !DILocation(line: 7, column: 22, scope: !10)
!18 = !DILocation(line: 7, column: 3, scope: !10)
!19 = !DILocation(line: 8, column: 15, scope: !10)
!20 = !DILocation(line: 8, column: 17, scope: !10)
!21 = !DILocation(line: 8, column: 22, scope: !10)
!22 = !DILocation(line: 8, column: 25, scope: !10)
!23 = !DILocation(line: 8, column: 27, scope: !10)
!24 = !DILocation(line: 0, scope: !10)
!25 = !DILocation(line: 8, column: 3, scope: !10)
!26 = !DILocation(line: 9, column: 3, scope: !10)
!27 = !DILocation(line: 9, column: 9, scope: !10)
!28 = !DILocation(line: 9, column: 11, scope: !10)
!29 = !DILocation(line: 10, column: 6, scope: !10)
!30 = distinct !{!30, !26, !29, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !DILocation(line: 11, column: 6, scope: !33)
!33 = distinct !DILexicalBlock(scope: !10, file: !1, line: 11, column: 6)
!34 = !DILocation(line: 11, column: 8, scope: !33)
!35 = !DILocation(line: 11, column: 6, scope: !10)
!36 = !DILocation(line: 12, column: 5, scope: !33)
!37 = !DILocation(line: 13, column: 3, scope: !10)
