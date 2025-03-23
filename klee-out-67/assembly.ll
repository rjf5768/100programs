; ModuleID = '68.bc'
source_filename = "68.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"68.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @factorial(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %4, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 1, i32* %4, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %5, metadata !19, metadata !DIExpression()), !dbg !21
  store i32 1, i32* %5, align 4, !dbg !21
  br label %6, !dbg !22

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %5, align 4, !dbg !23
  %8 = load i32, i32* %3, align 4, !dbg !25
  %9 = icmp sle i32 %7, %8, !dbg !26
  br i1 %9, label %10, label %21, !dbg !27

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4, !dbg !28
  %12 = load i32, i32* %4, align 4, !dbg !30
  %13 = mul nsw i32 %12, %11, !dbg !30
  store i32 %13, i32* %4, align 4, !dbg !30
  %14 = load i32, i32* %4, align 4, !dbg !31
  %15 = icmp slt i32 %14, 0, !dbg !33
  br i1 %15, label %16, label %17, !dbg !34

16:                                               ; preds = %10
  store i32 -1, i32* %2, align 4, !dbg !35
  br label %23, !dbg !35

17:                                               ; preds = %10
  br label %18, !dbg !36

18:                                               ; preds = %17
  %19 = load i32, i32* %5, align 4, !dbg !37
  %20 = add nsw i32 %19, 1, !dbg !37
  store i32 %20, i32* %5, align 4, !dbg !37
  br label %6, !dbg !38, !llvm.loop !39

21:                                               ; preds = %6
  %22 = load i32, i32* %4, align 4, !dbg !42
  store i32 %22, i32* %2, align 4, !dbg !43
  br label %23, !dbg !43

23:                                               ; preds = %21, %16
  %24 = load i32, i32* %2, align 4, !dbg !44
  ret i32 %24, !dbg !44
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !45 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !48, metadata !DIExpression()), !dbg !49
  %4 = bitcast i32* %2 to i8*, !dbg !50
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !51
  %5 = load i32, i32* %2, align 4, !dbg !52
  %6 = icmp sge i32 %5, 0, !dbg !53
  br i1 %6, label %7, label %10, !dbg !54

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !55
  %9 = icmp sle i32 %8, 12, !dbg !56
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !57
  %12 = zext i1 %11 to i32, !dbg !54
  %13 = sext i32 %12 to i64, !dbg !52
  call void @klee_assume(i64 noundef %13), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %3, metadata !59, metadata !DIExpression()), !dbg !60
  %14 = load i32, i32* %2, align 4, !dbg !61
  %15 = call i32 @factorial(i32 noundef %14), !dbg !62
  store i32 %15, i32* %3, align 4, !dbg !60
  %16 = load i32, i32* %2, align 4, !dbg !63
  %17 = icmp sgt i32 %16, 0, !dbg !65
  br i1 %17, label %18, label %22, !dbg !66

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4, !dbg !67
  %20 = icmp sle i32 %19, 0, !dbg !68
  br i1 %20, label %21, label %22, !dbg !69

21:                                               ; preds = %18
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !70
  unreachable, !dbg !70

22:                                               ; preds = %18, %10
  ret i32 0, !dbg !71
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
!1 = !DIFile(filename: "68.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "98bc4a0b4e5534410945390df8ee1f15")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "factorial", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 19, scope: !10)
!17 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 9, scope: !10)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 7, type: !13)
!20 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 5)
!21 = !DILocation(line: 7, column: 14, scope: !20)
!22 = !DILocation(line: 7, column: 10, scope: !20)
!23 = !DILocation(line: 7, column: 21, scope: !24)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 7, column: 5)
!25 = !DILocation(line: 7, column: 26, scope: !24)
!26 = !DILocation(line: 7, column: 23, scope: !24)
!27 = !DILocation(line: 7, column: 5, scope: !20)
!28 = !DILocation(line: 8, column: 19, scope: !29)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 7, column: 33)
!30 = !DILocation(line: 8, column: 16, scope: !29)
!31 = !DILocation(line: 9, column: 12, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 12)
!33 = !DILocation(line: 9, column: 19, scope: !32)
!34 = !DILocation(line: 9, column: 12, scope: !29)
!35 = !DILocation(line: 10, column: 13, scope: !32)
!36 = !DILocation(line: 11, column: 5, scope: !29)
!37 = !DILocation(line: 7, column: 30, scope: !24)
!38 = !DILocation(line: 7, column: 5, scope: !24)
!39 = distinct !{!39, !27, !40, !41}
!40 = !DILocation(line: 11, column: 5, scope: !20)
!41 = !{!"llvm.loop.mustprogress"}
!42 = !DILocation(line: 12, column: 12, scope: !10)
!43 = !DILocation(line: 12, column: 5, scope: !10)
!44 = !DILocation(line: 13, column: 1, scope: !10)
!45 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !46, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!46 = !DISubroutineType(types: !47)
!47 = !{!13}
!48 = !DILocalVariable(name: "n", scope: !45, file: !1, line: 16, type: !13)
!49 = !DILocation(line: 16, column: 9, scope: !45)
!50 = !DILocation(line: 17, column: 24, scope: !45)
!51 = !DILocation(line: 17, column: 5, scope: !45)
!52 = !DILocation(line: 18, column: 17, scope: !45)
!53 = !DILocation(line: 18, column: 19, scope: !45)
!54 = !DILocation(line: 18, column: 24, scope: !45)
!55 = !DILocation(line: 18, column: 27, scope: !45)
!56 = !DILocation(line: 18, column: 29, scope: !45)
!57 = !DILocation(line: 0, scope: !45)
!58 = !DILocation(line: 18, column: 5, scope: !45)
!59 = !DILocalVariable(name: "fact", scope: !45, file: !1, line: 20, type: !13)
!60 = !DILocation(line: 20, column: 9, scope: !45)
!61 = !DILocation(line: 20, column: 26, scope: !45)
!62 = !DILocation(line: 20, column: 16, scope: !45)
!63 = !DILocation(line: 21, column: 8, scope: !64)
!64 = distinct !DILexicalBlock(scope: !45, file: !1, line: 21, column: 8)
!65 = !DILocation(line: 21, column: 10, scope: !64)
!66 = !DILocation(line: 21, column: 14, scope: !64)
!67 = !DILocation(line: 21, column: 17, scope: !64)
!68 = !DILocation(line: 21, column: 22, scope: !64)
!69 = !DILocation(line: 21, column: 8, scope: !45)
!70 = !DILocation(line: 22, column: 9, scope: !64)
!71 = !DILocation(line: 23, column: 5, scope: !45)
