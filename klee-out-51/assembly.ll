; ModuleID = '52.bc'
source_filename = "52.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"w1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"w2\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"52.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %6, metadata !23, metadata !DIExpression()), !dbg !24
  %7 = bitcast i32* %2 to i8*, !dbg !25
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !26
  %8 = bitcast i32* %3 to i8*, !dbg !27
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !28
  %9 = bitcast i32* %4 to i8*, !dbg !29
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !30
  %10 = bitcast i32* %5 to i8*, !dbg !31
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)), !dbg !32
  %11 = load i32, i32* %4, align 4, !dbg !33
  %12 = icmp sge i32 %11, 0, !dbg !34
  br i1 %12, label %13, label %16, !dbg !35

13:                                               ; preds = %0
  %14 = load i32, i32* %4, align 4, !dbg !36
  %15 = icmp sle i32 %14, 10, !dbg !37
  br label %16

16:                                               ; preds = %13, %0
  %17 = phi i1 [ false, %0 ], [ %15, %13 ], !dbg !38
  %18 = zext i1 %17 to i32, !dbg !35
  %19 = sext i32 %18 to i64, !dbg !33
  call void @klee_assume(i64 noundef %19), !dbg !39
  %20 = load i32, i32* %5, align 4, !dbg !40
  %21 = icmp sge i32 %20, 0, !dbg !41
  br i1 %21, label %22, label %25, !dbg !42

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4, !dbg !43
  %24 = icmp sle i32 %23, 10, !dbg !44
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i1 [ false, %16 ], [ %24, %22 ], !dbg !38
  %27 = zext i1 %26 to i32, !dbg !42
  %28 = sext i32 %27 to i64, !dbg !40
  call void @klee_assume(i64 noundef %28), !dbg !45
  %29 = load i32, i32* %2, align 4, !dbg !46
  %30 = load i32, i32* %4, align 4, !dbg !47
  %31 = mul nsw i32 %29, %30, !dbg !48
  %32 = load i32, i32* %3, align 4, !dbg !49
  %33 = load i32, i32* %5, align 4, !dbg !50
  %34 = mul nsw i32 %32, %33, !dbg !51
  %35 = add nsw i32 %31, %34, !dbg !52
  store i32 %35, i32* %6, align 4, !dbg !53
  %36 = load i32, i32* %6, align 4, !dbg !54
  %37 = load i32, i32* %2, align 4, !dbg !56
  %38 = icmp slt i32 %36, %37, !dbg !57
  br i1 %38, label %43, label %39, !dbg !58

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4, !dbg !59
  %41 = load i32, i32* %3, align 4, !dbg !60
  %42 = icmp slt i32 %40, %41, !dbg !61
  br i1 %42, label %43, label %44, !dbg !62

43:                                               ; preds = %39, %25
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 noundef 15, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !63
  unreachable, !dbg !63

44:                                               ; preds = %39
  ret i32 0, !dbg !64
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
!1 = !DIFile(filename: "52.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "ecb6be158669e5ef7a4669823f6186ae")
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
!15 = !DILocalVariable(name: "a", scope: !10, file: !1, line: 6, type: !13)
!16 = !DILocation(line: 6, column: 7, scope: !10)
!17 = !DILocalVariable(name: "b", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 10, scope: !10)
!19 = !DILocalVariable(name: "w1", scope: !10, file: !1, line: 6, type: !13)
!20 = !DILocation(line: 6, column: 13, scope: !10)
!21 = !DILocalVariable(name: "w2", scope: !10, file: !1, line: 6, type: !13)
!22 = !DILocation(line: 6, column: 17, scope: !10)
!23 = !DILocalVariable(name: "weighted", scope: !10, file: !1, line: 6, type: !13)
!24 = !DILocation(line: 6, column: 21, scope: !10)
!25 = !DILocation(line: 7, column: 22, scope: !10)
!26 = !DILocation(line: 7, column: 3, scope: !10)
!27 = !DILocation(line: 8, column: 22, scope: !10)
!28 = !DILocation(line: 8, column: 3, scope: !10)
!29 = !DILocation(line: 9, column: 22, scope: !10)
!30 = !DILocation(line: 9, column: 3, scope: !10)
!31 = !DILocation(line: 10, column: 22, scope: !10)
!32 = !DILocation(line: 10, column: 3, scope: !10)
!33 = !DILocation(line: 11, column: 15, scope: !10)
!34 = !DILocation(line: 11, column: 18, scope: !10)
!35 = !DILocation(line: 11, column: 23, scope: !10)
!36 = !DILocation(line: 11, column: 26, scope: !10)
!37 = !DILocation(line: 11, column: 29, scope: !10)
!38 = !DILocation(line: 0, scope: !10)
!39 = !DILocation(line: 11, column: 3, scope: !10)
!40 = !DILocation(line: 12, column: 15, scope: !10)
!41 = !DILocation(line: 12, column: 18, scope: !10)
!42 = !DILocation(line: 12, column: 23, scope: !10)
!43 = !DILocation(line: 12, column: 26, scope: !10)
!44 = !DILocation(line: 12, column: 29, scope: !10)
!45 = !DILocation(line: 12, column: 3, scope: !10)
!46 = !DILocation(line: 13, column: 14, scope: !10)
!47 = !DILocation(line: 13, column: 18, scope: !10)
!48 = !DILocation(line: 13, column: 16, scope: !10)
!49 = !DILocation(line: 13, column: 23, scope: !10)
!50 = !DILocation(line: 13, column: 27, scope: !10)
!51 = !DILocation(line: 13, column: 25, scope: !10)
!52 = !DILocation(line: 13, column: 21, scope: !10)
!53 = !DILocation(line: 13, column: 12, scope: !10)
!54 = !DILocation(line: 14, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !10, file: !1, line: 14, column: 6)
!56 = !DILocation(line: 14, column: 17, scope: !55)
!57 = !DILocation(line: 14, column: 15, scope: !55)
!58 = !DILocation(line: 14, column: 19, scope: !55)
!59 = !DILocation(line: 14, column: 22, scope: !55)
!60 = !DILocation(line: 14, column: 33, scope: !55)
!61 = !DILocation(line: 14, column: 31, scope: !55)
!62 = !DILocation(line: 14, column: 6, scope: !10)
!63 = !DILocation(line: 15, column: 5, scope: !55)
!64 = !DILocation(line: 16, column: 3, scope: !10)
