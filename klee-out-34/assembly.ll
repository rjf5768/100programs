; ModuleID = '35.bc'
source_filename = "35.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"35.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @int_sqrt(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %4, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %4, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %5, metadata !19, metadata !DIExpression()), !dbg !20
  %7 = load i32, i32* %3, align 4, !dbg !21
  store i32 %7, i32* %5, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %6, metadata !22, metadata !DIExpression()), !dbg !23
  br label %8, !dbg !24

8:                                                ; preds = %37, %1
  %9 = load i32, i32* %4, align 4, !dbg !25
  %10 = load i32, i32* %5, align 4, !dbg !26
  %11 = icmp sle i32 %9, %10, !dbg !27
  br i1 %11, label %12, label %38, !dbg !24

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4, !dbg !28
  %14 = load i32, i32* %5, align 4, !dbg !30
  %15 = add nsw i32 %13, %14, !dbg !31
  %16 = sdiv i32 %15, 2, !dbg !32
  store i32 %16, i32* %6, align 4, !dbg !33
  %17 = load i32, i32* %6, align 4, !dbg !34
  %18 = load i32, i32* %6, align 4, !dbg !36
  %19 = mul nsw i32 %17, %18, !dbg !37
  %20 = load i32, i32* %3, align 4, !dbg !38
  %21 = icmp eq i32 %19, %20, !dbg !39
  br i1 %21, label %22, label %24, !dbg !40

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4, !dbg !41
  store i32 %23, i32* %2, align 4, !dbg !42
  br label %40, !dbg !42

24:                                               ; preds = %12
  %25 = load i32, i32* %6, align 4, !dbg !43
  %26 = load i32, i32* %6, align 4, !dbg !45
  %27 = mul nsw i32 %25, %26, !dbg !46
  %28 = load i32, i32* %3, align 4, !dbg !47
  %29 = icmp slt i32 %27, %28, !dbg !48
  br i1 %29, label %30, label %33, !dbg !49

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4, !dbg !50
  %32 = add nsw i32 %31, 1, !dbg !51
  store i32 %32, i32* %4, align 4, !dbg !52
  br label %36, !dbg !53

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4, !dbg !54
  %35 = sub nsw i32 %34, 1, !dbg !55
  store i32 %35, i32* %5, align 4, !dbg !56
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36
  br label %8, !dbg !24, !llvm.loop !57

38:                                               ; preds = %8
  %39 = load i32, i32* %5, align 4, !dbg !60
  store i32 %39, i32* %2, align 4, !dbg !61
  br label %40, !dbg !61

40:                                               ; preds = %38, %22
  %41 = load i32, i32* %2, align 4, !dbg !62
  ret i32 %41, !dbg !62
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !63 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !66, metadata !DIExpression()), !dbg !67
  %4 = bitcast i32* %2 to i8*, !dbg !68
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !69
  %5 = load i32, i32* %2, align 4, !dbg !70
  %6 = icmp sge i32 %5, 0, !dbg !71
  br i1 %6, label %7, label %10, !dbg !72

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !73
  %9 = icmp sle i32 %8, 100, !dbg !74
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !75
  %12 = zext i1 %11 to i32, !dbg !72
  %13 = sext i32 %12 to i64, !dbg !70
  call void @klee_assume(i64 noundef %13), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %3, metadata !77, metadata !DIExpression()), !dbg !78
  %14 = load i32, i32* %2, align 4, !dbg !79
  %15 = call i32 @int_sqrt(i32 noundef %14), !dbg !80
  store i32 %15, i32* %3, align 4, !dbg !78
  %16 = load i32, i32* %3, align 4, !dbg !81
  %17 = load i32, i32* %3, align 4, !dbg !83
  %18 = mul nsw i32 %16, %17, !dbg !84
  %19 = load i32, i32* %2, align 4, !dbg !85
  %20 = icmp sgt i32 %18, %19, !dbg !86
  br i1 %20, label %21, label %22, !dbg !87

21:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !88
  unreachable, !dbg !88

22:                                               ; preds = %10
  ret i32 0, !dbg !89
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
!1 = !DIFile(filename: "35.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "5484a417dc6321a0485868dd73c84643")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "int_sqrt", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 18, scope: !10)
!17 = !DILocalVariable(name: "low", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 7, scope: !10)
!19 = !DILocalVariable(name: "high", scope: !10, file: !1, line: 6, type: !13)
!20 = !DILocation(line: 6, column: 16, scope: !10)
!21 = !DILocation(line: 6, column: 23, scope: !10)
!22 = !DILocalVariable(name: "mid", scope: !10, file: !1, line: 6, type: !13)
!23 = !DILocation(line: 6, column: 26, scope: !10)
!24 = !DILocation(line: 7, column: 3, scope: !10)
!25 = !DILocation(line: 7, column: 9, scope: !10)
!26 = !DILocation(line: 7, column: 16, scope: !10)
!27 = !DILocation(line: 7, column: 13, scope: !10)
!28 = !DILocation(line: 8, column: 12, scope: !29)
!29 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 22)
!30 = !DILocation(line: 8, column: 18, scope: !29)
!31 = !DILocation(line: 8, column: 16, scope: !29)
!32 = !DILocation(line: 8, column: 24, scope: !29)
!33 = !DILocation(line: 8, column: 9, scope: !29)
!34 = !DILocation(line: 9, column: 8, scope: !35)
!35 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 8)
!36 = !DILocation(line: 9, column: 14, scope: !35)
!37 = !DILocation(line: 9, column: 12, scope: !35)
!38 = !DILocation(line: 9, column: 21, scope: !35)
!39 = !DILocation(line: 9, column: 18, scope: !35)
!40 = !DILocation(line: 9, column: 8, scope: !29)
!41 = !DILocation(line: 10, column: 14, scope: !35)
!42 = !DILocation(line: 10, column: 7, scope: !35)
!43 = !DILocation(line: 11, column: 13, scope: !44)
!44 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 13)
!45 = !DILocation(line: 11, column: 19, scope: !44)
!46 = !DILocation(line: 11, column: 17, scope: !44)
!47 = !DILocation(line: 11, column: 25, scope: !44)
!48 = !DILocation(line: 11, column: 23, scope: !44)
!49 = !DILocation(line: 11, column: 13, scope: !35)
!50 = !DILocation(line: 12, column: 13, scope: !44)
!51 = !DILocation(line: 12, column: 17, scope: !44)
!52 = !DILocation(line: 12, column: 11, scope: !44)
!53 = !DILocation(line: 12, column: 7, scope: !44)
!54 = !DILocation(line: 14, column: 14, scope: !44)
!55 = !DILocation(line: 14, column: 18, scope: !44)
!56 = !DILocation(line: 14, column: 12, scope: !44)
!57 = distinct !{!57, !24, !58, !59}
!58 = !DILocation(line: 15, column: 3, scope: !10)
!59 = !{!"llvm.loop.mustprogress"}
!60 = !DILocation(line: 16, column: 10, scope: !10)
!61 = !DILocation(line: 16, column: 3, scope: !10)
!62 = !DILocation(line: 17, column: 1, scope: !10)
!63 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !64, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!64 = !DISubroutineType(types: !65)
!65 = !{!13}
!66 = !DILocalVariable(name: "n", scope: !63, file: !1, line: 20, type: !13)
!67 = !DILocation(line: 20, column: 7, scope: !63)
!68 = !DILocation(line: 21, column: 22, scope: !63)
!69 = !DILocation(line: 21, column: 3, scope: !63)
!70 = !DILocation(line: 22, column: 15, scope: !63)
!71 = !DILocation(line: 22, column: 17, scope: !63)
!72 = !DILocation(line: 22, column: 22, scope: !63)
!73 = !DILocation(line: 22, column: 25, scope: !63)
!74 = !DILocation(line: 22, column: 27, scope: !63)
!75 = !DILocation(line: 0, scope: !63)
!76 = !DILocation(line: 22, column: 3, scope: !63)
!77 = !DILocalVariable(name: "root", scope: !63, file: !1, line: 23, type: !13)
!78 = !DILocation(line: 23, column: 7, scope: !63)
!79 = !DILocation(line: 23, column: 23, scope: !63)
!80 = !DILocation(line: 23, column: 14, scope: !63)
!81 = !DILocation(line: 24, column: 6, scope: !82)
!82 = distinct !DILexicalBlock(scope: !63, file: !1, line: 24, column: 6)
!83 = !DILocation(line: 24, column: 13, scope: !82)
!84 = !DILocation(line: 24, column: 11, scope: !82)
!85 = !DILocation(line: 24, column: 20, scope: !82)
!86 = !DILocation(line: 24, column: 18, scope: !82)
!87 = !DILocation(line: 24, column: 6, scope: !63)
!88 = !DILocation(line: 25, column: 5, scope: !82)
!89 = !DILocation(line: 26, column: 3, scope: !63)
