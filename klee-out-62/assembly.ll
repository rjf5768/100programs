; ModuleID = '63.bc'
source_filename = "63.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  %4 = bitcast i32* %2 to i8*, !dbg !19
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !20
  %5 = bitcast i32* %3 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !22
  %6 = load i32, i32* %2, align 4, !dbg !23
  %7 = icmp sge i32 %6, -10, !dbg !24
  br i1 %7, label %8, label %11, !dbg !25

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4, !dbg !26
  %10 = icmp sle i32 %9, 10, !dbg !27
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ], !dbg !28
  %13 = zext i1 %12 to i32, !dbg !25
  %14 = sext i32 %13 to i64, !dbg !23
  call void @klee_assume(i64 noundef %14), !dbg !29
  %15 = load i32, i32* %3, align 4, !dbg !30
  %16 = icmp sge i32 %15, -10, !dbg !31
  br i1 %16, label %17, label %20, !dbg !32

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4, !dbg !33
  %19 = icmp sle i32 %18, 10, !dbg !34
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi i1 [ false, %11 ], [ %19, %17 ], !dbg !28
  %22 = zext i1 %21 to i32, !dbg !32
  %23 = sext i32 %22 to i64, !dbg !30
  call void @klee_assume(i64 noundef %23), !dbg !35
  %24 = load i32, i32* %2, align 4, !dbg !36
  %25 = load i32, i32* %3, align 4, !dbg !38
  %26 = mul nsw i32 %24, %25, !dbg !39
  %27 = srem i32 %26, 3, !dbg !40
  %28 = icmp eq i32 %27, 0, !dbg !41
  br i1 %28, label %29, label %45, !dbg !42

29:                                               ; preds = %20
  %30 = load i32, i32* %2, align 4, !dbg !43
  %31 = load i32, i32* %3, align 4, !dbg !46
  %32 = icmp sgt i32 %30, %31, !dbg !47
  br i1 %32, label %33, label %36, !dbg !48

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4, !dbg !49
  %35 = add nsw i32 %34, 2, !dbg !51
  store i32 %35, i32* %2, align 4, !dbg !52
  br label %44, !dbg !53

36:                                               ; preds = %29
  %37 = load i32, i32* %2, align 4, !dbg !54
  %38 = load i32, i32* %3, align 4, !dbg !56
  %39 = icmp slt i32 %37, %38, !dbg !57
  br i1 %39, label %40, label %43, !dbg !58

40:                                               ; preds = %36
  %41 = load i32, i32* %2, align 4, !dbg !59
  %42 = sub nsw i32 %41, 2, !dbg !61
  store i32 %42, i32* %3, align 4, !dbg !62
  br label %43, !dbg !63

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %33
  br label %55, !dbg !64

45:                                               ; preds = %20
  %46 = load i32, i32* %2, align 4, !dbg !65
  %47 = load i32, i32* %3, align 4, !dbg !67
  %48 = add nsw i32 %46, %47, !dbg !68
  %49 = icmp sgt i32 %48, 0, !dbg !69
  br i1 %49, label %50, label %52, !dbg !70

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4, !dbg !71
  store i32 %51, i32* %2, align 4, !dbg !73
  br label %54, !dbg !74

52:                                               ; preds = %45
  %53 = load i32, i32* %2, align 4, !dbg !75
  store i32 %53, i32* %3, align 4, !dbg !77
  br label %54

54:                                               ; preds = %52, %50
  br label %55

55:                                               ; preds = %54, %44
  ret i32 0, !dbg !78
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "63.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "fc4b7bcae83a7852d77b3b3103a1762b")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 2, type: !11, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "x", scope: !10, file: !1, line: 3, type: !13)
!16 = !DILocation(line: 3, column: 9, scope: !10)
!17 = !DILocalVariable(name: "y", scope: !10, file: !1, line: 3, type: !13)
!18 = !DILocation(line: 3, column: 12, scope: !10)
!19 = !DILocation(line: 4, column: 24, scope: !10)
!20 = !DILocation(line: 4, column: 5, scope: !10)
!21 = !DILocation(line: 5, column: 24, scope: !10)
!22 = !DILocation(line: 5, column: 5, scope: !10)
!23 = !DILocation(line: 6, column: 17, scope: !10)
!24 = !DILocation(line: 6, column: 19, scope: !10)
!25 = !DILocation(line: 6, column: 26, scope: !10)
!26 = !DILocation(line: 6, column: 29, scope: !10)
!27 = !DILocation(line: 6, column: 31, scope: !10)
!28 = !DILocation(line: 0, scope: !10)
!29 = !DILocation(line: 6, column: 5, scope: !10)
!30 = !DILocation(line: 7, column: 17, scope: !10)
!31 = !DILocation(line: 7, column: 19, scope: !10)
!32 = !DILocation(line: 7, column: 26, scope: !10)
!33 = !DILocation(line: 7, column: 29, scope: !10)
!34 = !DILocation(line: 7, column: 31, scope: !10)
!35 = !DILocation(line: 7, column: 5, scope: !10)
!36 = !DILocation(line: 9, column: 10, scope: !37)
!37 = distinct !DILexicalBlock(scope: !10, file: !1, line: 9, column: 9)
!38 = !DILocation(line: 9, column: 14, scope: !37)
!39 = !DILocation(line: 9, column: 12, scope: !37)
!40 = !DILocation(line: 9, column: 17, scope: !37)
!41 = !DILocation(line: 9, column: 21, scope: !37)
!42 = !DILocation(line: 9, column: 9, scope: !10)
!43 = !DILocation(line: 10, column: 13, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 10, column: 13)
!45 = distinct !DILexicalBlock(scope: !37, file: !1, line: 9, column: 27)
!46 = !DILocation(line: 10, column: 17, scope: !44)
!47 = !DILocation(line: 10, column: 15, scope: !44)
!48 = !DILocation(line: 10, column: 13, scope: !45)
!49 = !DILocation(line: 11, column: 17, scope: !50)
!50 = distinct !DILexicalBlock(scope: !44, file: !1, line: 10, column: 20)
!51 = !DILocation(line: 11, column: 19, scope: !50)
!52 = !DILocation(line: 11, column: 15, scope: !50)
!53 = !DILocation(line: 12, column: 9, scope: !50)
!54 = !DILocation(line: 12, column: 20, scope: !55)
!55 = distinct !DILexicalBlock(scope: !44, file: !1, line: 12, column: 20)
!56 = !DILocation(line: 12, column: 24, scope: !55)
!57 = !DILocation(line: 12, column: 22, scope: !55)
!58 = !DILocation(line: 12, column: 20, scope: !44)
!59 = !DILocation(line: 13, column: 17, scope: !60)
!60 = distinct !DILexicalBlock(scope: !55, file: !1, line: 12, column: 27)
!61 = !DILocation(line: 13, column: 19, scope: !60)
!62 = !DILocation(line: 13, column: 15, scope: !60)
!63 = !DILocation(line: 14, column: 9, scope: !60)
!64 = !DILocation(line: 15, column: 5, scope: !45)
!65 = !DILocation(line: 15, column: 16, scope: !66)
!66 = distinct !DILexicalBlock(scope: !37, file: !1, line: 15, column: 16)
!67 = !DILocation(line: 15, column: 20, scope: !66)
!68 = !DILocation(line: 15, column: 18, scope: !66)
!69 = !DILocation(line: 15, column: 22, scope: !66)
!70 = !DILocation(line: 15, column: 16, scope: !37)
!71 = !DILocation(line: 16, column: 13, scope: !72)
!72 = distinct !DILexicalBlock(scope: !66, file: !1, line: 15, column: 27)
!73 = !DILocation(line: 16, column: 11, scope: !72)
!74 = !DILocation(line: 17, column: 5, scope: !72)
!75 = !DILocation(line: 18, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !66, file: !1, line: 17, column: 12)
!77 = !DILocation(line: 18, column: 11, scope: !76)
!78 = !DILocation(line: 20, column: 5, scope: !10)
