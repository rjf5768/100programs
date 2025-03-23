; ModuleID = '7.bc'
source_filename = "7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"7.c\00", align 1
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
define dso_local i32 @main() #0 !dbg !36 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %3, metadata !41, metadata !DIExpression()), !dbg !42
  %5 = bitcast i32* %2 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !44
  %6 = bitcast i32* %3 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !46
  %7 = load i32, i32* %2, align 4, !dbg !47
  %8 = icmp sgt i32 %7, 0, !dbg !48
  %9 = zext i1 %8 to i32, !dbg !48
  %10 = sext i32 %9 to i64, !dbg !47
  call void @klee_assume(i64 noundef %10), !dbg !49
  %11 = load i32, i32* %3, align 4, !dbg !50
  %12 = icmp sgt i32 %11, 0, !dbg !51
  %13 = zext i1 %12 to i32, !dbg !51
  %14 = sext i32 %13 to i64, !dbg !50
  call void @klee_assume(i64 noundef %14), !dbg !52
  %15 = load i32, i32* %2, align 4, !dbg !53
  %16 = icmp sle i32 %15, 100, !dbg !54
  %17 = zext i1 %16 to i32, !dbg !54
  %18 = sext i32 %17 to i64, !dbg !53
  call void @klee_assume(i64 noundef %18), !dbg !55
  %19 = load i32, i32* %3, align 4, !dbg !56
  %20 = icmp sle i32 %19, 100, !dbg !57
  %21 = zext i1 %20 to i32, !dbg !57
  %22 = sext i32 %21 to i64, !dbg !56
  call void @klee_assume(i64 noundef %22), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %4, metadata !59, metadata !DIExpression()), !dbg !60
  %23 = load i32, i32* %2, align 4, !dbg !61
  %24 = load i32, i32* %3, align 4, !dbg !62
  %25 = call i32 @gcd(i32 noundef %23, i32 noundef %24), !dbg !63
  store i32 %25, i32* %4, align 4, !dbg !60
  %26 = load i32, i32* %2, align 4, !dbg !64
  %27 = load i32, i32* %4, align 4, !dbg !66
  %int_cast_to_i64 = zext i32 %27 to i64, !dbg !67
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !67
  %28 = srem i32 %26, %27, !dbg !67, !klee.check.div !32
  %29 = icmp ne i32 %28, 0, !dbg !68
  br i1 %29, label %35, label %30, !dbg !69

30:                                               ; preds = %0
  %31 = load i32, i32* %3, align 4, !dbg !70
  %32 = load i32, i32* %4, align 4, !dbg !71
  %int_cast_to_i641 = zext i32 %32 to i64, !dbg !72
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !72
  %33 = srem i32 %31, %32, !dbg !72, !klee.check.div !32
  %34 = icmp ne i32 %33, 0, !dbg !73
  br i1 %34, label %35, label %36, !dbg !74

35:                                               ; preds = %30, %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef 21, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6, !dbg !75
  unreachable, !dbg !75

36:                                               ; preds = %30
  ret i32 0, !dbg !76
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %0) #4 !dbg !77 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !82, metadata !DIExpression()), !dbg !83
  %3 = load i64, i64* %2, align 8, !dbg !84
  %4 = icmp eq i64 %3, 0, !dbg !86
  br i1 %4, label %5, label %6, !dbg !87

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.6, i64 0, i64 0)) #7, !dbg !88
  unreachable, !dbg !88

6:                                                ; preds = %1
  ret void, !dbg !89
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
!1 = !DIFile(filename: "7.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "4f460aeff6bdc3e8cc2d4faad854d591")
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
!26 = !DILocation(line: 7, column: 12, scope: !23)
!27 = !DILocation(line: 7, column: 5, scope: !23)
!28 = !DILocation(line: 8, column: 14, scope: !14)
!29 = !DILocation(line: 8, column: 17, scope: !14)
!30 = !DILocation(line: 8, column: 21, scope: !14)
!31 = !DILocation(line: 8, column: 19, scope: !14)
!32 = !{!"True"}
!33 = !DILocation(line: 8, column: 10, scope: !14)
!34 = !DILocation(line: 8, column: 3, scope: !14)
!35 = !DILocation(line: 9, column: 1, scope: !14)
!36 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !37, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!37 = !DISubroutineType(types: !38)
!38 = !{!17}
!39 = !DILocalVariable(name: "a", scope: !36, file: !1, line: 12, type: !17)
!40 = !DILocation(line: 12, column: 7, scope: !36)
!41 = !DILocalVariable(name: "b", scope: !36, file: !1, line: 12, type: !17)
!42 = !DILocation(line: 12, column: 10, scope: !36)
!43 = !DILocation(line: 13, column: 22, scope: !36)
!44 = !DILocation(line: 13, column: 3, scope: !36)
!45 = !DILocation(line: 14, column: 22, scope: !36)
!46 = !DILocation(line: 14, column: 3, scope: !36)
!47 = !DILocation(line: 15, column: 15, scope: !36)
!48 = !DILocation(line: 15, column: 17, scope: !36)
!49 = !DILocation(line: 15, column: 3, scope: !36)
!50 = !DILocation(line: 16, column: 15, scope: !36)
!51 = !DILocation(line: 16, column: 17, scope: !36)
!52 = !DILocation(line: 16, column: 3, scope: !36)
!53 = !DILocation(line: 17, column: 15, scope: !36)
!54 = !DILocation(line: 17, column: 17, scope: !36)
!55 = !DILocation(line: 17, column: 3, scope: !36)
!56 = !DILocation(line: 18, column: 15, scope: !36)
!57 = !DILocation(line: 18, column: 17, scope: !36)
!58 = !DILocation(line: 18, column: 3, scope: !36)
!59 = !DILocalVariable(name: "result", scope: !36, file: !1, line: 19, type: !17)
!60 = !DILocation(line: 19, column: 7, scope: !36)
!61 = !DILocation(line: 19, column: 20, scope: !36)
!62 = !DILocation(line: 19, column: 23, scope: !36)
!63 = !DILocation(line: 19, column: 16, scope: !36)
!64 = !DILocation(line: 20, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !36, file: !1, line: 20, column: 6)
!66 = !DILocation(line: 20, column: 10, scope: !65)
!67 = !DILocation(line: 20, column: 8, scope: !65)
!68 = !DILocation(line: 20, column: 17, scope: !65)
!69 = !DILocation(line: 20, column: 22, scope: !65)
!70 = !DILocation(line: 20, column: 25, scope: !65)
!71 = !DILocation(line: 20, column: 29, scope: !65)
!72 = !DILocation(line: 20, column: 27, scope: !65)
!73 = !DILocation(line: 20, column: 36, scope: !65)
!74 = !DILocation(line: 20, column: 6, scope: !36)
!75 = !DILocation(line: 21, column: 5, scope: !65)
!76 = !DILocation(line: 22, column: 3, scope: !36)
!77 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !78, file: !78, line: 12, type: !79, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!78 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee")
!79 = !DISubroutineType(types: !80)
!80 = !{null, !81}
!81 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!82 = !DILocalVariable(name: "z", arg: 1, scope: !77, file: !78, line: 12, type: !81)
!83 = !DILocation(line: 12, column: 36, scope: !77)
!84 = !DILocation(line: 13, column: 7, scope: !85)
!85 = distinct !DILexicalBlock(scope: !77, file: !78, line: 13, column: 7)
!86 = !DILocation(line: 13, column: 9, scope: !85)
!87 = !DILocation(line: 13, column: 7, scope: !77)
!88 = !DILocation(line: 14, column: 5, scope: !85)
!89 = !DILocation(line: 15, column: 1, scope: !77)
