; ModuleID = '11.bc'
source_filename = "11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"11.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
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
  %8 = load i32, i32* %4, align 4, !dbg !26
  %9 = load i32, i32* %6, align 4, !dbg !27
  %int_cast_to_i64 = zext i32 %9 to i64, !dbg !28
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !28
  %10 = srem i32 %8, %9, !dbg !28, !klee.check.div !29
  store i32 %10, i32* %4, align 4, !dbg !30
  br label %11, !dbg !31

11:                                               ; preds = %24, %3
  %12 = load i32, i32* %5, align 4, !dbg !32
  %13 = icmp sgt i32 %12, 0, !dbg !33
  br i1 %13, label %14, label %32, !dbg !31

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4, !dbg !34
  %16 = srem i32 %15, 2, !dbg !37
  %17 = icmp eq i32 %16, 1, !dbg !38
  br i1 %17, label %18, label %24, !dbg !39

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4, !dbg !40
  %20 = load i32, i32* %4, align 4, !dbg !41
  %21 = mul nsw i32 %19, %20, !dbg !42
  %22 = load i32, i32* %6, align 4, !dbg !43
  %int_cast_to_i641 = zext i32 %22 to i64, !dbg !44
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !44
  %23 = srem i32 %21, %22, !dbg !44, !klee.check.div !29
  store i32 %23, i32* %7, align 4, !dbg !45
  br label %24, !dbg !46

24:                                               ; preds = %18, %14
  %25 = load i32, i32* %5, align 4, !dbg !47
  %26 = sdiv i32 %25, 2, !dbg !48
  store i32 %26, i32* %5, align 4, !dbg !49
  %27 = load i32, i32* %4, align 4, !dbg !50
  %28 = load i32, i32* %4, align 4, !dbg !51
  %29 = mul nsw i32 %27, %28, !dbg !52
  %30 = load i32, i32* %6, align 4, !dbg !53
  %int_cast_to_i642 = zext i32 %30 to i64, !dbg !54
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !54
  %31 = srem i32 %29, %30, !dbg !54, !klee.check.div !29
  store i32 %31, i32* %4, align 4, !dbg !55
  br label %11, !dbg !31, !llvm.loop !56

32:                                               ; preds = %11
  %33 = load i32, i32* %7, align 4, !dbg !59
  ret i32 %33, !dbg !60
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !61 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %3, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %4, metadata !68, metadata !DIExpression()), !dbg !69
  %6 = bitcast i32* %2 to i8*, !dbg !70
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !71
  %7 = bitcast i32* %3 to i8*, !dbg !72
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !73
  %8 = bitcast i32* %4 to i8*, !dbg !74
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !75
  %9 = load i32, i32* %4, align 4, !dbg !76
  %10 = icmp sgt i32 %9, 1, !dbg !77
  %11 = zext i1 %10 to i32, !dbg !77
  %12 = sext i32 %11 to i64, !dbg !76
  call void @klee_assume(i64 noundef %12), !dbg !78
  %13 = load i32, i32* %3, align 4, !dbg !79
  %14 = icmp sge i32 %13, 0, !dbg !80
  br i1 %14, label %15, label %18, !dbg !81

15:                                               ; preds = %0
  %16 = load i32, i32* %3, align 4, !dbg !82
  %17 = icmp sle i32 %16, 20, !dbg !83
  br label %18

18:                                               ; preds = %15, %0
  %19 = phi i1 [ false, %0 ], [ %17, %15 ], !dbg !84
  %20 = zext i1 %19 to i32, !dbg !81
  %21 = sext i32 %20 to i64, !dbg !79
  call void @klee_assume(i64 noundef %21), !dbg !85
  %22 = load i32, i32* %2, align 4, !dbg !86
  %23 = icmp sge i32 %22, 0, !dbg !87
  br i1 %23, label %24, label %27, !dbg !88

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4, !dbg !89
  %26 = icmp sle i32 %25, 100, !dbg !90
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i1 [ false, %18 ], [ %26, %24 ], !dbg !84
  %29 = zext i1 %28 to i32, !dbg !88
  %30 = sext i32 %29 to i64, !dbg !86
  call void @klee_assume(i64 noundef %30), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %5, metadata !92, metadata !DIExpression()), !dbg !93
  %31 = load i32, i32* %2, align 4, !dbg !94
  %32 = load i32, i32* %3, align 4, !dbg !95
  %33 = load i32, i32* %4, align 4, !dbg !96
  %34 = call i32 @modexp(i32 noundef %31, i32 noundef %32, i32 noundef %33), !dbg !97
  store i32 %34, i32* %5, align 4, !dbg !93
  %35 = load i32, i32* %5, align 4, !dbg !98
  %36 = icmp slt i32 %35, 0, !dbg !100
  br i1 %36, label %41, label %37, !dbg !101

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4, !dbg !102
  %39 = load i32, i32* %4, align 4, !dbg !103
  %40 = icmp sge i32 %38, %39, !dbg !104
  br i1 %40, label %41, label %42, !dbg !105

41:                                               ; preds = %37, %27
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6, !dbg !106
  unreachable, !dbg !106

42:                                               ; preds = %37
  ret i32 0, !dbg !107
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %0) #4 !dbg !108 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !113, metadata !DIExpression()), !dbg !114
  %3 = load i64, i64* %2, align 8, !dbg !115
  %4 = icmp eq i64 %3, 0, !dbg !117
  br i1 %4, label %5, label %6, !dbg !118

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.7, i64 0, i64 0)) #7, !dbg !119
  unreachable, !dbg !119

6:                                                ; preds = %1
  ret void, !dbg !120
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
!1 = !DIFile(filename: "11.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "53be6a800f09de32cf81661a803581b5")
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
!25 = !DILocation(line: 6, column: 7, scope: !14)
!26 = !DILocation(line: 7, column: 10, scope: !14)
!27 = !DILocation(line: 7, column: 17, scope: !14)
!28 = !DILocation(line: 7, column: 15, scope: !14)
!29 = !{!"True"}
!30 = !DILocation(line: 7, column: 8, scope: !14)
!31 = !DILocation(line: 8, column: 3, scope: !14)
!32 = !DILocation(line: 8, column: 9, scope: !14)
!33 = !DILocation(line: 8, column: 13, scope: !14)
!34 = !DILocation(line: 9, column: 8, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 9, column: 8)
!36 = distinct !DILexicalBlock(scope: !14, file: !1, line: 8, column: 18)
!37 = !DILocation(line: 9, column: 12, scope: !35)
!38 = !DILocation(line: 9, column: 16, scope: !35)
!39 = !DILocation(line: 9, column: 8, scope: !36)
!40 = !DILocation(line: 10, column: 17, scope: !35)
!41 = !DILocation(line: 10, column: 26, scope: !35)
!42 = !DILocation(line: 10, column: 24, scope: !35)
!43 = !DILocation(line: 10, column: 34, scope: !35)
!44 = !DILocation(line: 10, column: 32, scope: !35)
!45 = !DILocation(line: 10, column: 14, scope: !35)
!46 = !DILocation(line: 10, column: 7, scope: !35)
!47 = !DILocation(line: 11, column: 11, scope: !36)
!48 = !DILocation(line: 11, column: 15, scope: !36)
!49 = !DILocation(line: 11, column: 9, scope: !36)
!50 = !DILocation(line: 12, column: 13, scope: !36)
!51 = !DILocation(line: 12, column: 20, scope: !36)
!52 = !DILocation(line: 12, column: 18, scope: !36)
!53 = !DILocation(line: 12, column: 28, scope: !36)
!54 = !DILocation(line: 12, column: 26, scope: !36)
!55 = !DILocation(line: 12, column: 10, scope: !36)
!56 = distinct !{!56, !31, !57, !58}
!57 = !DILocation(line: 13, column: 3, scope: !14)
!58 = !{!"llvm.loop.mustprogress"}
!59 = !DILocation(line: 14, column: 10, scope: !14)
!60 = !DILocation(line: 14, column: 3, scope: !14)
!61 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 17, type: !62, scopeLine: 17, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{!17}
!64 = !DILocalVariable(name: "base", scope: !61, file: !1, line: 18, type: !17)
!65 = !DILocation(line: 18, column: 7, scope: !61)
!66 = !DILocalVariable(name: "exp", scope: !61, file: !1, line: 18, type: !17)
!67 = !DILocation(line: 18, column: 13, scope: !61)
!68 = !DILocalVariable(name: "mod", scope: !61, file: !1, line: 18, type: !17)
!69 = !DILocation(line: 18, column: 18, scope: !61)
!70 = !DILocation(line: 19, column: 22, scope: !61)
!71 = !DILocation(line: 19, column: 3, scope: !61)
!72 = !DILocation(line: 20, column: 22, scope: !61)
!73 = !DILocation(line: 20, column: 3, scope: !61)
!74 = !DILocation(line: 21, column: 22, scope: !61)
!75 = !DILocation(line: 21, column: 3, scope: !61)
!76 = !DILocation(line: 22, column: 15, scope: !61)
!77 = !DILocation(line: 22, column: 19, scope: !61)
!78 = !DILocation(line: 22, column: 3, scope: !61)
!79 = !DILocation(line: 23, column: 15, scope: !61)
!80 = !DILocation(line: 23, column: 19, scope: !61)
!81 = !DILocation(line: 23, column: 24, scope: !61)
!82 = !DILocation(line: 23, column: 27, scope: !61)
!83 = !DILocation(line: 23, column: 31, scope: !61)
!84 = !DILocation(line: 0, scope: !61)
!85 = !DILocation(line: 23, column: 3, scope: !61)
!86 = !DILocation(line: 24, column: 15, scope: !61)
!87 = !DILocation(line: 24, column: 20, scope: !61)
!88 = !DILocation(line: 24, column: 25, scope: !61)
!89 = !DILocation(line: 24, column: 28, scope: !61)
!90 = !DILocation(line: 24, column: 33, scope: !61)
!91 = !DILocation(line: 24, column: 3, scope: !61)
!92 = !DILocalVariable(name: "result", scope: !61, file: !1, line: 25, type: !17)
!93 = !DILocation(line: 25, column: 7, scope: !61)
!94 = !DILocation(line: 25, column: 23, scope: !61)
!95 = !DILocation(line: 25, column: 29, scope: !61)
!96 = !DILocation(line: 25, column: 34, scope: !61)
!97 = !DILocation(line: 25, column: 16, scope: !61)
!98 = !DILocation(line: 26, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !61, file: !1, line: 26, column: 6)
!100 = !DILocation(line: 26, column: 13, scope: !99)
!101 = !DILocation(line: 26, column: 17, scope: !99)
!102 = !DILocation(line: 26, column: 20, scope: !99)
!103 = !DILocation(line: 26, column: 30, scope: !99)
!104 = !DILocation(line: 26, column: 27, scope: !99)
!105 = !DILocation(line: 26, column: 6, scope: !61)
!106 = !DILocation(line: 27, column: 5, scope: !99)
!107 = !DILocation(line: 28, column: 3, scope: !61)
!108 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !109, file: !109, line: 12, type: !110, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!109 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee")
!110 = !DISubroutineType(types: !111)
!111 = !{null, !112}
!112 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!113 = !DILocalVariable(name: "z", arg: 1, scope: !108, file: !109, line: 12, type: !112)
!114 = !DILocation(line: 12, column: 36, scope: !108)
!115 = !DILocation(line: 13, column: 7, scope: !116)
!116 = distinct !DILexicalBlock(scope: !108, file: !109, line: 13, column: 7)
!117 = !DILocation(line: 13, column: 9, scope: !116)
!118 = !DILocation(line: 13, column: 7, scope: !108)
!119 = !DILocation(line: 14, column: 5, scope: !116)
!120 = !DILocation(line: 15, column: 1, scope: !108)
