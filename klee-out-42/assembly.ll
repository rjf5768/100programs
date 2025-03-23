; ModuleID = '43.bc'
source_filename = "43.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"43.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_loop(i32 noundef %0, i32 noundef %1) #0 !dbg !10 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %5, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 1, i32* %5, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %6, metadata !21, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %6, align 4, !dbg !23
  br label %7, !dbg !24

7:                                                ; preds = %15, %2
  %8 = load i32, i32* %6, align 4, !dbg !25
  %9 = load i32, i32* %4, align 4, !dbg !27
  %10 = icmp slt i32 %8, %9, !dbg !28
  br i1 %10, label %11, label %18, !dbg !29

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4, !dbg !30
  %13 = load i32, i32* %5, align 4, !dbg !31
  %14 = mul nsw i32 %13, %12, !dbg !31
  store i32 %14, i32* %5, align 4, !dbg !31
  br label %15, !dbg !32

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4, !dbg !33
  %17 = add nsw i32 %16, 1, !dbg !33
  store i32 %17, i32* %6, align 4, !dbg !33
  br label %7, !dbg !34, !llvm.loop !35

18:                                               ; preds = %7
  %19 = load i32, i32* %5, align 4, !dbg !38
  ret i32 %19, !dbg !39
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !40 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %3, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %4, metadata !47, metadata !DIExpression()), !dbg !48
  %5 = bitcast i32* %2 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %6 = bitcast i32* %3 to i8*, !dbg !51
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !52
  %7 = load i32, i32* %3, align 4, !dbg !53
  %8 = icmp sge i32 %7, 0, !dbg !54
  br i1 %8, label %9, label %12, !dbg !55

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4, !dbg !56
  %11 = icmp sle i32 %10, 10, !dbg !57
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !58
  %14 = zext i1 %13 to i32, !dbg !55
  %15 = sext i32 %14 to i64, !dbg !53
  call void @klee_assume(i64 noundef %15), !dbg !59
  %16 = load i32, i32* %2, align 4, !dbg !60
  %17 = icmp sge i32 %16, 0, !dbg !61
  br i1 %17, label %18, label %21, !dbg !62

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4, !dbg !63
  %20 = icmp sle i32 %19, 10, !dbg !64
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i1 [ false, %12 ], [ %20, %18 ], !dbg !58
  %23 = zext i1 %22 to i32, !dbg !62
  %24 = sext i32 %23 to i64, !dbg !60
  call void @klee_assume(i64 noundef %24), !dbg !65
  %25 = load i32, i32* %2, align 4, !dbg !66
  %26 = load i32, i32* %3, align 4, !dbg !67
  %27 = call i32 @power_loop(i32 noundef %25, i32 noundef %26), !dbg !68
  store i32 %27, i32* %4, align 4, !dbg !69
  %28 = load i32, i32* %3, align 4, !dbg !70
  %29 = icmp sgt i32 %28, 0, !dbg !72
  br i1 %29, label %30, label %35, !dbg !73

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4, !dbg !74
  %32 = load i32, i32* %2, align 4, !dbg !75
  %33 = icmp slt i32 %31, %32, !dbg !76
  br i1 %33, label %34, label %35, !dbg !77

34:                                               ; preds = %30
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef 20, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !78
  unreachable, !dbg !78

35:                                               ; preds = %30, %21
  ret i32 0, !dbg !79
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
!1 = !DIFile(filename: "43.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "feb483f3b7d4f6df7a8f7eb3ececb1a4")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "power_loop", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "base", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 20, scope: !10)
!17 = !DILocalVariable(name: "exp", arg: 2, scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 5, column: 30, scope: !10)
!19 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 6, type: !13)
!20 = !DILocation(line: 6, column: 7, scope: !10)
!21 = !DILocalVariable(name: "i", scope: !22, file: !1, line: 7, type: !13)
!22 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 3)
!23 = !DILocation(line: 7, column: 12, scope: !22)
!24 = !DILocation(line: 7, column: 8, scope: !22)
!25 = !DILocation(line: 7, column: 19, scope: !26)
!26 = distinct !DILexicalBlock(scope: !22, file: !1, line: 7, column: 3)
!27 = !DILocation(line: 7, column: 23, scope: !26)
!28 = !DILocation(line: 7, column: 21, scope: !26)
!29 = !DILocation(line: 7, column: 3, scope: !22)
!30 = !DILocation(line: 8, column: 15, scope: !26)
!31 = !DILocation(line: 8, column: 12, scope: !26)
!32 = !DILocation(line: 8, column: 5, scope: !26)
!33 = !DILocation(line: 7, column: 29, scope: !26)
!34 = !DILocation(line: 7, column: 3, scope: !26)
!35 = distinct !{!35, !29, !36, !37}
!36 = !DILocation(line: 8, column: 15, scope: !22)
!37 = !{!"llvm.loop.mustprogress"}
!38 = !DILocation(line: 9, column: 10, scope: !10)
!39 = !DILocation(line: 9, column: 3, scope: !10)
!40 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !41, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!41 = !DISubroutineType(types: !42)
!42 = !{!13}
!43 = !DILocalVariable(name: "base", scope: !40, file: !1, line: 13, type: !13)
!44 = !DILocation(line: 13, column: 7, scope: !40)
!45 = !DILocalVariable(name: "exp", scope: !40, file: !1, line: 13, type: !13)
!46 = !DILocation(line: 13, column: 13, scope: !40)
!47 = !DILocalVariable(name: "result", scope: !40, file: !1, line: 13, type: !13)
!48 = !DILocation(line: 13, column: 18, scope: !40)
!49 = !DILocation(line: 14, column: 22, scope: !40)
!50 = !DILocation(line: 14, column: 3, scope: !40)
!51 = !DILocation(line: 15, column: 22, scope: !40)
!52 = !DILocation(line: 15, column: 3, scope: !40)
!53 = !DILocation(line: 16, column: 15, scope: !40)
!54 = !DILocation(line: 16, column: 19, scope: !40)
!55 = !DILocation(line: 16, column: 24, scope: !40)
!56 = !DILocation(line: 16, column: 27, scope: !40)
!57 = !DILocation(line: 16, column: 31, scope: !40)
!58 = !DILocation(line: 0, scope: !40)
!59 = !DILocation(line: 16, column: 3, scope: !40)
!60 = !DILocation(line: 17, column: 15, scope: !40)
!61 = !DILocation(line: 17, column: 20, scope: !40)
!62 = !DILocation(line: 17, column: 25, scope: !40)
!63 = !DILocation(line: 17, column: 28, scope: !40)
!64 = !DILocation(line: 17, column: 33, scope: !40)
!65 = !DILocation(line: 17, column: 3, scope: !40)
!66 = !DILocation(line: 18, column: 23, scope: !40)
!67 = !DILocation(line: 18, column: 29, scope: !40)
!68 = !DILocation(line: 18, column: 12, scope: !40)
!69 = !DILocation(line: 18, column: 10, scope: !40)
!70 = !DILocation(line: 19, column: 6, scope: !71)
!71 = distinct !DILexicalBlock(scope: !40, file: !1, line: 19, column: 6)
!72 = !DILocation(line: 19, column: 10, scope: !71)
!73 = !DILocation(line: 19, column: 14, scope: !71)
!74 = !DILocation(line: 19, column: 17, scope: !71)
!75 = !DILocation(line: 19, column: 26, scope: !71)
!76 = !DILocation(line: 19, column: 24, scope: !71)
!77 = !DILocation(line: 19, column: 6, scope: !40)
!78 = !DILocation(line: 20, column: 5, scope: !71)
!79 = !DILocation(line: 21, column: 3, scope: !40)
