; ModuleID = '83.bc'
source_filename = "83.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"83.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"/home/rongfeng/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.6 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.7 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @modexp(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !14 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %7, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 1, i32* %7, align 4, !dbg !25
  br label %8, !dbg !26

8:                                                ; preds = %21, %3
  %9 = load i32, i32* %5, align 4, !dbg !27
  %10 = icmp sgt i32 %9, 0, !dbg !28
  br i1 %10, label %11, label %29, !dbg !26

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4, !dbg !29
  %13 = srem i32 %12, 2, !dbg !32
  %14 = icmp eq i32 %13, 1, !dbg !33
  br i1 %14, label %15, label %21, !dbg !34

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4, !dbg !35
  %17 = load i32, i32* %4, align 4, !dbg !36
  %18 = mul nsw i32 %16, %17, !dbg !37
  %19 = load i32, i32* %6, align 4, !dbg !38
  %int_cast_to_i64 = zext i32 %19 to i64, !dbg !39
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !39
  %20 = srem i32 %18, %19, !dbg !39, !klee.check.div !40
  store i32 %20, i32* %7, align 4, !dbg !41
  br label %21, !dbg !42

21:                                               ; preds = %15, %11
  %22 = load i32, i32* %5, align 4, !dbg !43
  %23 = sdiv i32 %22, 2, !dbg !43
  store i32 %23, i32* %5, align 4, !dbg !43
  %24 = load i32, i32* %4, align 4, !dbg !44
  %25 = load i32, i32* %4, align 4, !dbg !45
  %26 = mul nsw i32 %24, %25, !dbg !46
  %27 = load i32, i32* %6, align 4, !dbg !47
  %int_cast_to_i641 = zext i32 %27 to i64, !dbg !48
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !48
  %28 = srem i32 %26, %27, !dbg !48, !klee.check.div !40
  store i32 %28, i32* %4, align 4, !dbg !49
  br label %8, !dbg !26, !llvm.loop !50

29:                                               ; preds = %8
  %30 = load i32, i32* %7, align 4, !dbg !53
  ret i32 %30, !dbg !54
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !55 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %3, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %4, metadata !62, metadata !DIExpression()), !dbg !63
  %6 = bitcast i32* %2 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !65
  %7 = bitcast i32* %3 to i8*, !dbg !66
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !67
  %8 = bitcast i32* %4 to i8*, !dbg !68
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !69
  %9 = load i32, i32* %4, align 4, !dbg !70
  %10 = icmp sgt i32 %9, 1, !dbg !71
  br i1 %10, label %11, label %14, !dbg !72

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4, !dbg !73
  %13 = icmp sle i32 %12, 100, !dbg !74
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi i1 [ false, %0 ], [ %13, %11 ], !dbg !75
  %16 = zext i1 %15 to i32, !dbg !72
  %17 = sext i32 %16 to i64, !dbg !70
  call void @klee_assume(i64 noundef %17), !dbg !76
  %18 = load i32, i32* %3, align 4, !dbg !77
  %19 = icmp sge i32 %18, 0, !dbg !78
  br i1 %19, label %20, label %23, !dbg !79

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4, !dbg !80
  %22 = icmp sle i32 %21, 20, !dbg !81
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i1 [ false, %14 ], [ %22, %20 ], !dbg !75
  %25 = zext i1 %24 to i32, !dbg !79
  %26 = sext i32 %25 to i64, !dbg !77
  call void @klee_assume(i64 noundef %26), !dbg !82
  %27 = load i32, i32* %2, align 4, !dbg !83
  %28 = icmp sge i32 %27, 0, !dbg !84
  br i1 %28, label %29, label %33, !dbg !85

29:                                               ; preds = %23
  %30 = load i32, i32* %2, align 4, !dbg !86
  %31 = load i32, i32* %4, align 4, !dbg !87
  %32 = icmp slt i32 %30, %31, !dbg !88
  br label %33

33:                                               ; preds = %29, %23
  %34 = phi i1 [ false, %23 ], [ %32, %29 ], !dbg !75
  %35 = zext i1 %34 to i32, !dbg !85
  %36 = sext i32 %35 to i64, !dbg !83
  call void @klee_assume(i64 noundef %36), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %5, metadata !90, metadata !DIExpression()), !dbg !91
  %37 = load i32, i32* %2, align 4, !dbg !92
  %38 = load i32, i32* %3, align 4, !dbg !93
  %39 = load i32, i32* %4, align 4, !dbg !94
  %40 = call i32 @modexp(i32 noundef %37, i32 noundef %38, i32 noundef %39), !dbg !95
  store i32 %40, i32* %5, align 4, !dbg !91
  %41 = load i32, i32* %5, align 4, !dbg !96
  %42 = icmp slt i32 %41, 0, !dbg !98
  br i1 %42, label %47, label %43, !dbg !99

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4, !dbg !100
  %45 = load i32, i32* %4, align 4, !dbg !101
  %46 = icmp sge i32 %44, %45, !dbg !102
  br i1 %46, label %47, label %48, !dbg !103

47:                                               ; preds = %43, %33
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6, !dbg !104
  unreachable, !dbg !104

48:                                               ; preds = %43
  ret i32 0, !dbg !105
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %0) #4 !dbg !106 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !111, metadata !DIExpression()), !dbg !112
  %3 = load i64, i64* %2, align 8, !dbg !113
  %4 = icmp eq i64 %3, 0, !dbg !115
  br i1 %4, label %5, label %6, !dbg !116

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.7, i64 0, i64 0)) #7, !dbg !117
  unreachable, !dbg !117

6:                                                ; preds = %1
  ret void, !dbg !118
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "83.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "44cddfebdec2e1561de1dfb95dafdde2")
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "Ubuntu clang version 11.1.0-6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rongfeng/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee/build/runtime/Intrinsic")
!4 = !{}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!13 = !{!"Ubuntu clang version 11.1.0-6"}
!14 = distinct !DISubprogram(name: "modexp", scope: !1, file: !1, line: 5, type: !15, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !17, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "base", arg: 1, scope: !14, file: !1, line: 5, type: !17)
!19 = !DILocation(line: 5, column: 16, scope: !14)
!20 = !DILocalVariable(name: "exp", arg: 2, scope: !14, file: !1, line: 5, type: !17)
!21 = !DILocation(line: 5, column: 26, scope: !14)
!22 = !DILocalVariable(name: "mod", arg: 3, scope: !14, file: !1, line: 5, type: !17)
!23 = !DILocation(line: 5, column: 35, scope: !14)
!24 = !DILocalVariable(name: "result", scope: !14, file: !1, line: 6, type: !17)
!25 = !DILocation(line: 6, column: 9, scope: !14)
!26 = !DILocation(line: 7, column: 5, scope: !14)
!27 = !DILocation(line: 7, column: 11, scope: !14)
!28 = !DILocation(line: 7, column: 15, scope: !14)
!29 = !DILocation(line: 8, column: 12, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 8, column: 12)
!31 = distinct !DILexicalBlock(scope: !14, file: !1, line: 7, column: 20)
!32 = !DILocation(line: 8, column: 16, scope: !30)
!33 = !DILocation(line: 8, column: 20, scope: !30)
!34 = !DILocation(line: 8, column: 12, scope: !31)
!35 = !DILocation(line: 9, column: 23, scope: !30)
!36 = !DILocation(line: 9, column: 32, scope: !30)
!37 = !DILocation(line: 9, column: 30, scope: !30)
!38 = !DILocation(line: 9, column: 40, scope: !30)
!39 = !DILocation(line: 9, column: 38, scope: !30)
!40 = !{!"True"}
!41 = !DILocation(line: 9, column: 20, scope: !30)
!42 = !DILocation(line: 9, column: 13, scope: !30)
!43 = !DILocation(line: 10, column: 13, scope: !31)
!44 = !DILocation(line: 11, column: 17, scope: !31)
!45 = !DILocation(line: 11, column: 24, scope: !31)
!46 = !DILocation(line: 11, column: 22, scope: !31)
!47 = !DILocation(line: 11, column: 32, scope: !31)
!48 = !DILocation(line: 11, column: 30, scope: !31)
!49 = !DILocation(line: 11, column: 14, scope: !31)
!50 = distinct !{!50, !26, !51, !52}
!51 = !DILocation(line: 12, column: 5, scope: !14)
!52 = !{!"llvm.loop.mustprogress"}
!53 = !DILocation(line: 13, column: 12, scope: !14)
!54 = !DILocation(line: 13, column: 5, scope: !14)
!55 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 16, type: !56, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{!17}
!58 = !DILocalVariable(name: "base", scope: !55, file: !1, line: 17, type: !17)
!59 = !DILocation(line: 17, column: 9, scope: !55)
!60 = !DILocalVariable(name: "exp", scope: !55, file: !1, line: 17, type: !17)
!61 = !DILocation(line: 17, column: 15, scope: !55)
!62 = !DILocalVariable(name: "mod", scope: !55, file: !1, line: 17, type: !17)
!63 = !DILocation(line: 17, column: 20, scope: !55)
!64 = !DILocation(line: 18, column: 24, scope: !55)
!65 = !DILocation(line: 18, column: 5, scope: !55)
!66 = !DILocation(line: 19, column: 24, scope: !55)
!67 = !DILocation(line: 19, column: 5, scope: !55)
!68 = !DILocation(line: 20, column: 24, scope: !55)
!69 = !DILocation(line: 20, column: 5, scope: !55)
!70 = !DILocation(line: 21, column: 17, scope: !55)
!71 = !DILocation(line: 21, column: 21, scope: !55)
!72 = !DILocation(line: 21, column: 25, scope: !55)
!73 = !DILocation(line: 21, column: 28, scope: !55)
!74 = !DILocation(line: 21, column: 32, scope: !55)
!75 = !DILocation(line: 0, scope: !55)
!76 = !DILocation(line: 21, column: 5, scope: !55)
!77 = !DILocation(line: 22, column: 17, scope: !55)
!78 = !DILocation(line: 22, column: 21, scope: !55)
!79 = !DILocation(line: 22, column: 26, scope: !55)
!80 = !DILocation(line: 22, column: 29, scope: !55)
!81 = !DILocation(line: 22, column: 33, scope: !55)
!82 = !DILocation(line: 22, column: 5, scope: !55)
!83 = !DILocation(line: 23, column: 17, scope: !55)
!84 = !DILocation(line: 23, column: 22, scope: !55)
!85 = !DILocation(line: 23, column: 27, scope: !55)
!86 = !DILocation(line: 23, column: 30, scope: !55)
!87 = !DILocation(line: 23, column: 37, scope: !55)
!88 = !DILocation(line: 23, column: 35, scope: !55)
!89 = !DILocation(line: 23, column: 5, scope: !55)
!90 = !DILocalVariable(name: "r", scope: !55, file: !1, line: 24, type: !17)
!91 = !DILocation(line: 24, column: 9, scope: !55)
!92 = !DILocation(line: 24, column: 20, scope: !55)
!93 = !DILocation(line: 24, column: 26, scope: !55)
!94 = !DILocation(line: 24, column: 31, scope: !55)
!95 = !DILocation(line: 24, column: 13, scope: !55)
!96 = !DILocation(line: 25, column: 8, scope: !97)
!97 = distinct !DILexicalBlock(scope: !55, file: !1, line: 25, column: 8)
!98 = !DILocation(line: 25, column: 10, scope: !97)
!99 = !DILocation(line: 25, column: 14, scope: !97)
!100 = !DILocation(line: 25, column: 17, scope: !97)
!101 = !DILocation(line: 25, column: 22, scope: !97)
!102 = !DILocation(line: 25, column: 19, scope: !97)
!103 = !DILocation(line: 25, column: 8, scope: !55)
!104 = !DILocation(line: 26, column: 9, scope: !97)
!105 = !DILocation(line: 27, column: 5, scope: !55)
!106 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !107, file: !107, line: 12, type: !108, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!107 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee")
!108 = !DISubroutineType(types: !109)
!109 = !{null, !110}
!110 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!111 = !DILocalVariable(name: "z", arg: 1, scope: !106, file: !107, line: 12, type: !110)
!112 = !DILocation(line: 12, column: 36, scope: !106)
!113 = !DILocation(line: 13, column: 7, scope: !114)
!114 = distinct !DILexicalBlock(scope: !106, file: !107, line: 13, column: 7)
!115 = !DILocation(line: 13, column: 9, scope: !114)
!116 = !DILocation(line: 13, column: 7, scope: !106)
!117 = !DILocation(line: 14, column: 5, scope: !114)
!118 = !DILocation(line: 15, column: 1, scope: !106)
