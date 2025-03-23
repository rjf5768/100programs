; ModuleID = '78.bc'
source_filename = "78.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"78.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %2, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  %5 = bitcast i32* %3 to i8*, !dbg !19
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !20
  %6 = load i32, i32* %3, align 4, !dbg !21
  %7 = icmp sge i32 %6, 1, !dbg !22
  br i1 %7, label %8, label %11, !dbg !23

8:                                                ; preds = %0
  %9 = load i32, i32* %3, align 4, !dbg !24
  %10 = icmp sle i32 %9, 20, !dbg !25
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ], !dbg !26
  %13 = zext i1 %12 to i32, !dbg !23
  %14 = sext i32 %13 to i64, !dbg !21
  call void @klee_assume(i64 noundef %14), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %4, metadata !28, metadata !DIExpression()), !dbg !30
  store i32 0, i32* %4, align 4, !dbg !30
  br label %15, !dbg !31

15:                                               ; preds = %26, %11
  %16 = load i32, i32* %4, align 4, !dbg !32
  %17 = icmp slt i32 %16, 50, !dbg !34
  br i1 %17, label %18, label %29, !dbg !35

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4, !dbg !36
  %20 = add nsw i32 %19, 1, !dbg !36
  store i32 %20, i32* %2, align 4, !dbg !36
  %21 = load i32, i32* %2, align 4, !dbg !38
  %22 = load i32, i32* %3, align 4, !dbg !40
  %23 = icmp sge i32 %21, %22, !dbg !41
  br i1 %23, label %24, label %25, !dbg !42

24:                                               ; preds = %18
  br label %29, !dbg !43

25:                                               ; preds = %18
  br label %26, !dbg !44

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4, !dbg !45
  %28 = add nsw i32 %27, 1, !dbg !45
  store i32 %28, i32* %4, align 4, !dbg !45
  br label %15, !dbg !46, !llvm.loop !47

29:                                               ; preds = %24, %15
  %30 = load i32, i32* %2, align 4, !dbg !50
  %31 = load i32, i32* %3, align 4, !dbg !52
  %32 = icmp slt i32 %30, %31, !dbg !53
  br i1 %32, label %33, label %34, !dbg !54

33:                                               ; preds = %29
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 15, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !55
  unreachable, !dbg !55

34:                                               ; preds = %29
  ret i32 0, !dbg !56
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
!1 = !DIFile(filename: "78.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "2d109d37846bb2c4c0e4dcec54008463")
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
!15 = !DILocalVariable(name: "counter", scope: !10, file: !1, line: 6, type: !13)
!16 = !DILocation(line: 6, column: 9, scope: !10)
!17 = !DILocalVariable(name: "x", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 22, scope: !10)
!19 = !DILocation(line: 7, column: 24, scope: !10)
!20 = !DILocation(line: 7, column: 5, scope: !10)
!21 = !DILocation(line: 8, column: 17, scope: !10)
!22 = !DILocation(line: 8, column: 19, scope: !10)
!23 = !DILocation(line: 8, column: 24, scope: !10)
!24 = !DILocation(line: 8, column: 27, scope: !10)
!25 = !DILocation(line: 8, column: 29, scope: !10)
!26 = !DILocation(line: 0, scope: !10)
!27 = !DILocation(line: 8, column: 5, scope: !10)
!28 = !DILocalVariable(name: "i", scope: !29, file: !1, line: 9, type: !13)
!29 = distinct !DILexicalBlock(scope: !10, file: !1, line: 9, column: 5)
!30 = !DILocation(line: 9, column: 14, scope: !29)
!31 = !DILocation(line: 9, column: 10, scope: !29)
!32 = !DILocation(line: 9, column: 21, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 5)
!34 = !DILocation(line: 9, column: 23, scope: !33)
!35 = !DILocation(line: 9, column: 5, scope: !29)
!36 = !DILocation(line: 10, column: 16, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 9, column: 34)
!38 = !DILocation(line: 11, column: 12, scope: !39)
!39 = distinct !DILexicalBlock(scope: !37, file: !1, line: 11, column: 12)
!40 = !DILocation(line: 11, column: 23, scope: !39)
!41 = !DILocation(line: 11, column: 20, scope: !39)
!42 = !DILocation(line: 11, column: 12, scope: !37)
!43 = !DILocation(line: 12, column: 13, scope: !39)
!44 = !DILocation(line: 13, column: 5, scope: !37)
!45 = !DILocation(line: 9, column: 30, scope: !33)
!46 = !DILocation(line: 9, column: 5, scope: !33)
!47 = distinct !{!47, !35, !48, !49}
!48 = !DILocation(line: 13, column: 5, scope: !29)
!49 = !{!"llvm.loop.mustprogress"}
!50 = !DILocation(line: 14, column: 8, scope: !51)
!51 = distinct !DILexicalBlock(scope: !10, file: !1, line: 14, column: 8)
!52 = !DILocation(line: 14, column: 18, scope: !51)
!53 = !DILocation(line: 14, column: 16, scope: !51)
!54 = !DILocation(line: 14, column: 8, scope: !10)
!55 = !DILocation(line: 15, column: 9, scope: !51)
!56 = !DILocation(line: 16, column: 5, scope: !10)
