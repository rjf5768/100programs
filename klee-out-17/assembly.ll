; ModuleID = '18.bc'
source_filename = "18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"/home/rongfeng/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_prime(i32 noundef %0) #0 !dbg !14 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !18, metadata !DIExpression()), !dbg !19
  %5 = load i32, i32* %3, align 4, !dbg !20
  %6 = icmp sle i32 %5, 1, !dbg !22
  br i1 %6, label %7, label %8, !dbg !23

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !24
  br label %26, !dbg !24

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !27
  store i32 2, i32* %4, align 4, !dbg !27
  br label %9, !dbg !28

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %4, align 4, !dbg !29
  %11 = load i32, i32* %4, align 4, !dbg !31
  %12 = mul nsw i32 %10, %11, !dbg !32
  %13 = load i32, i32* %3, align 4, !dbg !33
  %14 = icmp sle i32 %12, %13, !dbg !34
  br i1 %14, label %15, label %25, !dbg !35

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4, !dbg !36
  %17 = load i32, i32* %4, align 4, !dbg !39
  %int_cast_to_i64 = zext i32 %17 to i64, !dbg !40
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !40
  %18 = srem i32 %16, %17, !dbg !40, !klee.check.div !41
  %19 = icmp eq i32 %18, 0, !dbg !42
  br i1 %19, label %20, label %21, !dbg !43

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4, !dbg !44
  br label %26, !dbg !44

21:                                               ; preds = %15
  br label %22, !dbg !45

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4, !dbg !46
  %24 = add nsw i32 %23, 1, !dbg !46
  store i32 %24, i32* %4, align 4, !dbg !46
  br label %9, !dbg !47, !llvm.loop !48

25:                                               ; preds = %9
  store i32 1, i32* %2, align 4, !dbg !51
  br label %26, !dbg !51

26:                                               ; preds = %25, %20, %7
  %27 = load i32, i32* %2, align 4, !dbg !52
  ret i32 %27, !dbg !52
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !53 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !56, metadata !DIExpression()), !dbg !57
  %4 = bitcast i32* %2 to i8*, !dbg !58
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !59
  %5 = load i32, i32* %2, align 4, !dbg !60
  %6 = icmp sge i32 %5, 0, !dbg !61
  %7 = zext i1 %6 to i32, !dbg !61
  %8 = sext i32 %7 to i64, !dbg !60
  call void @klee_assume(i64 noundef %8), !dbg !62
  %9 = load i32, i32* %2, align 4, !dbg !63
  %10 = icmp sle i32 %9, 100, !dbg !64
  %11 = zext i1 %10 to i32, !dbg !64
  %12 = sext i32 %11 to i64, !dbg !63
  call void @klee_assume(i64 noundef %12), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %3, metadata !66, metadata !DIExpression()), !dbg !67
  %13 = load i32, i32* %2, align 4, !dbg !68
  %14 = call i32 @is_prime(i32 noundef %13), !dbg !69
  store i32 %14, i32* %3, align 4, !dbg !67
  ret i32 0, !dbg !70
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %0) #3 !dbg !71 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !76, metadata !DIExpression()), !dbg !77
  %3 = load i64, i64* %2, align 8, !dbg !78
  %4 = icmp eq i64 %3, 0, !dbg !80
  br i1 %4, label %5, label %6, !dbg !81

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !82
  unreachable, !dbg !82

6:                                                ; preds = %1
  ret void, !dbg !83
}

; Function Attrs: noreturn
declare dso_local void @klee_report_error(i8*, i32, i8*, i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "18.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "cd5ffe683ba98af13d50a9b10fc80373")
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
!14 = distinct !DISubprogram(name: "is_prime", scope: !1, file: !1, line: 5, type: !15, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "n", arg: 1, scope: !14, file: !1, line: 5, type: !17)
!19 = !DILocation(line: 5, column: 18, scope: !14)
!20 = !DILocation(line: 6, column: 6, scope: !21)
!21 = distinct !DILexicalBlock(scope: !14, file: !1, line: 6, column: 6)
!22 = !DILocation(line: 6, column: 8, scope: !21)
!23 = !DILocation(line: 6, column: 6, scope: !14)
!24 = !DILocation(line: 6, column: 14, scope: !21)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 7, type: !17)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 7, column: 3)
!27 = !DILocation(line: 7, column: 11, scope: !26)
!28 = !DILocation(line: 7, column: 7, scope: !26)
!29 = !DILocation(line: 7, column: 18, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 7, column: 3)
!31 = !DILocation(line: 7, column: 20, scope: !30)
!32 = !DILocation(line: 7, column: 19, scope: !30)
!33 = !DILocation(line: 7, column: 25, scope: !30)
!34 = !DILocation(line: 7, column: 22, scope: !30)
!35 = !DILocation(line: 7, column: 3, scope: !26)
!36 = !DILocation(line: 8, column: 8, scope: !37)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 8, column: 8)
!38 = distinct !DILexicalBlock(scope: !30, file: !1, line: 7, column: 32)
!39 = !DILocation(line: 8, column: 12, scope: !37)
!40 = !DILocation(line: 8, column: 10, scope: !37)
!41 = !{!"True"}
!42 = !DILocation(line: 8, column: 14, scope: !37)
!43 = !DILocation(line: 8, column: 8, scope: !38)
!44 = !DILocation(line: 9, column: 7, scope: !37)
!45 = !DILocation(line: 10, column: 3, scope: !38)
!46 = !DILocation(line: 7, column: 29, scope: !30)
!47 = !DILocation(line: 7, column: 3, scope: !30)
!48 = distinct !{!48, !35, !49, !50}
!49 = !DILocation(line: 10, column: 3, scope: !26)
!50 = !{!"llvm.loop.mustprogress"}
!51 = !DILocation(line: 11, column: 3, scope: !14)
!52 = !DILocation(line: 12, column: 1, scope: !14)
!53 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !54, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!54 = !DISubroutineType(types: !55)
!55 = !{!17}
!56 = !DILocalVariable(name: "n", scope: !53, file: !1, line: 15, type: !17)
!57 = !DILocation(line: 15, column: 7, scope: !53)
!58 = !DILocation(line: 16, column: 22, scope: !53)
!59 = !DILocation(line: 16, column: 3, scope: !53)
!60 = !DILocation(line: 17, column: 15, scope: !53)
!61 = !DILocation(line: 17, column: 17, scope: !53)
!62 = !DILocation(line: 17, column: 3, scope: !53)
!63 = !DILocation(line: 18, column: 15, scope: !53)
!64 = !DILocation(line: 18, column: 17, scope: !53)
!65 = !DILocation(line: 18, column: 3, scope: !53)
!66 = !DILocalVariable(name: "prime", scope: !53, file: !1, line: 19, type: !17)
!67 = !DILocation(line: 19, column: 7, scope: !53)
!68 = !DILocation(line: 19, column: 24, scope: !53)
!69 = !DILocation(line: 19, column: 15, scope: !53)
!70 = !DILocation(line: 20, column: 3, scope: !53)
!71 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !72, file: !72, line: 12, type: !73, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!72 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee")
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75}
!75 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!76 = !DILocalVariable(name: "z", arg: 1, scope: !71, file: !72, line: 12, type: !75)
!77 = !DILocation(line: 12, column: 36, scope: !71)
!78 = !DILocation(line: 13, column: 7, scope: !79)
!79 = distinct !DILexicalBlock(scope: !71, file: !72, line: 13, column: 7)
!80 = !DILocation(line: 13, column: 9, scope: !79)
!81 = !DILocation(line: 13, column: 7, scope: !71)
!82 = !DILocation(line: 14, column: 5, scope: !79)
!83 = !DILocation(line: 15, column: 1, scope: !71)
