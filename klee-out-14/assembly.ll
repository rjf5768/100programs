; ModuleID = '15.bc'
source_filename = "15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"15.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str.1.4 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str.2.5 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hanoi_moves(i32 noundef %0) #0 !dbg !14 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !18, metadata !DIExpression()), !dbg !19
  %4 = load i32, i32* %3, align 4, !dbg !20
  %5 = icmp sle i32 %4, 0, !dbg !22
  br i1 %5, label %6, label %7, !dbg !23

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !24
  br label %17, !dbg !24

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !25
  %9 = icmp eq i32 %8, 1, !dbg !27
  br i1 %9, label %10, label %11, !dbg !28

10:                                               ; preds = %7
  store i32 1, i32* %2, align 4, !dbg !29
  br label %17, !dbg !29

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4, !dbg !30
  %13 = sub nsw i32 %12, 1, !dbg !31
  %14 = call i32 @hanoi_moves(i32 noundef %13), !dbg !32
  %15 = mul nsw i32 2, %14, !dbg !33
  %16 = add nsw i32 %15, 1, !dbg !34
  store i32 %16, i32* %2, align 4, !dbg !35
  br label %17, !dbg !35

17:                                               ; preds = %11, %10, %6
  %18 = load i32, i32* %2, align 4, !dbg !36
  ret i32 %18, !dbg !36
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !37 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !40, metadata !DIExpression()), !dbg !41
  %4 = bitcast i32* %2 to i8*, !dbg !42
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !43
  %5 = load i32, i32* %2, align 4, !dbg !44
  %6 = icmp sge i32 %5, 0, !dbg !45
  %7 = zext i1 %6 to i32, !dbg !45
  %8 = sext i32 %7 to i64, !dbg !44
  call void @klee_assume(i64 noundef %8), !dbg !46
  %9 = load i32, i32* %2, align 4, !dbg !47
  %10 = icmp sle i32 %9, 10, !dbg !48
  %11 = zext i1 %10 to i32, !dbg !48
  %12 = sext i32 %11 to i64, !dbg !47
  call void @klee_assume(i64 noundef %12), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %3, metadata !50, metadata !DIExpression()), !dbg !51
  %13 = load i32, i32* %2, align 4, !dbg !52
  %14 = call i32 @hanoi_moves(i32 noundef %13), !dbg !53
  store i32 %14, i32* %3, align 4, !dbg !51
  %15 = load i32, i32* %2, align 4, !dbg !54
  %16 = icmp sgt i32 %15, 0, !dbg !56
  br i1 %16, label %17, label %24, !dbg !57

17:                                               ; preds = %0
  %18 = load i32, i32* %3, align 4, !dbg !58
  %19 = load i32, i32* %2, align 4, !dbg !59
  %int_cast_to_i64 = zext i32 %19 to i64, !dbg !60
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !60
  %20 = shl i32 1, %19, !dbg !60, !klee.check.shift !61
  %21 = sub nsw i32 %20, 1, !dbg !62
  %22 = icmp ne i32 %18, %21, !dbg !63
  br i1 %22, label %23, label %24, !dbg !64

23:                                               ; preds = %17
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 18, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6, !dbg !65
  unreachable, !dbg !65

24:                                               ; preds = %17, %0
  ret i32 0, !dbg !66
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_overshift_check(i64 %0, i64 %1) #4 !dbg !67 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !72, metadata !DIExpression()), !dbg !73
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !74, metadata !DIExpression()), !dbg !75
  %5 = load i64, i64* %4, align 8, !dbg !76
  %6 = load i64, i64* %3, align 8, !dbg !78
  %7 = icmp uge i64 %5, %6, !dbg !79
  br i1 %7, label %8, label %9, !dbg !80

8:                                                ; preds = %2
  call void @klee_report_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.5, i64 0, i64 0)) #7, !dbg !81
  unreachable, !dbg !81

9:                                                ; preds = %2
  ret void, !dbg !83
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
!1 = !DIFile(filename: "15.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "ca25397a1b1a5c2a2ea0ad5776158057")
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "Ubuntu clang version 11.1.0-6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rongfeng/klee/runtime/Intrinsic/klee_overshift_check.c", directory: "/home/rongfeng/klee/build/runtime/Intrinsic")
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
!14 = distinct !DISubprogram(name: "hanoi_moves", scope: !1, file: !1, line: 5, type: !15, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "n", arg: 1, scope: !14, file: !1, line: 5, type: !17)
!19 = !DILocation(line: 5, column: 21, scope: !14)
!20 = !DILocation(line: 6, column: 6, scope: !21)
!21 = distinct !DILexicalBlock(scope: !14, file: !1, line: 6, column: 6)
!22 = !DILocation(line: 6, column: 8, scope: !21)
!23 = !DILocation(line: 6, column: 6, scope: !14)
!24 = !DILocation(line: 6, column: 14, scope: !21)
!25 = !DILocation(line: 7, column: 6, scope: !26)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 7, column: 6)
!27 = !DILocation(line: 7, column: 8, scope: !26)
!28 = !DILocation(line: 7, column: 6, scope: !14)
!29 = !DILocation(line: 7, column: 14, scope: !26)
!30 = !DILocation(line: 8, column: 26, scope: !14)
!31 = !DILocation(line: 8, column: 28, scope: !14)
!32 = !DILocation(line: 8, column: 14, scope: !14)
!33 = !DILocation(line: 8, column: 12, scope: !14)
!34 = !DILocation(line: 8, column: 33, scope: !14)
!35 = !DILocation(line: 8, column: 3, scope: !14)
!36 = !DILocation(line: 9, column: 1, scope: !14)
!37 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !38, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!38 = !DISubroutineType(types: !39)
!39 = !{!17}
!40 = !DILocalVariable(name: "n", scope: !37, file: !1, line: 12, type: !17)
!41 = !DILocation(line: 12, column: 7, scope: !37)
!42 = !DILocation(line: 13, column: 22, scope: !37)
!43 = !DILocation(line: 13, column: 3, scope: !37)
!44 = !DILocation(line: 14, column: 15, scope: !37)
!45 = !DILocation(line: 14, column: 17, scope: !37)
!46 = !DILocation(line: 14, column: 3, scope: !37)
!47 = !DILocation(line: 15, column: 15, scope: !37)
!48 = !DILocation(line: 15, column: 17, scope: !37)
!49 = !DILocation(line: 15, column: 3, scope: !37)
!50 = !DILocalVariable(name: "moves", scope: !37, file: !1, line: 16, type: !17)
!51 = !DILocation(line: 16, column: 7, scope: !37)
!52 = !DILocation(line: 16, column: 27, scope: !37)
!53 = !DILocation(line: 16, column: 15, scope: !37)
!54 = !DILocation(line: 17, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !37, file: !1, line: 17, column: 6)
!56 = !DILocation(line: 17, column: 8, scope: !55)
!57 = !DILocation(line: 17, column: 12, scope: !55)
!58 = !DILocation(line: 17, column: 15, scope: !55)
!59 = !DILocation(line: 17, column: 31, scope: !55)
!60 = !DILocation(line: 17, column: 28, scope: !55)
!61 = !{!"True"}
!62 = !DILocation(line: 17, column: 34, scope: !55)
!63 = !DILocation(line: 17, column: 21, scope: !55)
!64 = !DILocation(line: 17, column: 6, scope: !37)
!65 = !DILocation(line: 18, column: 5, scope: !55)
!66 = !DILocation(line: 19, column: 3, scope: !37)
!67 = distinct !DISubprogram(name: "klee_overshift_check", scope: !68, file: !68, line: 20, type: !69, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!68 = !DIFile(filename: "runtime/Intrinsic/klee_overshift_check.c", directory: "/home/rongfeng/klee")
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !71}
!71 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocalVariable(name: "bitWidth", arg: 1, scope: !67, file: !68, line: 20, type: !71)
!73 = !DILocation(line: 20, column: 46, scope: !67)
!74 = !DILocalVariable(name: "shift", arg: 2, scope: !67, file: !68, line: 20, type: !71)
!75 = !DILocation(line: 20, column: 75, scope: !67)
!76 = !DILocation(line: 21, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !67, file: !68, line: 21, column: 7)
!78 = !DILocation(line: 21, column: 16, scope: !77)
!79 = !DILocation(line: 21, column: 13, scope: !77)
!80 = !DILocation(line: 21, column: 7, scope: !67)
!81 = !DILocation(line: 27, column: 5, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !68, line: 21, column: 26)
!83 = !DILocation(line: 29, column: 1, scope: !67)
