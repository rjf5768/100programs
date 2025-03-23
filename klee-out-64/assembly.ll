; ModuleID = '65.bc'
source_filename = "65.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"z\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  %5 = bitcast i32* %2 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !22
  %6 = bitcast i32* %3 to i8*, !dbg !23
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !24
  %7 = bitcast i32* %4 to i8*, !dbg !25
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !26
  %8 = load i32, i32* %2, align 4, !dbg !27
  %9 = icmp sge i32 %8, -5, !dbg !28
  br i1 %9, label %10, label %13, !dbg !29

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4, !dbg !30
  %12 = icmp sle i32 %11, 5, !dbg !31
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !32
  %15 = zext i1 %14 to i32, !dbg !29
  %16 = sext i32 %15 to i64, !dbg !27
  call void @klee_assume(i64 noundef %16), !dbg !33
  %17 = load i32, i32* %3, align 4, !dbg !34
  %18 = icmp sge i32 %17, -5, !dbg !35
  br i1 %18, label %19, label %22, !dbg !36

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4, !dbg !37
  %21 = icmp sle i32 %20, 5, !dbg !38
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i1 [ false, %13 ], [ %21, %19 ], !dbg !32
  %24 = zext i1 %23 to i32, !dbg !36
  %25 = sext i32 %24 to i64, !dbg !34
  call void @klee_assume(i64 noundef %25), !dbg !39
  %26 = load i32, i32* %4, align 4, !dbg !40
  %27 = icmp sge i32 %26, -5, !dbg !41
  br i1 %27, label %28, label %31, !dbg !42

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4, !dbg !43
  %30 = icmp sle i32 %29, 5, !dbg !44
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i1 [ false, %22 ], [ %30, %28 ], !dbg !32
  %33 = zext i1 %32 to i32, !dbg !42
  %34 = sext i32 %33 to i64, !dbg !40
  call void @klee_assume(i64 noundef %34), !dbg !45
  %35 = load i32, i32* %2, align 4, !dbg !46
  %36 = load i32, i32* %3, align 4, !dbg !48
  %37 = mul nsw i32 %35, %36, !dbg !49
  %38 = load i32, i32* %4, align 4, !dbg !50
  %39 = mul nsw i32 %37, %38, !dbg !51
  %40 = icmp eq i32 %39, 0, !dbg !52
  br i1 %40, label %41, label %45, !dbg !53

41:                                               ; preds = %31
  %42 = load i32, i32* %3, align 4, !dbg !54
  %43 = load i32, i32* %4, align 4, !dbg !56
  %44 = add nsw i32 %42, %43, !dbg !57
  store i32 %44, i32* %2, align 4, !dbg !58
  br label %67, !dbg !59

45:                                               ; preds = %31
  %46 = load i32, i32* %2, align 4, !dbg !60
  %47 = load i32, i32* %3, align 4, !dbg !62
  %48 = add nsw i32 %46, %47, !dbg !63
  %49 = load i32, i32* %4, align 4, !dbg !64
  %50 = add nsw i32 %48, %49, !dbg !65
  %51 = icmp sgt i32 %50, 0, !dbg !66
  br i1 %51, label %52, label %62, !dbg !67

52:                                               ; preds = %45
  %53 = load i32, i32* %2, align 4, !dbg !68
  %54 = icmp sgt i32 %53, 0, !dbg !71
  br i1 %54, label %55, label %58, !dbg !72

55:                                               ; preds = %52
  %56 = load i32, i32* %2, align 4, !dbg !73
  %57 = sub nsw i32 %56, 1, !dbg !73
  store i32 %57, i32* %2, align 4, !dbg !73
  br label %61, !dbg !75

58:                                               ; preds = %52
  %59 = load i32, i32* %3, align 4, !dbg !76
  %60 = add nsw i32 %59, 1, !dbg !76
  store i32 %60, i32* %3, align 4, !dbg !76
  br label %61

61:                                               ; preds = %58, %55
  br label %66, !dbg !78

62:                                               ; preds = %45
  %63 = load i32, i32* %2, align 4, !dbg !79
  %64 = load i32, i32* %3, align 4, !dbg !81
  %65 = mul nsw i32 %63, %64, !dbg !82
  store i32 %65, i32* %4, align 4, !dbg !83
  br label %66

66:                                               ; preds = %62, %61
  br label %67

67:                                               ; preds = %66, %41
  ret i32 0, !dbg !84
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
!1 = !DIFile(filename: "65.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "4c34edbe9ce5b6d99437784b52071edc")
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
!19 = !DILocalVariable(name: "z", scope: !10, file: !1, line: 3, type: !13)
!20 = !DILocation(line: 3, column: 15, scope: !10)
!21 = !DILocation(line: 4, column: 24, scope: !10)
!22 = !DILocation(line: 4, column: 5, scope: !10)
!23 = !DILocation(line: 5, column: 24, scope: !10)
!24 = !DILocation(line: 5, column: 5, scope: !10)
!25 = !DILocation(line: 6, column: 24, scope: !10)
!26 = !DILocation(line: 6, column: 5, scope: !10)
!27 = !DILocation(line: 7, column: 17, scope: !10)
!28 = !DILocation(line: 7, column: 19, scope: !10)
!29 = !DILocation(line: 7, column: 25, scope: !10)
!30 = !DILocation(line: 7, column: 28, scope: !10)
!31 = !DILocation(line: 7, column: 30, scope: !10)
!32 = !DILocation(line: 0, scope: !10)
!33 = !DILocation(line: 7, column: 5, scope: !10)
!34 = !DILocation(line: 8, column: 17, scope: !10)
!35 = !DILocation(line: 8, column: 19, scope: !10)
!36 = !DILocation(line: 8, column: 25, scope: !10)
!37 = !DILocation(line: 8, column: 28, scope: !10)
!38 = !DILocation(line: 8, column: 30, scope: !10)
!39 = !DILocation(line: 8, column: 5, scope: !10)
!40 = !DILocation(line: 9, column: 17, scope: !10)
!41 = !DILocation(line: 9, column: 19, scope: !10)
!42 = !DILocation(line: 9, column: 25, scope: !10)
!43 = !DILocation(line: 9, column: 28, scope: !10)
!44 = !DILocation(line: 9, column: 30, scope: !10)
!45 = !DILocation(line: 9, column: 5, scope: !10)
!46 = !DILocation(line: 11, column: 10, scope: !47)
!47 = distinct !DILexicalBlock(scope: !10, file: !1, line: 11, column: 9)
!48 = !DILocation(line: 11, column: 14, scope: !47)
!49 = !DILocation(line: 11, column: 12, scope: !47)
!50 = !DILocation(line: 11, column: 18, scope: !47)
!51 = !DILocation(line: 11, column: 16, scope: !47)
!52 = !DILocation(line: 11, column: 21, scope: !47)
!53 = !DILocation(line: 11, column: 9, scope: !10)
!54 = !DILocation(line: 12, column: 13, scope: !55)
!55 = distinct !DILexicalBlock(scope: !47, file: !1, line: 11, column: 27)
!56 = !DILocation(line: 12, column: 17, scope: !55)
!57 = !DILocation(line: 12, column: 15, scope: !55)
!58 = !DILocation(line: 12, column: 11, scope: !55)
!59 = !DILocation(line: 13, column: 5, scope: !55)
!60 = !DILocation(line: 13, column: 16, scope: !61)
!61 = distinct !DILexicalBlock(scope: !47, file: !1, line: 13, column: 16)
!62 = !DILocation(line: 13, column: 20, scope: !61)
!63 = !DILocation(line: 13, column: 18, scope: !61)
!64 = !DILocation(line: 13, column: 24, scope: !61)
!65 = !DILocation(line: 13, column: 22, scope: !61)
!66 = !DILocation(line: 13, column: 26, scope: !61)
!67 = !DILocation(line: 13, column: 16, scope: !47)
!68 = !DILocation(line: 14, column: 13, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 14, column: 13)
!70 = distinct !DILexicalBlock(scope: !61, file: !1, line: 13, column: 31)
!71 = !DILocation(line: 14, column: 15, scope: !69)
!72 = !DILocation(line: 14, column: 13, scope: !70)
!73 = !DILocation(line: 15, column: 15, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 14, column: 20)
!75 = !DILocation(line: 16, column: 9, scope: !74)
!76 = !DILocation(line: 17, column: 15, scope: !77)
!77 = distinct !DILexicalBlock(scope: !69, file: !1, line: 16, column: 16)
!78 = !DILocation(line: 19, column: 5, scope: !70)
!79 = !DILocation(line: 20, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !61, file: !1, line: 19, column: 12)
!81 = !DILocation(line: 20, column: 17, scope: !80)
!82 = !DILocation(line: 20, column: 15, scope: !80)
!83 = !DILocation(line: 20, column: 11, scope: !80)
!84 = !DILocation(line: 22, column: 5, scope: !10)
