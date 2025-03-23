; ModuleID = '91.bc'
source_filename = "91.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"/home/rongfeng/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %3, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %3, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 5, i32* %4, align 4, !dbg !23
  %5 = bitcast i32* %2 to i8*, !dbg !24
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !25
  %6 = load i32, i32* %2, align 4, !dbg !26
  %7 = icmp sge i32 %6, 0, !dbg !27
  br i1 %7, label %8, label %11, !dbg !28

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4, !dbg !29
  %10 = icmp sle i32 %9, 100, !dbg !30
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ], !dbg !31
  %13 = zext i1 %12 to i32, !dbg !28
  %14 = sext i32 %13 to i64, !dbg !26
  call void @klee_assume(i64 noundef %14), !dbg !32
  br label %15, !dbg !33

15:                                               ; preds = %20, %11
  %16 = load i32, i32* %2, align 4, !dbg !34
  %17 = load i32, i32* %4, align 4, !dbg !35
  %int_cast_to_i64 = zext i32 %17 to i64, !dbg !36
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !36
  %18 = sdiv i32 %16, %17, !dbg !36, !klee.check.div !37
  %19 = icmp sgt i32 %18, 0, !dbg !38
  br i1 %19, label %20, label %28, !dbg !33

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4, !dbg !39
  %22 = load i32, i32* %4, align 4, !dbg !41
  %int_cast_to_i641 = zext i32 %22 to i64, !dbg !42
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !42
  %23 = sdiv i32 %21, %22, !dbg !42, !klee.check.div !37
  %24 = load i32, i32* %3, align 4, !dbg !43
  %25 = add nsw i32 %24, %23, !dbg !43
  store i32 %25, i32* %3, align 4, !dbg !43
  %26 = load i32, i32* %4, align 4, !dbg !44
  %27 = mul nsw i32 %26, 5, !dbg !44
  store i32 %27, i32* %4, align 4, !dbg !44
  br label %15, !dbg !33, !llvm.loop !45

28:                                               ; preds = %15
  ret i32 0, !dbg !48
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %0) #3 !dbg !49 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !54, metadata !DIExpression()), !dbg !55
  %3 = load i64, i64* %2, align 8, !dbg !56
  %4 = icmp eq i64 %3, 0, !dbg !58
  br i1 %4, label %5, label %6, !dbg !59

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !60
  unreachable, !dbg !60

6:                                                ; preds = %1
  ret void, !dbg !61
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
!1 = !DIFile(filename: "91.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "45b0ef5df36349a3718f1378d2db38b1")
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
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !15, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "n", scope: !14, file: !1, line: 5, type: !17)
!19 = !DILocation(line: 5, column: 9, scope: !14)
!20 = !DILocalVariable(name: "count", scope: !14, file: !1, line: 5, type: !17)
!21 = !DILocation(line: 5, column: 12, scope: !14)
!22 = !DILocalVariable(name: "divisor", scope: !14, file: !1, line: 5, type: !17)
!23 = !DILocation(line: 5, column: 23, scope: !14)
!24 = !DILocation(line: 6, column: 24, scope: !14)
!25 = !DILocation(line: 6, column: 5, scope: !14)
!26 = !DILocation(line: 7, column: 17, scope: !14)
!27 = !DILocation(line: 7, column: 19, scope: !14)
!28 = !DILocation(line: 7, column: 24, scope: !14)
!29 = !DILocation(line: 7, column: 27, scope: !14)
!30 = !DILocation(line: 7, column: 29, scope: !14)
!31 = !DILocation(line: 0, scope: !14)
!32 = !DILocation(line: 7, column: 5, scope: !14)
!33 = !DILocation(line: 8, column: 5, scope: !14)
!34 = !DILocation(line: 8, column: 12, scope: !14)
!35 = !DILocation(line: 8, column: 16, scope: !14)
!36 = !DILocation(line: 8, column: 14, scope: !14)
!37 = !{!"True"}
!38 = !DILocation(line: 8, column: 24, scope: !14)
!39 = !DILocation(line: 9, column: 18, scope: !40)
!40 = distinct !DILexicalBlock(scope: !14, file: !1, line: 8, column: 29)
!41 = !DILocation(line: 9, column: 22, scope: !40)
!42 = !DILocation(line: 9, column: 20, scope: !40)
!43 = !DILocation(line: 9, column: 15, scope: !40)
!44 = !DILocation(line: 10, column: 17, scope: !40)
!45 = distinct !{!45, !33, !46, !47}
!46 = !DILocation(line: 11, column: 5, scope: !14)
!47 = !{!"llvm.loop.mustprogress"}
!48 = !DILocation(line: 12, column: 5, scope: !14)
!49 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !50, file: !50, line: 12, type: !51, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!50 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee")
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53}
!53 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!54 = !DILocalVariable(name: "z", arg: 1, scope: !49, file: !50, line: 12, type: !53)
!55 = !DILocation(line: 12, column: 36, scope: !49)
!56 = !DILocation(line: 13, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !49, file: !50, line: 13, column: 7)
!58 = !DILocation(line: 13, column: 9, scope: !57)
!59 = !DILocation(line: 13, column: 7, scope: !49)
!60 = !DILocation(line: 14, column: 5, scope: !57)
!61 = !DILocation(line: 15, column: 1, scope: !49)
