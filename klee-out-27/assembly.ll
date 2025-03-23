; ModuleID = '28.bc'
source_filename = "28.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"dividend\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"divisor\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"28.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"/home/rongfeng/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.5 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.6 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %3, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !DIExpression()), !dbg !23
  %5 = bitcast i32* %2 to i8*, !dbg !24
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !25
  %6 = bitcast i32* %3 to i8*, !dbg !26
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !27
  %7 = load i32, i32* %3, align 4, !dbg !28
  %8 = icmp ne i32 %7, 0, !dbg !29
  %9 = zext i1 %8 to i32, !dbg !29
  %10 = sext i32 %9 to i64, !dbg !28
  call void @klee_assume(i64 noundef %10), !dbg !30
  %11 = load i32, i32* %2, align 4, !dbg !31
  %12 = load i32, i32* %3, align 4, !dbg !32
  %int_cast_to_i64 = zext i32 %12 to i64, !dbg !33
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !33
  %13 = sdiv i32 %11, %12, !dbg !33, !klee.check.div !34
  store i32 %13, i32* %4, align 4, !dbg !35
  %14 = load i32, i32* %4, align 4, !dbg !36
  %15 = load i32, i32* %3, align 4, !dbg !38
  %16 = mul nsw i32 %14, %15, !dbg !39
  %17 = load i32, i32* %2, align 4, !dbg !40
  %18 = icmp sgt i32 %16, %17, !dbg !41
  br i1 %18, label %28, label %19, !dbg !42

19:                                               ; preds = %0
  %20 = load i32, i32* %4, align 4, !dbg !43
  %21 = load i32, i32* %3, align 4, !dbg !44
  %22 = mul nsw i32 %20, %21, !dbg !45
  %23 = load i32, i32* %2, align 4, !dbg !46
  %24 = load i32, i32* %3, align 4, !dbg !47
  %25 = sub nsw i32 %23, %24, !dbg !48
  %26 = add nsw i32 %25, 1, !dbg !49
  %27 = icmp slt i32 %22, %26, !dbg !50
  br i1 %27, label %28, label %29, !dbg !51

28:                                               ; preds = %19, %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef 13, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6, !dbg !52
  unreachable, !dbg !52

29:                                               ; preds = %19
  ret i32 0, !dbg !53
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %0) #4 !dbg !54 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !59, metadata !DIExpression()), !dbg !60
  %3 = load i64, i64* %2, align 8, !dbg !61
  %4 = icmp eq i64 %3, 0, !dbg !63
  br i1 %4, label %5, label %6, !dbg !64

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.6, i64 0, i64 0)) #7, !dbg !65
  unreachable, !dbg !65

6:                                                ; preds = %1
  ret void, !dbg !66
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
!1 = !DIFile(filename: "28.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "49cd638bdac4ae819e632d8d7cbb179f")
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
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !15, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "dividend", scope: !14, file: !1, line: 6, type: !17)
!19 = !DILocation(line: 6, column: 7, scope: !14)
!20 = !DILocalVariable(name: "divisor", scope: !14, file: !1, line: 6, type: !17)
!21 = !DILocation(line: 6, column: 17, scope: !14)
!22 = !DILocalVariable(name: "quotient", scope: !14, file: !1, line: 6, type: !17)
!23 = !DILocation(line: 6, column: 26, scope: !14)
!24 = !DILocation(line: 7, column: 22, scope: !14)
!25 = !DILocation(line: 7, column: 3, scope: !14)
!26 = !DILocation(line: 8, column: 22, scope: !14)
!27 = !DILocation(line: 8, column: 3, scope: !14)
!28 = !DILocation(line: 9, column: 15, scope: !14)
!29 = !DILocation(line: 9, column: 23, scope: !14)
!30 = !DILocation(line: 9, column: 3, scope: !14)
!31 = !DILocation(line: 10, column: 14, scope: !14)
!32 = !DILocation(line: 10, column: 25, scope: !14)
!33 = !DILocation(line: 10, column: 23, scope: !14)
!34 = !{!"True"}
!35 = !DILocation(line: 10, column: 12, scope: !14)
!36 = !DILocation(line: 12, column: 6, scope: !37)
!37 = distinct !DILexicalBlock(scope: !14, file: !1, line: 12, column: 6)
!38 = !DILocation(line: 12, column: 17, scope: !37)
!39 = !DILocation(line: 12, column: 15, scope: !37)
!40 = !DILocation(line: 12, column: 27, scope: !37)
!41 = !DILocation(line: 12, column: 25, scope: !37)
!42 = !DILocation(line: 12, column: 36, scope: !37)
!43 = !DILocation(line: 12, column: 39, scope: !37)
!44 = !DILocation(line: 12, column: 50, scope: !37)
!45 = !DILocation(line: 12, column: 48, scope: !37)
!46 = !DILocation(line: 12, column: 60, scope: !37)
!47 = !DILocation(line: 12, column: 71, scope: !37)
!48 = !DILocation(line: 12, column: 69, scope: !37)
!49 = !DILocation(line: 12, column: 79, scope: !37)
!50 = !DILocation(line: 12, column: 58, scope: !37)
!51 = !DILocation(line: 12, column: 6, scope: !14)
!52 = !DILocation(line: 13, column: 5, scope: !37)
!53 = !DILocation(line: 14, column: 3, scope: !14)
!54 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !55, file: !55, line: 12, type: !56, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!55 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee")
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58}
!58 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!59 = !DILocalVariable(name: "z", arg: 1, scope: !54, file: !55, line: 12, type: !58)
!60 = !DILocation(line: 12, column: 36, scope: !54)
!61 = !DILocation(line: 13, column: 7, scope: !62)
!62 = distinct !DILexicalBlock(scope: !54, file: !55, line: 13, column: 7)
!63 = !DILocation(line: 13, column: 9, scope: !62)
!64 = !DILocation(line: 13, column: 7, scope: !54)
!65 = !DILocation(line: 14, column: 5, scope: !62)
!66 = !DILocation(line: 15, column: 1, scope: !54)
