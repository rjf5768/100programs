; ModuleID = '77.bc'
source_filename = "77.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"77.c\00", align 1
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
  %6 = icmp sge i32 %5, -50, !dbg !20
  br i1 %6, label %7, label %10, !dbg !21

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !22
  %9 = icmp sle i32 %8, 50, !dbg !23
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !24
  %12 = zext i1 %11 to i32, !dbg !21
  %13 = sext i32 %12 to i64, !dbg !19
  call void @klee_assume(i64 noundef %13), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %3, metadata !26, metadata !DIExpression()), !dbg !27
  %14 = load i32, i32* %2, align 4, !dbg !28
  %15 = icmp sgt i32 %14, 0, !dbg !30
  br i1 %15, label %16, label %19, !dbg !31

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4, !dbg !32
  %18 = mul nsw i32 %17, 2, !dbg !33
  store i32 %18, i32* %3, align 4, !dbg !34
  br label %27, !dbg !35

19:                                               ; preds = %10
  %20 = load i32, i32* %2, align 4, !dbg !36
  %21 = icmp slt i32 %20, 0, !dbg !38
  br i1 %21, label %22, label %25, !dbg !39

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4, !dbg !40
  %24 = sub nsw i32 0, %23, !dbg !41
  store i32 %24, i32* %3, align 4, !dbg !42
  br label %26, !dbg !43

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4, !dbg !44
  br label %26

26:                                               ; preds = %25, %22
  br label %27

27:                                               ; preds = %26, %16
  %28 = load i32, i32* %2, align 4, !dbg !45
  %29 = icmp sgt i32 %28, 0, !dbg !47
  br i1 %29, label %30, label %36, !dbg !48

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4, !dbg !49
  %32 = load i32, i32* %2, align 4, !dbg !50
  %33 = mul nsw i32 2, %32, !dbg !51
  %34 = icmp ne i32 %31, %33, !dbg !52
  br i1 %34, label %35, label %36, !dbg !53

35:                                               ; preds = %30
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 17, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !54
  unreachable, !dbg !54

36:                                               ; preds = %30, %27
  %37 = load i32, i32* %2, align 4, !dbg !55
  %38 = icmp slt i32 %37, 0, !dbg !57
  br i1 %38, label %39, label %45, !dbg !58

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4, !dbg !59
  %41 = load i32, i32* %2, align 4, !dbg !60
  %42 = sub nsw i32 0, %41, !dbg !61
  %43 = icmp ne i32 %40, %42, !dbg !62
  br i1 %43, label %44, label %45, !dbg !63

44:                                               ; preds = %39
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 19, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !64
  unreachable, !dbg !64

45:                                               ; preds = %39, %36
  ret i32 0, !dbg !65
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
!1 = !DIFile(filename: "77.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "fa92e177f414e46c7d294e9c850534c3")
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
!17 = !DILocation(line: 7, column: 24, scope: !10)
!18 = !DILocation(line: 7, column: 5, scope: !10)
!19 = !DILocation(line: 8, column: 17, scope: !10)
!20 = !DILocation(line: 8, column: 19, scope: !10)
!21 = !DILocation(line: 8, column: 26, scope: !10)
!22 = !DILocation(line: 8, column: 29, scope: !10)
!23 = !DILocation(line: 8, column: 31, scope: !10)
!24 = !DILocation(line: 0, scope: !10)
!25 = !DILocation(line: 8, column: 5, scope: !10)
!26 = !DILocalVariable(name: "y", scope: !10, file: !1, line: 9, type: !13)
!27 = !DILocation(line: 9, column: 9, scope: !10)
!28 = !DILocation(line: 10, column: 8, scope: !29)
!29 = distinct !DILexicalBlock(scope: !10, file: !1, line: 10, column: 8)
!30 = !DILocation(line: 10, column: 10, scope: !29)
!31 = !DILocation(line: 10, column: 8, scope: !10)
!32 = !DILocation(line: 11, column: 13, scope: !29)
!33 = !DILocation(line: 11, column: 15, scope: !29)
!34 = !DILocation(line: 11, column: 11, scope: !29)
!35 = !DILocation(line: 11, column: 9, scope: !29)
!36 = !DILocation(line: 12, column: 13, scope: !37)
!37 = distinct !DILexicalBlock(scope: !29, file: !1, line: 12, column: 13)
!38 = !DILocation(line: 12, column: 15, scope: !37)
!39 = !DILocation(line: 12, column: 13, scope: !29)
!40 = !DILocation(line: 13, column: 14, scope: !37)
!41 = !DILocation(line: 13, column: 13, scope: !37)
!42 = !DILocation(line: 13, column: 11, scope: !37)
!43 = !DILocation(line: 13, column: 9, scope: !37)
!44 = !DILocation(line: 15, column: 11, scope: !37)
!45 = !DILocation(line: 16, column: 8, scope: !46)
!46 = distinct !DILexicalBlock(scope: !10, file: !1, line: 16, column: 8)
!47 = !DILocation(line: 16, column: 10, scope: !46)
!48 = !DILocation(line: 16, column: 14, scope: !46)
!49 = !DILocation(line: 16, column: 17, scope: !46)
!50 = !DILocation(line: 16, column: 26, scope: !46)
!51 = !DILocation(line: 16, column: 24, scope: !46)
!52 = !DILocation(line: 16, column: 19, scope: !46)
!53 = !DILocation(line: 16, column: 8, scope: !10)
!54 = !DILocation(line: 17, column: 9, scope: !46)
!55 = !DILocation(line: 18, column: 8, scope: !56)
!56 = distinct !DILexicalBlock(scope: !10, file: !1, line: 18, column: 8)
!57 = !DILocation(line: 18, column: 10, scope: !56)
!58 = !DILocation(line: 18, column: 14, scope: !56)
!59 = !DILocation(line: 18, column: 17, scope: !56)
!60 = !DILocation(line: 18, column: 23, scope: !56)
!61 = !DILocation(line: 18, column: 22, scope: !56)
!62 = !DILocation(line: 18, column: 19, scope: !56)
!63 = !DILocation(line: 18, column: 8, scope: !10)
!64 = !DILocation(line: 19, column: 9, scope: !56)
!65 = !DILocation(line: 20, column: 5, scope: !10)
