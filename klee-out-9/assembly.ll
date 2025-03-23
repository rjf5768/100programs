; ModuleID = '10.bc'
source_filename = "10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"10.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"/home/rongfeng/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.5 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.6 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gcd(i32 noundef %0, i32 noundef %1) #0 !dbg !14 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !20, metadata !DIExpression()), !dbg !21
  %6 = load i32, i32* %5, align 4, !dbg !22
  %7 = icmp eq i32 %6, 0, !dbg !24
  br i1 %7, label %8, label %10, !dbg !25

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4, !dbg !26
  store i32 %9, i32* %3, align 4, !dbg !27
  br label %16, !dbg !27

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4, !dbg !28
  %12 = load i32, i32* %4, align 4, !dbg !29
  %13 = load i32, i32* %5, align 4, !dbg !30
  %int_cast_to_i64 = zext i32 %13 to i64, !dbg !31
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !31
  %14 = srem i32 %12, %13, !dbg !31, !klee.check.div !32
  %15 = call i32 @gcd(i32 noundef %11, i32 noundef %14), !dbg !33
  store i32 %15, i32* %3, align 4, !dbg !34
  br label %16, !dbg !34

16:                                               ; preds = %10, %8
  %17 = load i32, i32* %3, align 4, !dbg !35
  ret i32 %17, !dbg !35
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lcm(i32 noundef %0, i32 noundef %1) #0 !dbg !36 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !39, metadata !DIExpression()), !dbg !40
  %5 = load i32, i32* %3, align 4, !dbg !41
  %6 = load i32, i32* %3, align 4, !dbg !42
  %7 = load i32, i32* %4, align 4, !dbg !43
  %8 = call i32 @gcd(i32 noundef %6, i32 noundef %7), !dbg !44
  %int_cast_to_i64 = zext i32 %8 to i64, !dbg !45
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !45
  %9 = sdiv i32 %5, %8, !dbg !45, !klee.check.div !32
  %10 = load i32, i32* %4, align 4, !dbg !46
  %11 = mul nsw i32 %9, %10, !dbg !47
  ret i32 %11, !dbg !48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !49 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %3, metadata !54, metadata !DIExpression()), !dbg !55
  %5 = bitcast i32* %2 to i8*, !dbg !56
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !57
  %6 = bitcast i32* %3 to i8*, !dbg !58
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !59
  %7 = load i32, i32* %2, align 4, !dbg !60
  %8 = icmp sgt i32 %7, 0, !dbg !61
  br i1 %8, label %9, label %12, !dbg !62

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !63
  %11 = icmp sle i32 %10, 100, !dbg !64
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !65
  %14 = zext i1 %13 to i32, !dbg !62
  %15 = sext i32 %14 to i64, !dbg !60
  call void @klee_assume(i64 noundef %15), !dbg !66
  %16 = load i32, i32* %3, align 4, !dbg !67
  %17 = icmp sgt i32 %16, 0, !dbg !68
  br i1 %17, label %18, label %21, !dbg !69

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4, !dbg !70
  %20 = icmp sle i32 %19, 100, !dbg !71
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i1 [ false, %12 ], [ %20, %18 ], !dbg !65
  %23 = zext i1 %22 to i32, !dbg !69
  %24 = sext i32 %23 to i64, !dbg !67
  call void @klee_assume(i64 noundef %24), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %4, metadata !73, metadata !DIExpression()), !dbg !74
  %25 = load i32, i32* %2, align 4, !dbg !75
  %26 = load i32, i32* %3, align 4, !dbg !76
  %27 = call i32 @lcm(i32 noundef %25, i32 noundef %26), !dbg !77
  store i32 %27, i32* %4, align 4, !dbg !74
  %28 = load i32, i32* %4, align 4, !dbg !78
  %29 = load i32, i32* %2, align 4, !dbg !80
  %int_cast_to_i64 = zext i32 %29 to i64, !dbg !81
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !81
  %30 = srem i32 %28, %29, !dbg !81, !klee.check.div !32
  %31 = icmp ne i32 %30, 0, !dbg !82
  br i1 %31, label %37, label %32, !dbg !83

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4, !dbg !84
  %34 = load i32, i32* %3, align 4, !dbg !85
  %int_cast_to_i641 = zext i32 %34 to i64, !dbg !86
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !86
  %35 = srem i32 %33, %34, !dbg !86, !klee.check.div !32
  %36 = icmp ne i32 %35, 0, !dbg !87
  br i1 %36, label %37, label %38, !dbg !88

37:                                               ; preds = %32, %21
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6, !dbg !89
  unreachable, !dbg !89

38:                                               ; preds = %32
  ret i32 0, !dbg !90
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %0) #4 !dbg !91 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !96, metadata !DIExpression()), !dbg !97
  %3 = load i64, i64* %2, align 8, !dbg !98
  %4 = icmp eq i64 %3, 0, !dbg !100
  br i1 %4, label %5, label %6, !dbg !101

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.6, i64 0, i64 0)) #7, !dbg !102
  unreachable, !dbg !102

6:                                                ; preds = %1
  ret void, !dbg !103
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
!1 = !DIFile(filename: "10.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "1e68fcd272c3ef7c25a732b034d7eb3c")
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
!14 = distinct !DISubprogram(name: "gcd", scope: !1, file: !1, line: 5, type: !15, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 5, type: !17)
!19 = !DILocation(line: 5, column: 13, scope: !14)
!20 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 5, type: !17)
!21 = !DILocation(line: 5, column: 20, scope: !14)
!22 = !DILocation(line: 6, column: 6, scope: !23)
!23 = distinct !DILexicalBlock(scope: !14, file: !1, line: 6, column: 6)
!24 = !DILocation(line: 6, column: 8, scope: !23)
!25 = !DILocation(line: 6, column: 6, scope: !14)
!26 = !DILocation(line: 6, column: 21, scope: !23)
!27 = !DILocation(line: 6, column: 14, scope: !23)
!28 = !DILocation(line: 7, column: 14, scope: !14)
!29 = !DILocation(line: 7, column: 17, scope: !14)
!30 = !DILocation(line: 7, column: 21, scope: !14)
!31 = !DILocation(line: 7, column: 19, scope: !14)
!32 = !{!"True"}
!33 = !DILocation(line: 7, column: 10, scope: !14)
!34 = !DILocation(line: 7, column: 3, scope: !14)
!35 = !DILocation(line: 8, column: 1, scope: !14)
!36 = distinct !DISubprogram(name: "lcm", scope: !1, file: !1, line: 10, type: !15, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!37 = !DILocalVariable(name: "a", arg: 1, scope: !36, file: !1, line: 10, type: !17)
!38 = !DILocation(line: 10, column: 13, scope: !36)
!39 = !DILocalVariable(name: "b", arg: 2, scope: !36, file: !1, line: 10, type: !17)
!40 = !DILocation(line: 10, column: 20, scope: !36)
!41 = !DILocation(line: 11, column: 11, scope: !36)
!42 = !DILocation(line: 11, column: 19, scope: !36)
!43 = !DILocation(line: 11, column: 22, scope: !36)
!44 = !DILocation(line: 11, column: 15, scope: !36)
!45 = !DILocation(line: 11, column: 13, scope: !36)
!46 = !DILocation(line: 11, column: 28, scope: !36)
!47 = !DILocation(line: 11, column: 26, scope: !36)
!48 = !DILocation(line: 11, column: 3, scope: !36)
!49 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !50, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!50 = !DISubroutineType(types: !51)
!51 = !{!17}
!52 = !DILocalVariable(name: "a", scope: !49, file: !1, line: 15, type: !17)
!53 = !DILocation(line: 15, column: 7, scope: !49)
!54 = !DILocalVariable(name: "b", scope: !49, file: !1, line: 15, type: !17)
!55 = !DILocation(line: 15, column: 10, scope: !49)
!56 = !DILocation(line: 16, column: 22, scope: !49)
!57 = !DILocation(line: 16, column: 3, scope: !49)
!58 = !DILocation(line: 17, column: 22, scope: !49)
!59 = !DILocation(line: 17, column: 3, scope: !49)
!60 = !DILocation(line: 18, column: 15, scope: !49)
!61 = !DILocation(line: 18, column: 17, scope: !49)
!62 = !DILocation(line: 18, column: 21, scope: !49)
!63 = !DILocation(line: 18, column: 24, scope: !49)
!64 = !DILocation(line: 18, column: 26, scope: !49)
!65 = !DILocation(line: 0, scope: !49)
!66 = !DILocation(line: 18, column: 3, scope: !49)
!67 = !DILocation(line: 19, column: 15, scope: !49)
!68 = !DILocation(line: 19, column: 17, scope: !49)
!69 = !DILocation(line: 19, column: 21, scope: !49)
!70 = !DILocation(line: 19, column: 24, scope: !49)
!71 = !DILocation(line: 19, column: 26, scope: !49)
!72 = !DILocation(line: 19, column: 3, scope: !49)
!73 = !DILocalVariable(name: "l", scope: !49, file: !1, line: 20, type: !17)
!74 = !DILocation(line: 20, column: 7, scope: !49)
!75 = !DILocation(line: 20, column: 15, scope: !49)
!76 = !DILocation(line: 20, column: 18, scope: !49)
!77 = !DILocation(line: 20, column: 11, scope: !49)
!78 = !DILocation(line: 21, column: 6, scope: !79)
!79 = distinct !DILexicalBlock(scope: !49, file: !1, line: 21, column: 6)
!80 = !DILocation(line: 21, column: 10, scope: !79)
!81 = !DILocation(line: 21, column: 8, scope: !79)
!82 = !DILocation(line: 21, column: 12, scope: !79)
!83 = !DILocation(line: 21, column: 17, scope: !79)
!84 = !DILocation(line: 21, column: 20, scope: !79)
!85 = !DILocation(line: 21, column: 24, scope: !79)
!86 = !DILocation(line: 21, column: 22, scope: !79)
!87 = !DILocation(line: 21, column: 26, scope: !79)
!88 = !DILocation(line: 21, column: 6, scope: !49)
!89 = !DILocation(line: 22, column: 5, scope: !79)
!90 = !DILocation(line: 23, column: 3, scope: !49)
!91 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !92, file: !92, line: 12, type: !93, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!92 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee")
!93 = !DISubroutineType(types: !94)
!94 = !{null, !95}
!95 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!96 = !DILocalVariable(name: "z", arg: 1, scope: !91, file: !92, line: 12, type: !95)
!97 = !DILocation(line: 12, column: 36, scope: !91)
!98 = !DILocation(line: 13, column: 7, scope: !99)
!99 = distinct !DILexicalBlock(scope: !91, file: !92, line: 13, column: 7)
!100 = !DILocation(line: 13, column: 9, scope: !99)
!101 = !DILocation(line: 13, column: 7, scope: !91)
!102 = !DILocation(line: 14, column: 5, scope: !99)
!103 = !DILocation(line: 15, column: 1, scope: !91)
