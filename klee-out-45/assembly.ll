; ModuleID = '47.bc'
source_filename = "47.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"47.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @next_power_of_two(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 1, i32* %3, align 4, !dbg !18
  br label %4, !dbg !19

4:                                                ; preds = %8, %1
  %5 = load i32, i32* %3, align 4, !dbg !20
  %6 = load i32, i32* %2, align 4, !dbg !21
  %7 = icmp slt i32 %5, %6, !dbg !22
  br i1 %7, label %8, label %11, !dbg !19

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4, !dbg !23
  %10 = mul nsw i32 %9, 2, !dbg !23
  store i32 %10, i32* %3, align 4, !dbg !23
  br label %4, !dbg !19, !llvm.loop !24

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4, !dbg !27
  ret i32 %12, !dbg !28
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
  %9 = icmp sle i32 %8, 100, !dbg !42
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !43
  %12 = zext i1 %11 to i32, !dbg !40
  %13 = sext i32 %12 to i64, !dbg !38
  call void @klee_assume(i64 noundef %13), !dbg !44
  %14 = load i32, i32* %2, align 4, !dbg !45
  %15 = call i32 @next_power_of_two(i32 noundef %14), !dbg !46
  store i32 %15, i32* %3, align 4, !dbg !47
  %16 = load i32, i32* %3, align 4, !dbg !48
  %17 = load i32, i32* %2, align 4, !dbg !50
  %18 = icmp slt i32 %16, %17, !dbg !51
  br i1 %18, label %19, label %20, !dbg !52

19:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 18, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !53
  unreachable, !dbg !53

20:                                               ; preds = %10
  ret i32 0, !dbg !54
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
!1 = !DIFile(filename: "47.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "b95a4011430044df997af84c5be039bc")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "next_power_of_two", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 27, scope: !10)
!17 = !DILocalVariable(name: "power", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 7, scope: !10)
!19 = !DILocation(line: 7, column: 3, scope: !10)
!20 = !DILocation(line: 7, column: 9, scope: !10)
!21 = !DILocation(line: 7, column: 17, scope: !10)
!22 = !DILocation(line: 7, column: 15, scope: !10)
!23 = !DILocation(line: 8, column: 11, scope: !10)
!24 = distinct !{!24, !19, !25, !26}
!25 = !DILocation(line: 8, column: 14, scope: !10)
!26 = !{!"llvm.loop.mustprogress"}
!27 = !DILocation(line: 9, column: 10, scope: !10)
!28 = !DILocation(line: 9, column: 3, scope: !10)
!29 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !30, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!30 = !DISubroutineType(types: !31)
!31 = !{!13}
!32 = !DILocalVariable(name: "n", scope: !29, file: !1, line: 13, type: !13)
!33 = !DILocation(line: 13, column: 7, scope: !29)
!34 = !DILocalVariable(name: "next", scope: !29, file: !1, line: 13, type: !13)
!35 = !DILocation(line: 13, column: 10, scope: !29)
!36 = !DILocation(line: 14, column: 22, scope: !29)
!37 = !DILocation(line: 14, column: 3, scope: !29)
!38 = !DILocation(line: 15, column: 15, scope: !29)
!39 = !DILocation(line: 15, column: 17, scope: !29)
!40 = !DILocation(line: 15, column: 21, scope: !29)
!41 = !DILocation(line: 15, column: 24, scope: !29)
!42 = !DILocation(line: 15, column: 26, scope: !29)
!43 = !DILocation(line: 0, scope: !29)
!44 = !DILocation(line: 15, column: 3, scope: !29)
!45 = !DILocation(line: 16, column: 28, scope: !29)
!46 = !DILocation(line: 16, column: 10, scope: !29)
!47 = !DILocation(line: 16, column: 8, scope: !29)
!48 = !DILocation(line: 17, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !29, file: !1, line: 17, column: 6)
!50 = !DILocation(line: 17, column: 13, scope: !49)
!51 = !DILocation(line: 17, column: 11, scope: !49)
!52 = !DILocation(line: 17, column: 6, scope: !29)
!53 = !DILocation(line: 18, column: 5, scope: !49)
!54 = !DILocation(line: 19, column: 3, scope: !29)
