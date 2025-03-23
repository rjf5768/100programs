; ModuleID = '80.bc'
source_filename = "80.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"80.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  %7 = bitcast i32* %2 to i8*, !dbg !19
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !20
  %8 = bitcast i32* %3 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !22
  %9 = load i32, i32* %2, align 4, !dbg !23
  %10 = icmp sge i32 %9, 0, !dbg !24
  br i1 %10, label %11, label %14, !dbg !25

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4, !dbg !26
  %13 = icmp sle i32 %12, 100, !dbg !27
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi i1 [ false, %0 ], [ %13, %11 ], !dbg !28
  %16 = zext i1 %15 to i32, !dbg !25
  %17 = sext i32 %16 to i64, !dbg !23
  call void @klee_assume(i64 noundef %17), !dbg !29
  %18 = load i32, i32* %3, align 4, !dbg !30
  %19 = icmp sge i32 %18, 0, !dbg !31
  br i1 %19, label %20, label %23, !dbg !32

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4, !dbg !33
  %22 = icmp sle i32 %21, 100, !dbg !34
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i1 [ false, %14 ], [ %22, %20 ], !dbg !28
  %25 = zext i1 %24 to i32, !dbg !32
  %26 = sext i32 %25 to i64, !dbg !30
  call void @klee_assume(i64 noundef %26), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %4, metadata !36, metadata !DIExpression()), !dbg !37
  %27 = load i32, i32* %2, align 4, !dbg !38
  %28 = load i32, i32* %3, align 4, !dbg !39
  %29 = and i32 %27, %28, !dbg !40
  store i32 %29, i32* %4, align 4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %5, metadata !41, metadata !DIExpression()), !dbg !42
  %30 = load i32, i32* %2, align 4, !dbg !43
  %31 = load i32, i32* %3, align 4, !dbg !44
  %32 = or i32 %30, %31, !dbg !45
  store i32 %32, i32* %5, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %6, metadata !46, metadata !DIExpression()), !dbg !47
  %33 = load i32, i32* %2, align 4, !dbg !48
  %34 = load i32, i32* %3, align 4, !dbg !49
  %35 = xor i32 %33, %34, !dbg !50
  store i32 %35, i32* %6, align 4, !dbg !47
  %36 = load i32, i32* %4, align 4, !dbg !51
  %37 = load i32, i32* %2, align 4, !dbg !53
  %38 = icmp sgt i32 %36, %37, !dbg !54
  br i1 %38, label %51, label %39, !dbg !55

39:                                               ; preds = %23
  %40 = load i32, i32* %4, align 4, !dbg !56
  %41 = load i32, i32* %3, align 4, !dbg !57
  %42 = icmp sgt i32 %40, %41, !dbg !58
  br i1 %42, label %51, label %43, !dbg !59

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4, !dbg !60
  %45 = load i32, i32* %2, align 4, !dbg !61
  %46 = icmp slt i32 %44, %45, !dbg !62
  br i1 %46, label %51, label %47, !dbg !63

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4, !dbg !64
  %49 = load i32, i32* %3, align 4, !dbg !65
  %50 = icmp slt i32 %48, %49, !dbg !66
  br i1 %50, label %51, label %52, !dbg !67

51:                                               ; preds = %47, %43, %39, %23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef 15, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !68
  unreachable, !dbg !68

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4, !dbg !69
  %54 = load i32, i32* %5, align 4, !dbg !71
  %55 = load i32, i32* %4, align 4, !dbg !72
  %56 = sub nsw i32 %54, %55, !dbg !73
  %57 = icmp ne i32 %53, %56, !dbg !74
  br i1 %57, label %58, label %59, !dbg !75

58:                                               ; preds = %52
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef 17, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !76
  unreachable, !dbg !76

59:                                               ; preds = %52
  ret i32 0, !dbg !77
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
!1 = !DIFile(filename: "80.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "13800544ae0efa5dbb5bbc6a6a5f399d")
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
!19 = !DILocation(line: 7, column: 24, scope: !10)
!20 = !DILocation(line: 7, column: 5, scope: !10)
!21 = !DILocation(line: 8, column: 24, scope: !10)
!22 = !DILocation(line: 8, column: 5, scope: !10)
!23 = !DILocation(line: 9, column: 17, scope: !10)
!24 = !DILocation(line: 9, column: 19, scope: !10)
!25 = !DILocation(line: 9, column: 24, scope: !10)
!26 = !DILocation(line: 9, column: 27, scope: !10)
!27 = !DILocation(line: 9, column: 29, scope: !10)
!28 = !DILocation(line: 0, scope: !10)
!29 = !DILocation(line: 9, column: 5, scope: !10)
!30 = !DILocation(line: 10, column: 17, scope: !10)
!31 = !DILocation(line: 10, column: 19, scope: !10)
!32 = !DILocation(line: 10, column: 24, scope: !10)
!33 = !DILocation(line: 10, column: 27, scope: !10)
!34 = !DILocation(line: 10, column: 29, scope: !10)
!35 = !DILocation(line: 10, column: 5, scope: !10)
!36 = !DILocalVariable(name: "and_val", scope: !10, file: !1, line: 11, type: !13)
!37 = !DILocation(line: 11, column: 9, scope: !10)
!38 = !DILocation(line: 11, column: 19, scope: !10)
!39 = !DILocation(line: 11, column: 23, scope: !10)
!40 = !DILocation(line: 11, column: 21, scope: !10)
!41 = !DILocalVariable(name: "or_val", scope: !10, file: !1, line: 12, type: !13)
!42 = !DILocation(line: 12, column: 9, scope: !10)
!43 = !DILocation(line: 12, column: 18, scope: !10)
!44 = !DILocation(line: 12, column: 22, scope: !10)
!45 = !DILocation(line: 12, column: 20, scope: !10)
!46 = !DILocalVariable(name: "xor_val", scope: !10, file: !1, line: 13, type: !13)
!47 = !DILocation(line: 13, column: 9, scope: !10)
!48 = !DILocation(line: 13, column: 19, scope: !10)
!49 = !DILocation(line: 13, column: 23, scope: !10)
!50 = !DILocation(line: 13, column: 21, scope: !10)
!51 = !DILocation(line: 14, column: 8, scope: !52)
!52 = distinct !DILexicalBlock(scope: !10, file: !1, line: 14, column: 8)
!53 = !DILocation(line: 14, column: 18, scope: !52)
!54 = !DILocation(line: 14, column: 16, scope: !52)
!55 = !DILocation(line: 14, column: 20, scope: !52)
!56 = !DILocation(line: 14, column: 23, scope: !52)
!57 = !DILocation(line: 14, column: 33, scope: !52)
!58 = !DILocation(line: 14, column: 31, scope: !52)
!59 = !DILocation(line: 14, column: 35, scope: !52)
!60 = !DILocation(line: 14, column: 38, scope: !52)
!61 = !DILocation(line: 14, column: 47, scope: !52)
!62 = !DILocation(line: 14, column: 45, scope: !52)
!63 = !DILocation(line: 14, column: 49, scope: !52)
!64 = !DILocation(line: 14, column: 52, scope: !52)
!65 = !DILocation(line: 14, column: 61, scope: !52)
!66 = !DILocation(line: 14, column: 59, scope: !52)
!67 = !DILocation(line: 14, column: 8, scope: !10)
!68 = !DILocation(line: 15, column: 9, scope: !52)
!69 = !DILocation(line: 16, column: 8, scope: !70)
!70 = distinct !DILexicalBlock(scope: !10, file: !1, line: 16, column: 8)
!71 = !DILocation(line: 16, column: 20, scope: !70)
!72 = !DILocation(line: 16, column: 29, scope: !70)
!73 = !DILocation(line: 16, column: 27, scope: !70)
!74 = !DILocation(line: 16, column: 16, scope: !70)
!75 = !DILocation(line: 16, column: 8, scope: !10)
!76 = !DILocation(line: 17, column: 9, scope: !70)
!77 = !DILocation(line: 18, column: 5, scope: !10)
