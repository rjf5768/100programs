; ModuleID = '48.bc'
source_filename = "48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"48.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log2_floor(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %3, align 4, !dbg !18
  br label %4, !dbg !19

4:                                                ; preds = %7, %1
  %5 = load i32, i32* %2, align 4, !dbg !20
  %6 = icmp sgt i32 %5, 1, !dbg !21
  br i1 %6, label %7, label %12, !dbg !19

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4, !dbg !22
  %9 = sdiv i32 %8, 2, !dbg !22
  store i32 %9, i32* %2, align 4, !dbg !22
  %10 = load i32, i32* %3, align 4, !dbg !24
  %11 = add nsw i32 %10, 1, !dbg !24
  store i32 %11, i32* %3, align 4, !dbg !24
  br label %4, !dbg !19, !llvm.loop !25

12:                                               ; preds = %4
  %13 = load i32, i32* %3, align 4, !dbg !28
  ret i32 %13, !dbg !29
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !30 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %3, metadata !35, metadata !DIExpression()), !dbg !36
  %4 = bitcast i32* %2 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !38
  %5 = load i32, i32* %2, align 4, !dbg !39
  %6 = icmp sge i32 %5, 1, !dbg !40
  br i1 %6, label %7, label %10, !dbg !41

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !42
  %9 = icmp sle i32 %8, 1024, !dbg !43
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !44
  %12 = zext i1 %11 to i32, !dbg !41
  %13 = sext i32 %12 to i64, !dbg !39
  call void @klee_assume(i64 noundef %13), !dbg !45
  %14 = load i32, i32* %2, align 4, !dbg !46
  %15 = call i32 @log2_floor(i32 noundef %14), !dbg !47
  store i32 %15, i32* %3, align 4, !dbg !48
  %16 = load i32, i32* %3, align 4, !dbg !49
  %17 = icmp slt i32 %16, 0, !dbg !51
  br i1 %17, label %18, label %19, !dbg !52

18:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 20, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !53
  unreachable, !dbg !53

19:                                               ; preds = %10
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
!1 = !DIFile(filename: "48.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "a3cc11c7a6923a4b2dfa3b19e7f40067")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "log2_floor", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 20, scope: !10)
!17 = !DILocalVariable(name: "log", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 7, scope: !10)
!19 = !DILocation(line: 7, column: 3, scope: !10)
!20 = !DILocation(line: 7, column: 9, scope: !10)
!21 = !DILocation(line: 7, column: 11, scope: !10)
!22 = !DILocation(line: 8, column: 7, scope: !23)
!23 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 16)
!24 = !DILocation(line: 9, column: 8, scope: !23)
!25 = distinct !{!25, !19, !26, !27}
!26 = !DILocation(line: 10, column: 3, scope: !10)
!27 = !{!"llvm.loop.mustprogress"}
!28 = !DILocation(line: 11, column: 10, scope: !10)
!29 = !DILocation(line: 11, column: 3, scope: !10)
!30 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !31, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!31 = !DISubroutineType(types: !32)
!32 = !{!13}
!33 = !DILocalVariable(name: "n", scope: !30, file: !1, line: 15, type: !13)
!34 = !DILocation(line: 15, column: 7, scope: !30)
!35 = !DILocalVariable(name: "log_val", scope: !30, file: !1, line: 15, type: !13)
!36 = !DILocation(line: 15, column: 10, scope: !30)
!37 = !DILocation(line: 16, column: 22, scope: !30)
!38 = !DILocation(line: 16, column: 3, scope: !30)
!39 = !DILocation(line: 17, column: 15, scope: !30)
!40 = !DILocation(line: 17, column: 17, scope: !30)
!41 = !DILocation(line: 17, column: 22, scope: !30)
!42 = !DILocation(line: 17, column: 25, scope: !30)
!43 = !DILocation(line: 17, column: 27, scope: !30)
!44 = !DILocation(line: 0, scope: !30)
!45 = !DILocation(line: 17, column: 3, scope: !30)
!46 = !DILocation(line: 18, column: 24, scope: !30)
!47 = !DILocation(line: 18, column: 13, scope: !30)
!48 = !DILocation(line: 18, column: 11, scope: !30)
!49 = !DILocation(line: 19, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !30, file: !1, line: 19, column: 6)
!51 = !DILocation(line: 19, column: 14, scope: !50)
!52 = !DILocation(line: 19, column: 6, scope: !30)
!53 = !DILocation(line: 20, column: 5, scope: !50)
!54 = !DILocation(line: 21, column: 3, scope: !30)
