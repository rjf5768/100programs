; ModuleID = '85.bc'
source_filename = "85.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"85.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  %6 = bitcast i32* %2 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !22
  %7 = bitcast i32* %3 to i8*, !dbg !23
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !24
  %8 = bitcast i32* %4 to i8*, !dbg !25
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !26
  %9 = load i32, i32* %2, align 4, !dbg !27
  %10 = icmp sge i32 %9, 0, !dbg !28
  br i1 %10, label %11, label %14, !dbg !29

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4, !dbg !30
  %13 = icmp sle i32 %12, 50, !dbg !31
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi i1 [ false, %0 ], [ %13, %11 ], !dbg !32
  %16 = zext i1 %15 to i32, !dbg !29
  %17 = sext i32 %16 to i64, !dbg !27
  call void @klee_assume(i64 noundef %17), !dbg !33
  %18 = load i32, i32* %3, align 4, !dbg !34
  %19 = icmp sge i32 %18, 0, !dbg !35
  br i1 %19, label %20, label %23, !dbg !36

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4, !dbg !37
  %22 = icmp sle i32 %21, 50, !dbg !38
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i1 [ false, %14 ], [ %22, %20 ], !dbg !32
  %25 = zext i1 %24 to i32, !dbg !36
  %26 = sext i32 %25 to i64, !dbg !34
  call void @klee_assume(i64 noundef %26), !dbg !39
  %27 = load i32, i32* %4, align 4, !dbg !40
  %28 = icmp sge i32 %27, 0, !dbg !41
  br i1 %28, label %29, label %32, !dbg !42

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4, !dbg !43
  %31 = icmp sle i32 %30, 50, !dbg !44
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i1 [ false, %23 ], [ %31, %29 ], !dbg !32
  %34 = zext i1 %33 to i32, !dbg !42
  %35 = sext i32 %34 to i64, !dbg !40
  call void @klee_assume(i64 noundef %35), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %5, metadata !46, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %5, align 4, !dbg !47
  %36 = load i32, i32* %2, align 4, !dbg !48
  %37 = load i32, i32* %3, align 4, !dbg !50
  %38 = icmp sgt i32 %36, %37, !dbg !51
  br i1 %38, label %39, label %49, !dbg !52

39:                                               ; preds = %32
  %40 = load i32, i32* %3, align 4, !dbg !53
  %41 = load i32, i32* %4, align 4, !dbg !54
  %42 = icmp sgt i32 %40, %41, !dbg !55
  br i1 %42, label %43, label %49, !dbg !56

43:                                               ; preds = %39
  %44 = load i32, i32* %2, align 4, !dbg !57
  %45 = load i32, i32* %3, align 4, !dbg !58
  %46 = sub nsw i32 %44, %45, !dbg !59
  %47 = load i32, i32* %4, align 4, !dbg !60
  %48 = add nsw i32 %46, %47, !dbg !61
  store i32 %48, i32* %5, align 4, !dbg !62
  br label %70, !dbg !63

49:                                               ; preds = %39, %32
  %50 = load i32, i32* %2, align 4, !dbg !64
  %51 = load i32, i32* %3, align 4, !dbg !66
  %52 = icmp slt i32 %50, %51, !dbg !67
  br i1 %52, label %57, label %53, !dbg !68

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4, !dbg !69
  %55 = load i32, i32* %3, align 4, !dbg !70
  %56 = icmp sgt i32 %54, %55, !dbg !71
  br i1 %56, label %57, label %63, !dbg !72

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %2, align 4, !dbg !73
  %59 = load i32, i32* %4, align 4, !dbg !74
  %60 = add nsw i32 %58, %59, !dbg !75
  %61 = load i32, i32* %3, align 4, !dbg !76
  %62 = sub nsw i32 %60, %61, !dbg !77
  store i32 %62, i32* %5, align 4, !dbg !78
  br label %69, !dbg !79

63:                                               ; preds = %53
  %64 = load i32, i32* %2, align 4, !dbg !80
  %65 = load i32, i32* %3, align 4, !dbg !81
  %66 = mul nsw i32 %64, %65, !dbg !82
  %67 = load i32, i32* %4, align 4, !dbg !83
  %68 = mul nsw i32 %66, %67, !dbg !84
  store i32 %68, i32* %5, align 4, !dbg !85
  br label %69

69:                                               ; preds = %63, %57
  br label %70

70:                                               ; preds = %69, %43
  %71 = load i32, i32* %5, align 4, !dbg !86
  %72 = icmp slt i32 %71, -100, !dbg !88
  br i1 %72, label %76, label %73, !dbg !89

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4, !dbg !90
  %75 = icmp sgt i32 %74, 1000, !dbg !91
  br i1 %75, label %76, label %77, !dbg !92

76:                                               ; preds = %73, %70
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !93
  unreachable, !dbg !93

77:                                               ; preds = %73
  ret i32 0, !dbg !94
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
!1 = !DIFile(filename: "85.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "0a9c089754c2259908b6d7946b5960c8")
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
!15 = !DILocalVariable(name: "a", scope: !10, file: !1, line: 6, type: !13)
!16 = !DILocation(line: 6, column: 9, scope: !10)
!17 = !DILocalVariable(name: "b", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 12, scope: !10)
!19 = !DILocalVariable(name: "c", scope: !10, file: !1, line: 6, type: !13)
!20 = !DILocation(line: 6, column: 15, scope: !10)
!21 = !DILocation(line: 7, column: 24, scope: !10)
!22 = !DILocation(line: 7, column: 5, scope: !10)
!23 = !DILocation(line: 8, column: 24, scope: !10)
!24 = !DILocation(line: 8, column: 5, scope: !10)
!25 = !DILocation(line: 9, column: 24, scope: !10)
!26 = !DILocation(line: 9, column: 5, scope: !10)
!27 = !DILocation(line: 10, column: 17, scope: !10)
!28 = !DILocation(line: 10, column: 19, scope: !10)
!29 = !DILocation(line: 10, column: 24, scope: !10)
!30 = !DILocation(line: 10, column: 27, scope: !10)
!31 = !DILocation(line: 10, column: 29, scope: !10)
!32 = !DILocation(line: 0, scope: !10)
!33 = !DILocation(line: 10, column: 5, scope: !10)
!34 = !DILocation(line: 11, column: 17, scope: !10)
!35 = !DILocation(line: 11, column: 19, scope: !10)
!36 = !DILocation(line: 11, column: 24, scope: !10)
!37 = !DILocation(line: 11, column: 27, scope: !10)
!38 = !DILocation(line: 11, column: 29, scope: !10)
!39 = !DILocation(line: 11, column: 5, scope: !10)
!40 = !DILocation(line: 12, column: 17, scope: !10)
!41 = !DILocation(line: 12, column: 19, scope: !10)
!42 = !DILocation(line: 12, column: 24, scope: !10)
!43 = !DILocation(line: 12, column: 27, scope: !10)
!44 = !DILocation(line: 12, column: 29, scope: !10)
!45 = !DILocation(line: 12, column: 5, scope: !10)
!46 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 14, type: !13)
!47 = !DILocation(line: 14, column: 9, scope: !10)
!48 = !DILocation(line: 15, column: 8, scope: !49)
!49 = distinct !DILexicalBlock(scope: !10, file: !1, line: 15, column: 8)
!50 = !DILocation(line: 15, column: 12, scope: !49)
!51 = !DILocation(line: 15, column: 10, scope: !49)
!52 = !DILocation(line: 15, column: 14, scope: !49)
!53 = !DILocation(line: 15, column: 17, scope: !49)
!54 = !DILocation(line: 15, column: 21, scope: !49)
!55 = !DILocation(line: 15, column: 19, scope: !49)
!56 = !DILocation(line: 15, column: 8, scope: !10)
!57 = !DILocation(line: 16, column: 18, scope: !49)
!58 = !DILocation(line: 16, column: 22, scope: !49)
!59 = !DILocation(line: 16, column: 20, scope: !49)
!60 = !DILocation(line: 16, column: 26, scope: !49)
!61 = !DILocation(line: 16, column: 24, scope: !49)
!62 = !DILocation(line: 16, column: 16, scope: !49)
!63 = !DILocation(line: 16, column: 9, scope: !49)
!64 = !DILocation(line: 17, column: 13, scope: !65)
!65 = distinct !DILexicalBlock(scope: !49, file: !1, line: 17, column: 13)
!66 = !DILocation(line: 17, column: 17, scope: !65)
!67 = !DILocation(line: 17, column: 15, scope: !65)
!68 = !DILocation(line: 17, column: 19, scope: !65)
!69 = !DILocation(line: 17, column: 22, scope: !65)
!70 = !DILocation(line: 17, column: 26, scope: !65)
!71 = !DILocation(line: 17, column: 24, scope: !65)
!72 = !DILocation(line: 17, column: 13, scope: !49)
!73 = !DILocation(line: 18, column: 18, scope: !65)
!74 = !DILocation(line: 18, column: 22, scope: !65)
!75 = !DILocation(line: 18, column: 20, scope: !65)
!76 = !DILocation(line: 18, column: 26, scope: !65)
!77 = !DILocation(line: 18, column: 24, scope: !65)
!78 = !DILocation(line: 18, column: 16, scope: !65)
!79 = !DILocation(line: 18, column: 9, scope: !65)
!80 = !DILocation(line: 20, column: 18, scope: !65)
!81 = !DILocation(line: 20, column: 22, scope: !65)
!82 = !DILocation(line: 20, column: 20, scope: !65)
!83 = !DILocation(line: 20, column: 26, scope: !65)
!84 = !DILocation(line: 20, column: 24, scope: !65)
!85 = !DILocation(line: 20, column: 16, scope: !65)
!86 = !DILocation(line: 21, column: 8, scope: !87)
!87 = distinct !DILexicalBlock(scope: !10, file: !1, line: 21, column: 8)
!88 = !DILocation(line: 21, column: 15, scope: !87)
!89 = !DILocation(line: 21, column: 22, scope: !87)
!90 = !DILocation(line: 21, column: 25, scope: !87)
!91 = !DILocation(line: 21, column: 32, scope: !87)
!92 = !DILocation(line: 21, column: 8, scope: !10)
!93 = !DILocation(line: 22, column: 9, scope: !87)
!94 = !DILocation(line: 23, column: 5, scope: !10)
