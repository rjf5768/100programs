; ModuleID = '87.bc'
source_filename = "87.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"87.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  %4 = bitcast i32* %2 to i8*, !dbg !17
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !18
  %5 = load i32, i32* %2, align 4, !dbg !19
  %6 = icmp sge i32 %5, -100, !dbg !20
  br i1 %6, label %7, label %10, !dbg !21

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !22
  %9 = icmp sle i32 %8, 100, !dbg !23
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !24
  %12 = zext i1 %11 to i32, !dbg !21
  %13 = sext i32 %12 to i64, !dbg !19
  call void @klee_assume(i64 noundef %13), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %3, metadata !26, metadata !DIExpression()), !dbg !27
  %14 = load i32, i32* %2, align 4, !dbg !28
  %15 = icmp slt i32 %14, 0, !dbg !30
  br i1 %15, label %16, label %26, !dbg !31

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4, !dbg !32
  %18 = icmp slt i32 %17, -50, !dbg !35
  br i1 %18, label %19, label %22, !dbg !36

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4, !dbg !37
  %21 = mul nsw i32 %20, 2, !dbg !38
  store i32 %21, i32* %3, align 4, !dbg !39
  br label %25, !dbg !40

22:                                               ; preds = %16
  %23 = load i32, i32* %2, align 4, !dbg !41
  %24 = add nsw i32 %23, 10, !dbg !42
  store i32 %24, i32* %3, align 4, !dbg !43
  br label %25

25:                                               ; preds = %22, %19
  br label %41, !dbg !44

26:                                               ; preds = %10
  %27 = load i32, i32* %2, align 4, !dbg !45
  %28 = icmp eq i32 %27, 0, !dbg !47
  br i1 %28, label %29, label %30, !dbg !48

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4, !dbg !49
  br label %40, !dbg !51

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4, !dbg !52
  %32 = icmp sgt i32 %31, 50, !dbg !55
  br i1 %32, label %33, label %36, !dbg !56

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4, !dbg !57
  %35 = sub nsw i32 %34, 10, !dbg !58
  store i32 %35, i32* %3, align 4, !dbg !59
  br label %39, !dbg !60

36:                                               ; preds = %30
  %37 = load i32, i32* %2, align 4, !dbg !61
  %38 = mul nsw i32 %37, 2, !dbg !62
  store i32 %38, i32* %3, align 4, !dbg !63
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %29
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %3, align 4, !dbg !64
  %43 = srem i32 %42, 2, !dbg !66
  %44 = icmp ne i32 %43, 0, !dbg !67
  br i1 %44, label %45, label %46, !dbg !68

45:                                               ; preds = %41
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !69
  unreachable, !dbg !69

46:                                               ; preds = %41
  ret i32 0, !dbg !70
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
!1 = !DIFile(filename: "87.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "15494e3595361f8d02e2319779780324")
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
!16 = !DILocation(line: 6, column: 9, scope: !10)
!17 = !DILocation(line: 7, column: 24, scope: !10)
!18 = !DILocation(line: 7, column: 5, scope: !10)
!19 = !DILocation(line: 8, column: 17, scope: !10)
!20 = !DILocation(line: 8, column: 19, scope: !10)
!21 = !DILocation(line: 8, column: 27, scope: !10)
!22 = !DILocation(line: 8, column: 30, scope: !10)
!23 = !DILocation(line: 8, column: 32, scope: !10)
!24 = !DILocation(line: 0, scope: !10)
!25 = !DILocation(line: 8, column: 5, scope: !10)
!26 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 9, type: !13)
!27 = !DILocation(line: 9, column: 9, scope: !10)
!28 = !DILocation(line: 10, column: 8, scope: !29)
!29 = distinct !DILexicalBlock(scope: !10, file: !1, line: 10, column: 8)
!30 = !DILocation(line: 10, column: 10, scope: !29)
!31 = !DILocation(line: 10, column: 8, scope: !10)
!32 = !DILocation(line: 11, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 11, column: 12)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 10, column: 15)
!35 = !DILocation(line: 11, column: 14, scope: !33)
!36 = !DILocation(line: 11, column: 12, scope: !34)
!37 = !DILocation(line: 12, column: 22, scope: !33)
!38 = !DILocation(line: 12, column: 24, scope: !33)
!39 = !DILocation(line: 12, column: 20, scope: !33)
!40 = !DILocation(line: 12, column: 13, scope: !33)
!41 = !DILocation(line: 14, column: 22, scope: !33)
!42 = !DILocation(line: 14, column: 24, scope: !33)
!43 = !DILocation(line: 14, column: 20, scope: !33)
!44 = !DILocation(line: 15, column: 5, scope: !34)
!45 = !DILocation(line: 15, column: 15, scope: !46)
!46 = distinct !DILexicalBlock(scope: !29, file: !1, line: 15, column: 15)
!47 = !DILocation(line: 15, column: 17, scope: !46)
!48 = !DILocation(line: 15, column: 15, scope: !29)
!49 = !DILocation(line: 16, column: 16, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 15, column: 23)
!51 = !DILocation(line: 17, column: 5, scope: !50)
!52 = !DILocation(line: 18, column: 12, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 18, column: 12)
!54 = distinct !DILexicalBlock(scope: !46, file: !1, line: 17, column: 12)
!55 = !DILocation(line: 18, column: 14, scope: !53)
!56 = !DILocation(line: 18, column: 12, scope: !54)
!57 = !DILocation(line: 19, column: 22, scope: !53)
!58 = !DILocation(line: 19, column: 24, scope: !53)
!59 = !DILocation(line: 19, column: 20, scope: !53)
!60 = !DILocation(line: 19, column: 13, scope: !53)
!61 = !DILocation(line: 21, column: 22, scope: !53)
!62 = !DILocation(line: 21, column: 24, scope: !53)
!63 = !DILocation(line: 21, column: 20, scope: !53)
!64 = !DILocation(line: 23, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !10, file: !1, line: 23, column: 8)
!66 = !DILocation(line: 23, column: 15, scope: !65)
!67 = !DILocation(line: 23, column: 19, scope: !65)
!68 = !DILocation(line: 23, column: 8, scope: !10)
!69 = !DILocation(line: 24, column: 9, scope: !65)
!70 = !DILocation(line: 25, column: 5, scope: !10)
