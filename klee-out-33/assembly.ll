; ModuleID = '34.bc'
source_filename = "34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"34.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_perfect_square(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !DIExpression()), !dbg !16
  %5 = load i32, i32* %3, align 4, !dbg !17
  %6 = icmp slt i32 %5, 0, !dbg !19
  br i1 %6, label %7, label %8, !dbg !20

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !21
  br label %25, !dbg !21

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %4, align 4, !dbg !23
  br label %9, !dbg !24

9:                                                ; preds = %15, %8
  %10 = load i32, i32* %4, align 4, !dbg !25
  %11 = load i32, i32* %4, align 4, !dbg !26
  %12 = mul nsw i32 %10, %11, !dbg !27
  %13 = load i32, i32* %3, align 4, !dbg !28
  %14 = icmp slt i32 %12, %13, !dbg !29
  br i1 %14, label %15, label %18, !dbg !24

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4, !dbg !30
  %17 = add nsw i32 %16, 1, !dbg !30
  store i32 %17, i32* %4, align 4, !dbg !30
  br label %9, !dbg !24, !llvm.loop !31

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4, !dbg !33
  %20 = load i32, i32* %4, align 4, !dbg !34
  %21 = mul nsw i32 %19, %20, !dbg !35
  %22 = load i32, i32* %3, align 4, !dbg !36
  %23 = icmp eq i32 %21, %22, !dbg !37
  %24 = zext i1 %23 to i32, !dbg !37
  store i32 %24, i32* %2, align 4, !dbg !38
  br label %25, !dbg !38

25:                                               ; preds = %18, %7
  %26 = load i32, i32* %2, align 4, !dbg !39
  ret i32 %26, !dbg !39
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !40 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !43, metadata !DIExpression()), !dbg !44
  %4 = bitcast i32* %2 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !46
  %5 = load i32, i32* %2, align 4, !dbg !47
  %6 = icmp sge i32 %5, 0, !dbg !48
  br i1 %6, label %7, label %10, !dbg !49

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !50
  %9 = icmp sle i32 %8, 100, !dbg !51
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !52
  %12 = zext i1 %11 to i32, !dbg !49
  %13 = sext i32 %12 to i64, !dbg !47
  call void @klee_assume(i64 noundef %13), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %3, metadata !54, metadata !DIExpression()), !dbg !55
  %14 = load i32, i32* %2, align 4, !dbg !56
  %15 = call i32 @is_perfect_square(i32 noundef %14), !dbg !57
  store i32 %15, i32* %3, align 4, !dbg !55
  %16 = load i32, i32* %3, align 4, !dbg !58
  %17 = icmp ne i32 %16, 0, !dbg !58
  br i1 %17, label %18, label %23, !dbg !60

18:                                               ; preds = %10
  %19 = load i32, i32* %2, align 4, !dbg !61
  %20 = call i32 @is_perfect_square(i32 noundef %19), !dbg !62
  %21 = icmp ne i32 %20, 0, !dbg !62
  br i1 %21, label %23, label %22, !dbg !63

22:                                               ; preds = %18
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 18, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !64
  unreachable, !dbg !64

23:                                               ; preds = %18, %10
  ret i32 0, !dbg !65
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
!1 = !DIFile(filename: "34.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "a47b3f1a862a13cf9f40b5e57d199869")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "is_perfect_square", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 27, scope: !10)
!17 = !DILocation(line: 6, column: 6, scope: !18)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 6)
!19 = !DILocation(line: 6, column: 8, scope: !18)
!20 = !DILocation(line: 6, column: 6, scope: !10)
!21 = !DILocation(line: 6, column: 13, scope: !18)
!22 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 7, type: !13)
!23 = !DILocation(line: 7, column: 7, scope: !10)
!24 = !DILocation(line: 8, column: 3, scope: !10)
!25 = !DILocation(line: 8, column: 9, scope: !10)
!26 = !DILocation(line: 8, column: 13, scope: !10)
!27 = !DILocation(line: 8, column: 11, scope: !10)
!28 = !DILocation(line: 8, column: 17, scope: !10)
!29 = !DILocation(line: 8, column: 15, scope: !10)
!30 = !DILocation(line: 8, column: 21, scope: !10)
!31 = distinct !{!31, !24, !30, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !DILocation(line: 9, column: 11, scope: !10)
!34 = !DILocation(line: 9, column: 15, scope: !10)
!35 = !DILocation(line: 9, column: 13, scope: !10)
!36 = !DILocation(line: 9, column: 20, scope: !10)
!37 = !DILocation(line: 9, column: 17, scope: !10)
!38 = !DILocation(line: 9, column: 3, scope: !10)
!39 = !DILocation(line: 10, column: 1, scope: !10)
!40 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !41, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!41 = !DISubroutineType(types: !42)
!42 = !{!13}
!43 = !DILocalVariable(name: "n", scope: !40, file: !1, line: 13, type: !13)
!44 = !DILocation(line: 13, column: 7, scope: !40)
!45 = !DILocation(line: 14, column: 22, scope: !40)
!46 = !DILocation(line: 14, column: 3, scope: !40)
!47 = !DILocation(line: 15, column: 15, scope: !40)
!48 = !DILocation(line: 15, column: 17, scope: !40)
!49 = !DILocation(line: 15, column: 22, scope: !40)
!50 = !DILocation(line: 15, column: 25, scope: !40)
!51 = !DILocation(line: 15, column: 27, scope: !40)
!52 = !DILocation(line: 0, scope: !40)
!53 = !DILocation(line: 15, column: 3, scope: !40)
!54 = !DILocalVariable(name: "ps", scope: !40, file: !1, line: 16, type: !13)
!55 = !DILocation(line: 16, column: 7, scope: !40)
!56 = !DILocation(line: 16, column: 30, scope: !40)
!57 = !DILocation(line: 16, column: 12, scope: !40)
!58 = !DILocation(line: 17, column: 6, scope: !59)
!59 = distinct !DILexicalBlock(scope: !40, file: !1, line: 17, column: 6)
!60 = !DILocation(line: 17, column: 9, scope: !59)
!61 = !DILocation(line: 17, column: 31, scope: !59)
!62 = !DILocation(line: 17, column: 13, scope: !59)
!63 = !DILocation(line: 17, column: 6, scope: !40)
!64 = !DILocation(line: 18, column: 5, scope: !59)
!65 = !DILocation(line: 19, column: 3, scope: !40)
