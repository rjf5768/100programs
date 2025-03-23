; ModuleID = '37.bc'
source_filename = "37.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"37.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"/home/rongfeng/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.5 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.6 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gcd_iter(i32 noundef %0, i32 noundef %1) #0 !dbg !14 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !20, metadata !DIExpression()), !dbg !21
  br label %6, !dbg !22

6:                                                ; preds = %9, %2
  %7 = load i32, i32* %4, align 4, !dbg !23
  %8 = icmp ne i32 %7, 0, !dbg !24
  br i1 %8, label %9, label %15, !dbg !22

9:                                                ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %5, metadata !25, metadata !DIExpression()), !dbg !27
  %10 = load i32, i32* %4, align 4, !dbg !28
  store i32 %10, i32* %5, align 4, !dbg !27
  %11 = load i32, i32* %3, align 4, !dbg !29
  %12 = load i32, i32* %4, align 4, !dbg !30
  %int_cast_to_i64 = zext i32 %12 to i64, !dbg !31
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !31
  %13 = srem i32 %11, %12, !dbg !31, !klee.check.div !32
  store i32 %13, i32* %4, align 4, !dbg !33
  %14 = load i32, i32* %5, align 4, !dbg !34
  store i32 %14, i32* %3, align 4, !dbg !35
  br label %6, !dbg !22, !llvm.loop !36

15:                                               ; preds = %6
  %16 = load i32, i32* %3, align 4, !dbg !39
  ret i32 %16, !dbg !40
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lcm_iter(i32 noundef %0, i32 noundef %1) #0 !dbg !41 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !44, metadata !DIExpression()), !dbg !45
  %5 = load i32, i32* %3, align 4, !dbg !46
  %6 = load i32, i32* %3, align 4, !dbg !47
  %7 = load i32, i32* %4, align 4, !dbg !48
  %8 = call i32 @gcd_iter(i32 noundef %6, i32 noundef %7), !dbg !49
  %int_cast_to_i64 = zext i32 %8 to i64, !dbg !50
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !50
  %9 = sdiv i32 %5, %8, !dbg !50, !klee.check.div !32
  %10 = load i32, i32* %4, align 4, !dbg !51
  %11 = mul nsw i32 %9, %10, !dbg !52
  ret i32 %11, !dbg !53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !54 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %3, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %4, metadata !61, metadata !DIExpression()), !dbg !62
  %5 = bitcast i32* %2 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !64
  %6 = bitcast i32* %3 to i8*, !dbg !65
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !66
  %7 = load i32, i32* %2, align 4, !dbg !67
  %8 = icmp sgt i32 %7, 0, !dbg !68
  br i1 %8, label %9, label %18, !dbg !69

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4, !dbg !70
  %11 = icmp sgt i32 %10, 0, !dbg !71
  br i1 %11, label %12, label %18, !dbg !72

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4, !dbg !73
  %14 = icmp sle i32 %13, 100, !dbg !74
  br i1 %14, label %15, label %18, !dbg !75

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4, !dbg !76
  %17 = icmp sle i32 %16, 100, !dbg !77
  br label %18

18:                                               ; preds = %15, %12, %9, %0
  %19 = phi i1 [ false, %12 ], [ false, %9 ], [ false, %0 ], [ %17, %15 ], !dbg !78
  %20 = zext i1 %19 to i32, !dbg !75
  %21 = sext i32 %20 to i64, !dbg !67
  call void @klee_assume(i64 noundef %21), !dbg !79
  %22 = load i32, i32* %2, align 4, !dbg !80
  %23 = load i32, i32* %3, align 4, !dbg !81
  %24 = call i32 @lcm_iter(i32 noundef %22, i32 noundef %23), !dbg !82
  store i32 %24, i32* %4, align 4, !dbg !83
  %25 = load i32, i32* %4, align 4, !dbg !84
  %26 = load i32, i32* %2, align 4, !dbg !86
  %int_cast_to_i64 = zext i32 %26 to i64, !dbg !87
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !87
  %27 = srem i32 %25, %26, !dbg !87, !klee.check.div !32
  %28 = icmp ne i32 %27, 0, !dbg !88
  br i1 %28, label %34, label %29, !dbg !89

29:                                               ; preds = %18
  %30 = load i32, i32* %4, align 4, !dbg !90
  %31 = load i32, i32* %3, align 4, !dbg !91
  %int_cast_to_i641 = zext i32 %31 to i64, !dbg !92
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !92
  %32 = srem i32 %30, %31, !dbg !92, !klee.check.div !32
  %33 = icmp ne i32 %32, 0, !dbg !93
  br i1 %33, label %34, label %35, !dbg !94

34:                                               ; preds = %29, %18
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6, !dbg !95
  unreachable, !dbg !95

35:                                               ; preds = %29
  ret i32 0, !dbg !96
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %0) #4 !dbg !97 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !102, metadata !DIExpression()), !dbg !103
  %3 = load i64, i64* %2, align 8, !dbg !104
  %4 = icmp eq i64 %3, 0, !dbg !106
  br i1 %4, label %5, label %6, !dbg !107

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.6, i64 0, i64 0)) #7, !dbg !108
  unreachable, !dbg !108

6:                                                ; preds = %1
  ret void, !dbg !109
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
!1 = !DIFile(filename: "37.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "f8f25e4cff4839897dd7015935c3e88f")
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
!14 = distinct !DISubprogram(name: "gcd_iter", scope: !1, file: !1, line: 5, type: !15, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 5, type: !17)
!19 = !DILocation(line: 5, column: 18, scope: !14)
!20 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 5, type: !17)
!21 = !DILocation(line: 5, column: 25, scope: !14)
!22 = !DILocation(line: 6, column: 3, scope: !14)
!23 = !DILocation(line: 6, column: 9, scope: !14)
!24 = !DILocation(line: 6, column: 11, scope: !14)
!25 = !DILocalVariable(name: "temp", scope: !26, file: !1, line: 7, type: !17)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 6, column: 17)
!27 = !DILocation(line: 7, column: 9, scope: !26)
!28 = !DILocation(line: 7, column: 16, scope: !26)
!29 = !DILocation(line: 8, column: 9, scope: !26)
!30 = !DILocation(line: 8, column: 13, scope: !26)
!31 = !DILocation(line: 8, column: 11, scope: !26)
!32 = !{!"True"}
!33 = !DILocation(line: 8, column: 7, scope: !26)
!34 = !DILocation(line: 9, column: 9, scope: !26)
!35 = !DILocation(line: 9, column: 7, scope: !26)
!36 = distinct !{!36, !22, !37, !38}
!37 = !DILocation(line: 10, column: 3, scope: !14)
!38 = !{!"llvm.loop.mustprogress"}
!39 = !DILocation(line: 11, column: 10, scope: !14)
!40 = !DILocation(line: 11, column: 3, scope: !14)
!41 = distinct !DISubprogram(name: "lcm_iter", scope: !1, file: !1, line: 14, type: !15, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!42 = !DILocalVariable(name: "a", arg: 1, scope: !41, file: !1, line: 14, type: !17)
!43 = !DILocation(line: 14, column: 18, scope: !41)
!44 = !DILocalVariable(name: "b", arg: 2, scope: !41, file: !1, line: 14, type: !17)
!45 = !DILocation(line: 14, column: 25, scope: !41)
!46 = !DILocation(line: 15, column: 11, scope: !41)
!47 = !DILocation(line: 15, column: 24, scope: !41)
!48 = !DILocation(line: 15, column: 27, scope: !41)
!49 = !DILocation(line: 15, column: 15, scope: !41)
!50 = !DILocation(line: 15, column: 13, scope: !41)
!51 = !DILocation(line: 15, column: 33, scope: !41)
!52 = !DILocation(line: 15, column: 31, scope: !41)
!53 = !DILocation(line: 15, column: 3, scope: !41)
!54 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !55, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!55 = !DISubroutineType(types: !56)
!56 = !{!17}
!57 = !DILocalVariable(name: "a", scope: !54, file: !1, line: 19, type: !17)
!58 = !DILocation(line: 19, column: 7, scope: !54)
!59 = !DILocalVariable(name: "b", scope: !54, file: !1, line: 19, type: !17)
!60 = !DILocation(line: 19, column: 10, scope: !54)
!61 = !DILocalVariable(name: "l", scope: !54, file: !1, line: 19, type: !17)
!62 = !DILocation(line: 19, column: 13, scope: !54)
!63 = !DILocation(line: 20, column: 22, scope: !54)
!64 = !DILocation(line: 20, column: 3, scope: !54)
!65 = !DILocation(line: 21, column: 22, scope: !54)
!66 = !DILocation(line: 21, column: 3, scope: !54)
!67 = !DILocation(line: 22, column: 15, scope: !54)
!68 = !DILocation(line: 22, column: 17, scope: !54)
!69 = !DILocation(line: 22, column: 21, scope: !54)
!70 = !DILocation(line: 22, column: 24, scope: !54)
!71 = !DILocation(line: 22, column: 26, scope: !54)
!72 = !DILocation(line: 22, column: 30, scope: !54)
!73 = !DILocation(line: 22, column: 33, scope: !54)
!74 = !DILocation(line: 22, column: 35, scope: !54)
!75 = !DILocation(line: 22, column: 42, scope: !54)
!76 = !DILocation(line: 22, column: 45, scope: !54)
!77 = !DILocation(line: 22, column: 47, scope: !54)
!78 = !DILocation(line: 0, scope: !54)
!79 = !DILocation(line: 22, column: 3, scope: !54)
!80 = !DILocation(line: 23, column: 16, scope: !54)
!81 = !DILocation(line: 23, column: 19, scope: !54)
!82 = !DILocation(line: 23, column: 7, scope: !54)
!83 = !DILocation(line: 23, column: 5, scope: !54)
!84 = !DILocation(line: 24, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !54, file: !1, line: 24, column: 6)
!86 = !DILocation(line: 24, column: 10, scope: !85)
!87 = !DILocation(line: 24, column: 8, scope: !85)
!88 = !DILocation(line: 24, column: 12, scope: !85)
!89 = !DILocation(line: 24, column: 17, scope: !85)
!90 = !DILocation(line: 24, column: 20, scope: !85)
!91 = !DILocation(line: 24, column: 24, scope: !85)
!92 = !DILocation(line: 24, column: 22, scope: !85)
!93 = !DILocation(line: 24, column: 26, scope: !85)
!94 = !DILocation(line: 24, column: 6, scope: !54)
!95 = !DILocation(line: 25, column: 5, scope: !85)
!96 = !DILocation(line: 26, column: 3, scope: !54)
!97 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !98, file: !98, line: 12, type: !99, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!98 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee")
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101}
!101 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!102 = !DILocalVariable(name: "z", arg: 1, scope: !97, file: !98, line: 12, type: !101)
!103 = !DILocation(line: 12, column: 36, scope: !97)
!104 = !DILocation(line: 13, column: 7, scope: !105)
!105 = distinct !DILexicalBlock(scope: !97, file: !98, line: 13, column: 7)
!106 = !DILocation(line: 13, column: 9, scope: !105)
!107 = !DILocation(line: 13, column: 7, scope: !97)
!108 = !DILocation(line: 14, column: 5, scope: !105)
!109 = !DILocation(line: 15, column: 1, scope: !97)
