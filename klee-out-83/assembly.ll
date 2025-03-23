; ModuleID = '84.bc'
source_filename = "84.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"84.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @abs_val(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  %3 = load i32, i32* %2, align 4, !dbg !17
  %4 = icmp slt i32 %3, 0, !dbg !18
  br i1 %4, label %5, label %8, !dbg !19

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !20
  %7 = sub nsw i32 0, %6, !dbg !21
  br label %10, !dbg !19

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4, !dbg !22
  br label %10, !dbg !19

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ], !dbg !19
  ret i32 %11, !dbg !23
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sign(i32 noundef %0) #0 !dbg !24 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !25, metadata !DIExpression()), !dbg !26
  %4 = load i32, i32* %3, align 4, !dbg !27
  %5 = icmp sgt i32 %4, 0, !dbg !29
  br i1 %5, label %6, label %7, !dbg !30

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !31
  br label %12, !dbg !31

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !32
  %9 = icmp slt i32 %8, 0, !dbg !34
  br i1 %9, label %10, label %11, !dbg !35

10:                                               ; preds = %7
  store i32 -1, i32* %2, align 4, !dbg !36
  br label %12, !dbg !36

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4, !dbg !37
  br label %12, !dbg !37

12:                                               ; preds = %11, %10, %6
  %13 = load i32, i32* %2, align 4, !dbg !38
  ret i32 %13, !dbg !38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !39 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !42, metadata !DIExpression()), !dbg !43
  %5 = bitcast i32* %2 to i8*, !dbg !44
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %3, metadata !46, metadata !DIExpression()), !dbg !47
  %6 = load i32, i32* %2, align 4, !dbg !48
  %7 = call i32 @abs_val(i32 noundef %6), !dbg !49
  store i32 %7, i32* %3, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %4, metadata !50, metadata !DIExpression()), !dbg !51
  %8 = load i32, i32* %2, align 4, !dbg !52
  %9 = call i32 @sign(i32 noundef %8), !dbg !53
  store i32 %9, i32* %4, align 4, !dbg !51
  %10 = load i32, i32* %2, align 4, !dbg !54
  %11 = icmp slt i32 %10, 0, !dbg !56
  br i1 %11, label %12, label %18, !dbg !57

12:                                               ; preds = %0
  %13 = load i32, i32* %3, align 4, !dbg !58
  %14 = load i32, i32* %2, align 4, !dbg !59
  %15 = sub nsw i32 0, %14, !dbg !60
  %16 = icmp ne i32 %13, %15, !dbg !61
  br i1 %16, label %17, label %18, !dbg !62

17:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 21, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !63
  unreachable, !dbg !63

18:                                               ; preds = %12, %0
  %19 = load i32, i32* %2, align 4, !dbg !64
  %20 = icmp sge i32 %19, 0, !dbg !66
  br i1 %20, label %21, label %26, !dbg !67

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4, !dbg !68
  %23 = load i32, i32* %2, align 4, !dbg !69
  %24 = icmp ne i32 %22, %23, !dbg !70
  br i1 %24, label %25, label %26, !dbg !71

25:                                               ; preds = %21
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !72
  unreachable, !dbg !72

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %2, align 4, !dbg !73
  %28 = icmp sgt i32 %27, 0, !dbg !75
  br i1 %28, label %29, label %33, !dbg !76

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4, !dbg !77
  %31 = icmp ne i32 %30, 1, !dbg !78
  br i1 %31, label %32, label %33, !dbg !79

32:                                               ; preds = %29
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !80
  unreachable, !dbg !80

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %2, align 4, !dbg !81
  %35 = icmp slt i32 %34, 0, !dbg !83
  br i1 %35, label %36, label %40, !dbg !84

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4, !dbg !85
  %38 = icmp ne i32 %37, -1, !dbg !86
  br i1 %38, label %39, label %40, !dbg !87

39:                                               ; preds = %36
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !88
  unreachable, !dbg !88

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %2, align 4, !dbg !89
  %42 = icmp eq i32 %41, 0, !dbg !91
  br i1 %42, label %43, label %47, !dbg !92

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4, !dbg !93
  %45 = icmp ne i32 %44, 0, !dbg !94
  br i1 %45, label %46, label %47, !dbg !95

46:                                               ; preds = %43
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !96
  unreachable, !dbg !96

47:                                               ; preds = %43, %40
  ret i32 0, !dbg !97
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

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
!1 = !DIFile(filename: "84.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "d0162a699afa3e2c0de6bcc7c313edf8")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "abs_val", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 17, scope: !10)
!17 = !DILocation(line: 6, column: 13, scope: !10)
!18 = !DILocation(line: 6, column: 15, scope: !10)
!19 = !DILocation(line: 6, column: 12, scope: !10)
!20 = !DILocation(line: 6, column: 23, scope: !10)
!21 = !DILocation(line: 6, column: 22, scope: !10)
!22 = !DILocation(line: 6, column: 27, scope: !10)
!23 = !DILocation(line: 6, column: 5, scope: !10)
!24 = distinct !DISubprogram(name: "sign", scope: !1, file: !1, line: 9, type: !11, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!25 = !DILocalVariable(name: "x", arg: 1, scope: !24, file: !1, line: 9, type: !13)
!26 = !DILocation(line: 9, column: 14, scope: !24)
!27 = !DILocation(line: 10, column: 8, scope: !28)
!28 = distinct !DILexicalBlock(scope: !24, file: !1, line: 10, column: 8)
!29 = !DILocation(line: 10, column: 10, scope: !28)
!30 = !DILocation(line: 10, column: 8, scope: !24)
!31 = !DILocation(line: 10, column: 15, scope: !28)
!32 = !DILocation(line: 11, column: 8, scope: !33)
!33 = distinct !DILexicalBlock(scope: !24, file: !1, line: 11, column: 8)
!34 = !DILocation(line: 11, column: 10, scope: !33)
!35 = !DILocation(line: 11, column: 8, scope: !24)
!36 = !DILocation(line: 11, column: 15, scope: !33)
!37 = !DILocation(line: 12, column: 5, scope: !24)
!38 = !DILocation(line: 13, column: 1, scope: !24)
!39 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !40, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!40 = !DISubroutineType(types: !41)
!41 = !{!13}
!42 = !DILocalVariable(name: "x", scope: !39, file: !1, line: 16, type: !13)
!43 = !DILocation(line: 16, column: 9, scope: !39)
!44 = !DILocation(line: 17, column: 24, scope: !39)
!45 = !DILocation(line: 17, column: 5, scope: !39)
!46 = !DILocalVariable(name: "a", scope: !39, file: !1, line: 18, type: !13)
!47 = !DILocation(line: 18, column: 9, scope: !39)
!48 = !DILocation(line: 18, column: 21, scope: !39)
!49 = !DILocation(line: 18, column: 13, scope: !39)
!50 = !DILocalVariable(name: "s", scope: !39, file: !1, line: 19, type: !13)
!51 = !DILocation(line: 19, column: 9, scope: !39)
!52 = !DILocation(line: 19, column: 18, scope: !39)
!53 = !DILocation(line: 19, column: 13, scope: !39)
!54 = !DILocation(line: 20, column: 8, scope: !55)
!55 = distinct !DILexicalBlock(scope: !39, file: !1, line: 20, column: 8)
!56 = !DILocation(line: 20, column: 10, scope: !55)
!57 = !DILocation(line: 20, column: 14, scope: !55)
!58 = !DILocation(line: 20, column: 17, scope: !55)
!59 = !DILocation(line: 20, column: 23, scope: !55)
!60 = !DILocation(line: 20, column: 22, scope: !55)
!61 = !DILocation(line: 20, column: 19, scope: !55)
!62 = !DILocation(line: 20, column: 8, scope: !39)
!63 = !DILocation(line: 21, column: 9, scope: !55)
!64 = !DILocation(line: 22, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !39, file: !1, line: 22, column: 8)
!66 = !DILocation(line: 22, column: 10, scope: !65)
!67 = !DILocation(line: 22, column: 15, scope: !65)
!68 = !DILocation(line: 22, column: 18, scope: !65)
!69 = !DILocation(line: 22, column: 23, scope: !65)
!70 = !DILocation(line: 22, column: 20, scope: !65)
!71 = !DILocation(line: 22, column: 8, scope: !39)
!72 = !DILocation(line: 23, column: 9, scope: !65)
!73 = !DILocation(line: 24, column: 8, scope: !74)
!74 = distinct !DILexicalBlock(scope: !39, file: !1, line: 24, column: 8)
!75 = !DILocation(line: 24, column: 10, scope: !74)
!76 = !DILocation(line: 24, column: 14, scope: !74)
!77 = !DILocation(line: 24, column: 17, scope: !74)
!78 = !DILocation(line: 24, column: 19, scope: !74)
!79 = !DILocation(line: 24, column: 8, scope: !39)
!80 = !DILocation(line: 25, column: 9, scope: !74)
!81 = !DILocation(line: 26, column: 8, scope: !82)
!82 = distinct !DILexicalBlock(scope: !39, file: !1, line: 26, column: 8)
!83 = !DILocation(line: 26, column: 10, scope: !82)
!84 = !DILocation(line: 26, column: 14, scope: !82)
!85 = !DILocation(line: 26, column: 17, scope: !82)
!86 = !DILocation(line: 26, column: 19, scope: !82)
!87 = !DILocation(line: 26, column: 8, scope: !39)
!88 = !DILocation(line: 27, column: 9, scope: !82)
!89 = !DILocation(line: 28, column: 8, scope: !90)
!90 = distinct !DILexicalBlock(scope: !39, file: !1, line: 28, column: 8)
!91 = !DILocation(line: 28, column: 10, scope: !90)
!92 = !DILocation(line: 28, column: 15, scope: !90)
!93 = !DILocation(line: 28, column: 18, scope: !90)
!94 = !DILocation(line: 28, column: 20, scope: !90)
!95 = !DILocation(line: 28, column: 8, scope: !39)
!96 = !DILocation(line: 29, column: 9, scope: !90)
!97 = !DILocation(line: 30, column: 5, scope: !39)
