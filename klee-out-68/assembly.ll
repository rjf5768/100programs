; ModuleID = '69.bc'
source_filename = "69.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"69.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib_recursive(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !DIExpression()), !dbg !16
  %4 = load i32, i32* %3, align 4, !dbg !17
  %5 = icmp sle i32 %4, 1, !dbg !19
  br i1 %5, label %6, label %8, !dbg !20

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !21
  store i32 %7, i32* %2, align 4, !dbg !22
  br label %16, !dbg !22

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4, !dbg !23
  %10 = sub nsw i32 %9, 1, !dbg !24
  %11 = call i32 @fib_recursive(i32 noundef %10), !dbg !25
  %12 = load i32, i32* %3, align 4, !dbg !26
  %13 = sub nsw i32 %12, 2, !dbg !27
  %14 = call i32 @fib_recursive(i32 noundef %13), !dbg !28
  %15 = add nsw i32 %11, %14, !dbg !29
  store i32 %15, i32* %2, align 4, !dbg !30
  br label %16, !dbg !30

16:                                               ; preds = %8, %6
  %17 = load i32, i32* %2, align 4, !dbg !31
  ret i32 %17, !dbg !31
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib_iterative(i32 noundef %0) #0 !dbg !32 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !33, metadata !DIExpression()), !dbg !34
  %8 = load i32, i32* %3, align 4, !dbg !35
  %9 = icmp sle i32 %8, 1, !dbg !37
  br i1 %9, label %10, label %12, !dbg !38

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4, !dbg !39
  store i32 %11, i32* %2, align 4, !dbg !40
  br label %28, !dbg !40

12:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !41, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %4, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %5, metadata !43, metadata !DIExpression()), !dbg !44
  store i32 1, i32* %5, align 4, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %6, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %7, metadata !47, metadata !DIExpression()), !dbg !49
  store i32 2, i32* %7, align 4, !dbg !49
  br label %13, !dbg !50

13:                                               ; preds = %23, %12
  %14 = load i32, i32* %7, align 4, !dbg !51
  %15 = load i32, i32* %3, align 4, !dbg !53
  %16 = icmp sle i32 %14, %15, !dbg !54
  br i1 %16, label %17, label %26, !dbg !55

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4, !dbg !56
  %19 = load i32, i32* %5, align 4, !dbg !58
  %20 = add nsw i32 %18, %19, !dbg !59
  store i32 %20, i32* %6, align 4, !dbg !60
  %21 = load i32, i32* %5, align 4, !dbg !61
  store i32 %21, i32* %4, align 4, !dbg !62
  %22 = load i32, i32* %6, align 4, !dbg !63
  store i32 %22, i32* %5, align 4, !dbg !64
  br label %23, !dbg !65

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4, !dbg !66
  %25 = add nsw i32 %24, 1, !dbg !66
  store i32 %25, i32* %7, align 4, !dbg !66
  br label %13, !dbg !67, !llvm.loop !68

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4, !dbg !71
  store i32 %27, i32* %2, align 4, !dbg !72
  br label %28, !dbg !72

28:                                               ; preds = %26, %10
  %29 = load i32, i32* %2, align 4, !dbg !73
  ret i32 %29, !dbg !73
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !74 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !77, metadata !DIExpression()), !dbg !78
  %5 = bitcast i32* %2 to i8*, !dbg !79
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !80
  %6 = load i32, i32* %2, align 4, !dbg !81
  %7 = icmp sge i32 %6, 0, !dbg !82
  br i1 %7, label %8, label %11, !dbg !83

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4, !dbg !84
  %10 = icmp sle i32 %9, 20, !dbg !85
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ], !dbg !86
  %13 = zext i1 %12 to i32, !dbg !83
  %14 = sext i32 %13 to i64, !dbg !81
  call void @klee_assume(i64 noundef %14), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %3, metadata !88, metadata !DIExpression()), !dbg !89
  %15 = load i32, i32* %2, align 4, !dbg !90
  %16 = call i32 @fib_recursive(i32 noundef %15), !dbg !91
  store i32 %16, i32* %3, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %4, metadata !92, metadata !DIExpression()), !dbg !93
  %17 = load i32, i32* %2, align 4, !dbg !94
  %18 = call i32 @fib_iterative(i32 noundef %17), !dbg !95
  store i32 %18, i32* %4, align 4, !dbg !93
  %19 = load i32, i32* %3, align 4, !dbg !96
  %20 = load i32, i32* %4, align 4, !dbg !98
  %21 = icmp ne i32 %19, %20, !dbg !99
  br i1 %21, label %22, label %23, !dbg !100

22:                                               ; preds = %11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !101
  unreachable, !dbg !101

23:                                               ; preds = %11
  ret i32 0, !dbg !102
}

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
!1 = !DIFile(filename: "69.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "f75273a03450599d95a8f0d1dc9f85e6")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "fib_recursive", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 23, scope: !10)
!17 = !DILocation(line: 6, column: 8, scope: !18)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 8)
!19 = !DILocation(line: 6, column: 10, scope: !18)
!20 = !DILocation(line: 6, column: 8, scope: !10)
!21 = !DILocation(line: 6, column: 23, scope: !18)
!22 = !DILocation(line: 6, column: 16, scope: !18)
!23 = !DILocation(line: 7, column: 26, scope: !10)
!24 = !DILocation(line: 7, column: 27, scope: !10)
!25 = !DILocation(line: 7, column: 12, scope: !10)
!26 = !DILocation(line: 7, column: 47, scope: !10)
!27 = !DILocation(line: 7, column: 48, scope: !10)
!28 = !DILocation(line: 7, column: 33, scope: !10)
!29 = !DILocation(line: 7, column: 31, scope: !10)
!30 = !DILocation(line: 7, column: 5, scope: !10)
!31 = !DILocation(line: 8, column: 1, scope: !10)
!32 = distinct !DISubprogram(name: "fib_iterative", scope: !1, file: !1, line: 10, type: !11, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!33 = !DILocalVariable(name: "n", arg: 1, scope: !32, file: !1, line: 10, type: !13)
!34 = !DILocation(line: 10, column: 23, scope: !32)
!35 = !DILocation(line: 11, column: 8, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !1, line: 11, column: 8)
!37 = !DILocation(line: 11, column: 10, scope: !36)
!38 = !DILocation(line: 11, column: 8, scope: !32)
!39 = !DILocation(line: 11, column: 23, scope: !36)
!40 = !DILocation(line: 11, column: 16, scope: !36)
!41 = !DILocalVariable(name: "a", scope: !32, file: !1, line: 12, type: !13)
!42 = !DILocation(line: 12, column: 9, scope: !32)
!43 = !DILocalVariable(name: "b", scope: !32, file: !1, line: 12, type: !13)
!44 = !DILocation(line: 12, column: 16, scope: !32)
!45 = !DILocalVariable(name: "c", scope: !32, file: !1, line: 12, type: !13)
!46 = !DILocation(line: 12, column: 23, scope: !32)
!47 = !DILocalVariable(name: "i", scope: !48, file: !1, line: 13, type: !13)
!48 = distinct !DILexicalBlock(scope: !32, file: !1, line: 13, column: 5)
!49 = !DILocation(line: 13, column: 14, scope: !48)
!50 = !DILocation(line: 13, column: 10, scope: !48)
!51 = !DILocation(line: 13, column: 21, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 13, column: 5)
!53 = !DILocation(line: 13, column: 26, scope: !52)
!54 = !DILocation(line: 13, column: 23, scope: !52)
!55 = !DILocation(line: 13, column: 5, scope: !48)
!56 = !DILocation(line: 14, column: 13, scope: !57)
!57 = distinct !DILexicalBlock(scope: !52, file: !1, line: 13, column: 33)
!58 = !DILocation(line: 14, column: 17, scope: !57)
!59 = !DILocation(line: 14, column: 15, scope: !57)
!60 = !DILocation(line: 14, column: 11, scope: !57)
!61 = !DILocation(line: 15, column: 13, scope: !57)
!62 = !DILocation(line: 15, column: 11, scope: !57)
!63 = !DILocation(line: 16, column: 13, scope: !57)
!64 = !DILocation(line: 16, column: 11, scope: !57)
!65 = !DILocation(line: 17, column: 5, scope: !57)
!66 = !DILocation(line: 13, column: 30, scope: !52)
!67 = !DILocation(line: 13, column: 5, scope: !52)
!68 = distinct !{!68, !55, !69, !70}
!69 = !DILocation(line: 17, column: 5, scope: !48)
!70 = !{!"llvm.loop.mustprogress"}
!71 = !DILocation(line: 18, column: 12, scope: !32)
!72 = !DILocation(line: 18, column: 5, scope: !32)
!73 = !DILocation(line: 19, column: 1, scope: !32)
!74 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 21, type: !75, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!75 = !DISubroutineType(types: !76)
!76 = !{!13}
!77 = !DILocalVariable(name: "n", scope: !74, file: !1, line: 22, type: !13)
!78 = !DILocation(line: 22, column: 9, scope: !74)
!79 = !DILocation(line: 23, column: 24, scope: !74)
!80 = !DILocation(line: 23, column: 5, scope: !74)
!81 = !DILocation(line: 24, column: 17, scope: !74)
!82 = !DILocation(line: 24, column: 19, scope: !74)
!83 = !DILocation(line: 24, column: 24, scope: !74)
!84 = !DILocation(line: 24, column: 27, scope: !74)
!85 = !DILocation(line: 24, column: 29, scope: !74)
!86 = !DILocation(line: 0, scope: !74)
!87 = !DILocation(line: 24, column: 5, scope: !74)
!88 = !DILocalVariable(name: "rec", scope: !74, file: !1, line: 26, type: !13)
!89 = !DILocation(line: 26, column: 9, scope: !74)
!90 = !DILocation(line: 26, column: 29, scope: !74)
!91 = !DILocation(line: 26, column: 15, scope: !74)
!92 = !DILocalVariable(name: "iter", scope: !74, file: !1, line: 27, type: !13)
!93 = !DILocation(line: 27, column: 9, scope: !74)
!94 = !DILocation(line: 27, column: 30, scope: !74)
!95 = !DILocation(line: 27, column: 16, scope: !74)
!96 = !DILocation(line: 29, column: 8, scope: !97)
!97 = distinct !DILexicalBlock(scope: !74, file: !1, line: 29, column: 8)
!98 = !DILocation(line: 29, column: 15, scope: !97)
!99 = !DILocation(line: 29, column: 12, scope: !97)
!100 = !DILocation(line: 29, column: 8, scope: !74)
!101 = !DILocation(line: 30, column: 9, scope: !97)
!102 = !DILocation(line: 31, column: 5, scope: !74)
