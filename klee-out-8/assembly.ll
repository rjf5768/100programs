; ModuleID = '9.bc'
source_filename = "9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"9.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @collatz_steps(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %3, align 4, !dbg !18
  br label %4, !dbg !19

4:                                                ; preds = %23, %1
  %5 = load i32, i32* %2, align 4, !dbg !20
  %6 = icmp ne i32 %5, 1, !dbg !21
  br i1 %6, label %7, label %10, !dbg !22

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4, !dbg !23
  %9 = icmp slt i32 %8, 1000, !dbg !24
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi i1 [ false, %4 ], [ %9, %7 ], !dbg !25
  br i1 %11, label %12, label %26, !dbg !19

12:                                               ; preds = %10
  %13 = load i32, i32* %2, align 4, !dbg !26
  %14 = srem i32 %13, 2, !dbg !29
  %15 = icmp eq i32 %14, 0, !dbg !30
  br i1 %15, label %16, label %19, !dbg !31

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4, !dbg !32
  %18 = sdiv i32 %17, 2, !dbg !32
  store i32 %18, i32* %2, align 4, !dbg !32
  br label %23, !dbg !33

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4, !dbg !34
  %21 = mul nsw i32 3, %20, !dbg !35
  %22 = add nsw i32 %21, 1, !dbg !36
  store i32 %22, i32* %2, align 4, !dbg !37
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %3, align 4, !dbg !38
  %25 = add nsw i32 %24, 1, !dbg !38
  store i32 %25, i32* %3, align 4, !dbg !38
  br label %4, !dbg !19, !llvm.loop !39

26:                                               ; preds = %10
  %27 = load i32, i32* %3, align 4, !dbg !42
  ret i32 %27, !dbg !43
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !44 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !47, metadata !DIExpression()), !dbg !48
  %4 = bitcast i32* %2 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %5 = load i32, i32* %2, align 4, !dbg !51
  %6 = icmp sgt i32 %5, 0, !dbg !52
  %7 = zext i1 %6 to i32, !dbg !52
  %8 = sext i32 %7 to i64, !dbg !51
  call void @klee_assume(i64 noundef %8), !dbg !53
  %9 = load i32, i32* %2, align 4, !dbg !54
  %10 = icmp sle i32 %9, 100, !dbg !55
  %11 = zext i1 %10 to i32, !dbg !55
  %12 = sext i32 %11 to i64, !dbg !54
  call void @klee_assume(i64 noundef %12), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %3, metadata !57, metadata !DIExpression()), !dbg !58
  %13 = load i32, i32* %2, align 4, !dbg !59
  %14 = call i32 @collatz_steps(i32 noundef %13), !dbg !60
  store i32 %14, i32* %3, align 4, !dbg !58
  %15 = load i32, i32* %3, align 4, !dbg !61
  %16 = icmp sge i32 %15, 1000, !dbg !63
  br i1 %16, label %17, label %18, !dbg !64

17:                                               ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !65
  unreachable, !dbg !65

18:                                               ; preds = %0
  ret i32 0, !dbg !66
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
!1 = !DIFile(filename: "9.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "048d7819c401601480d41ccd32fb6e29")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "collatz_steps", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 23, scope: !10)
!17 = !DILocalVariable(name: "steps", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 7, scope: !10)
!19 = !DILocation(line: 7, column: 3, scope: !10)
!20 = !DILocation(line: 7, column: 9, scope: !10)
!21 = !DILocation(line: 7, column: 11, scope: !10)
!22 = !DILocation(line: 7, column: 16, scope: !10)
!23 = !DILocation(line: 7, column: 19, scope: !10)
!24 = !DILocation(line: 7, column: 25, scope: !10)
!25 = !DILocation(line: 0, scope: !10)
!26 = !DILocation(line: 8, column: 8, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 8, column: 8)
!28 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 33)
!29 = !DILocation(line: 8, column: 10, scope: !27)
!30 = !DILocation(line: 8, column: 14, scope: !27)
!31 = !DILocation(line: 8, column: 8, scope: !28)
!32 = !DILocation(line: 9, column: 9, scope: !27)
!33 = !DILocation(line: 9, column: 7, scope: !27)
!34 = !DILocation(line: 11, column: 15, scope: !27)
!35 = !DILocation(line: 11, column: 13, scope: !27)
!36 = !DILocation(line: 11, column: 17, scope: !27)
!37 = !DILocation(line: 11, column: 9, scope: !27)
!38 = !DILocation(line: 12, column: 10, scope: !28)
!39 = distinct !{!39, !19, !40, !41}
!40 = !DILocation(line: 13, column: 3, scope: !10)
!41 = !{!"llvm.loop.mustprogress"}
!42 = !DILocation(line: 14, column: 10, scope: !10)
!43 = !DILocation(line: 14, column: 3, scope: !10)
!44 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 17, type: !45, scopeLine: 17, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!45 = !DISubroutineType(types: !46)
!46 = !{!13}
!47 = !DILocalVariable(name: "n", scope: !44, file: !1, line: 18, type: !13)
!48 = !DILocation(line: 18, column: 7, scope: !44)
!49 = !DILocation(line: 19, column: 22, scope: !44)
!50 = !DILocation(line: 19, column: 3, scope: !44)
!51 = !DILocation(line: 20, column: 15, scope: !44)
!52 = !DILocation(line: 20, column: 17, scope: !44)
!53 = !DILocation(line: 20, column: 3, scope: !44)
!54 = !DILocation(line: 21, column: 15, scope: !44)
!55 = !DILocation(line: 21, column: 17, scope: !44)
!56 = !DILocation(line: 21, column: 3, scope: !44)
!57 = !DILocalVariable(name: "steps", scope: !44, file: !1, line: 22, type: !13)
!58 = !DILocation(line: 22, column: 7, scope: !44)
!59 = !DILocation(line: 22, column: 29, scope: !44)
!60 = !DILocation(line: 22, column: 15, scope: !44)
!61 = !DILocation(line: 23, column: 6, scope: !62)
!62 = distinct !DILexicalBlock(scope: !44, file: !1, line: 23, column: 6)
!63 = !DILocation(line: 23, column: 12, scope: !62)
!64 = !DILocation(line: 23, column: 6, scope: !44)
!65 = !DILocation(line: 24, column: 5, scope: !62)
!66 = !DILocation(line: 25, column: 3, scope: !44)
