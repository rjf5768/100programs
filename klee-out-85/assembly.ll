; ModuleID = '86.bc'
source_filename = "86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"86.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  %5 = bitcast i32* %2 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !22
  %6 = bitcast i32* %3 to i8*, !dbg !23
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !24
  %7 = load i32, i32* %2, align 4, !dbg !25
  %8 = icmp sge i32 %7, -50, !dbg !26
  br i1 %8, label %9, label %12, !dbg !27

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !28
  %11 = icmp sle i32 %10, 50, !dbg !29
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !30
  %14 = zext i1 %13 to i32, !dbg !27
  %15 = sext i32 %14 to i64, !dbg !25
  call void @klee_assume(i64 noundef %15), !dbg !31
  %16 = load i32, i32* %3, align 4, !dbg !32
  %17 = icmp sge i32 %16, -50, !dbg !33
  br i1 %17, label %18, label %21, !dbg !34

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4, !dbg !35
  %20 = icmp sle i32 %19, 50, !dbg !36
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i1 [ false, %12 ], [ %20, %18 ], !dbg !30
  %23 = zext i1 %22 to i32, !dbg !34
  %24 = sext i32 %23 to i64, !dbg !32
  call void @klee_assume(i64 noundef %24), !dbg !37
  %25 = load i32, i32* %2, align 4, !dbg !38
  %26 = load i32, i32* %3, align 4, !dbg !39
  %27 = icmp sgt i32 %25, %26, !dbg !40
  br i1 %27, label %28, label %32, !dbg !41

28:                                               ; preds = %21
  %29 = load i32, i32* %2, align 4, !dbg !42
  %30 = load i32, i32* %3, align 4, !dbg !43
  %31 = sub nsw i32 %29, %30, !dbg !44
  br label %36, !dbg !41

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4, !dbg !45
  %34 = load i32, i32* %2, align 4, !dbg !46
  %35 = sub nsw i32 %33, %34, !dbg !47
  br label %36, !dbg !41

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ], !dbg !41
  store i32 %37, i32* %4, align 4, !dbg !48
  %38 = load i32, i32* %4, align 4, !dbg !49
  %39 = icmp slt i32 %38, 0, !dbg !51
  br i1 %39, label %40, label %41, !dbg !52

40:                                               ; preds = %36
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef 13, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !53
  unreachable, !dbg !53

41:                                               ; preds = %36
  ret i32 0, !dbg !54
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
!1 = !DIFile(filename: "86.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "1731d67878aea67e3ceb81b43dbf4d09")
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
!15 = !DILocalVariable(name: "x", scope: !10, file: !1, line: 6, type: !13)
!16 = !DILocation(line: 6, column: 9, scope: !10)
!17 = !DILocalVariable(name: "y", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 12, scope: !10)
!19 = !DILocalVariable(name: "z", scope: !10, file: !1, line: 6, type: !13)
!20 = !DILocation(line: 6, column: 15, scope: !10)
!21 = !DILocation(line: 7, column: 24, scope: !10)
!22 = !DILocation(line: 7, column: 5, scope: !10)
!23 = !DILocation(line: 8, column: 24, scope: !10)
!24 = !DILocation(line: 8, column: 5, scope: !10)
!25 = !DILocation(line: 9, column: 17, scope: !10)
!26 = !DILocation(line: 9, column: 19, scope: !10)
!27 = !DILocation(line: 9, column: 26, scope: !10)
!28 = !DILocation(line: 9, column: 29, scope: !10)
!29 = !DILocation(line: 9, column: 31, scope: !10)
!30 = !DILocation(line: 0, scope: !10)
!31 = !DILocation(line: 9, column: 5, scope: !10)
!32 = !DILocation(line: 10, column: 17, scope: !10)
!33 = !DILocation(line: 10, column: 19, scope: !10)
!34 = !DILocation(line: 10, column: 26, scope: !10)
!35 = !DILocation(line: 10, column: 29, scope: !10)
!36 = !DILocation(line: 10, column: 31, scope: !10)
!37 = !DILocation(line: 10, column: 5, scope: !10)
!38 = !DILocation(line: 11, column: 10, scope: !10)
!39 = !DILocation(line: 11, column: 14, scope: !10)
!40 = !DILocation(line: 11, column: 12, scope: !10)
!41 = !DILocation(line: 11, column: 9, scope: !10)
!42 = !DILocation(line: 11, column: 20, scope: !10)
!43 = !DILocation(line: 11, column: 24, scope: !10)
!44 = !DILocation(line: 11, column: 22, scope: !10)
!45 = !DILocation(line: 11, column: 30, scope: !10)
!46 = !DILocation(line: 11, column: 34, scope: !10)
!47 = !DILocation(line: 11, column: 32, scope: !10)
!48 = !DILocation(line: 11, column: 7, scope: !10)
!49 = !DILocation(line: 12, column: 8, scope: !50)
!50 = distinct !DILexicalBlock(scope: !10, file: !1, line: 12, column: 8)
!51 = !DILocation(line: 12, column: 10, scope: !50)
!52 = !DILocation(line: 12, column: 8, scope: !10)
!53 = !DILocation(line: 13, column: 9, scope: !50)
!54 = !DILocation(line: 14, column: 5, scope: !10)
