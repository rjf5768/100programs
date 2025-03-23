; ModuleID = '55.bc'
source_filename = "55.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"55.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"/home/rongfeng/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.7 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.8 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %3, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %5, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %6, metadata !26, metadata !DIExpression()), !dbg !27
  %7 = bitcast i32* %2 to i8*, !dbg !28
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !29
  %8 = bitcast i32* %3 to i8*, !dbg !30
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !31
  %9 = bitcast i32* %4 to i8*, !dbg !32
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !33
  %10 = bitcast i32* %5 to i8*, !dbg !34
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !35
  %11 = load i32, i32* %3, align 4, !dbg !36
  %12 = icmp ne i32 %11, 0, !dbg !37
  br i1 %12, label %13, label %16, !dbg !38

13:                                               ; preds = %0
  %14 = load i32, i32* %5, align 4, !dbg !39
  %15 = icmp ne i32 %14, 0, !dbg !40
  br label %16

16:                                               ; preds = %13, %0
  %17 = phi i1 [ false, %0 ], [ %15, %13 ], !dbg !41
  %18 = zext i1 %17 to i32, !dbg !38
  %19 = sext i32 %18 to i64, !dbg !36
  call void @klee_assume(i64 noundef %19), !dbg !42
  %20 = load i32, i32* %2, align 4, !dbg !43
  %21 = load i32, i32* %4, align 4, !dbg !44
  %22 = mul nsw i32 %20, %21, !dbg !45
  %23 = load i32, i32* %3, align 4, !dbg !46
  %24 = load i32, i32* %5, align 4, !dbg !47
  %int_cast_to_i64 = zext i32 %24 to i64, !dbg !48
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !48
  %25 = sdiv i32 %23, %24, !dbg !48, !klee.check.div !49
  %26 = add nsw i32 %22, %25, !dbg !50
  %27 = load i32, i32* %2, align 4, !dbg !51
  %28 = load i32, i32* %4, align 4, !dbg !52
  %29 = sub nsw i32 %27, %28, !dbg !53
  %30 = sub nsw i32 %26, %29, !dbg !54
  store i32 %30, i32* %6, align 4, !dbg !55
  %31 = load i32, i32* %6, align 4, !dbg !56
  %32 = icmp slt i32 %31, -1000, !dbg !58
  br i1 %32, label %36, label %33, !dbg !59

33:                                               ; preds = %16
  %34 = load i32, i32* %6, align 4, !dbg !60
  %35 = icmp sgt i32 %34, 1000, !dbg !61
  br i1 %35, label %36, label %37, !dbg !62

36:                                               ; preds = %33, %16
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6, !dbg !63
  unreachable, !dbg !63

37:                                               ; preds = %33
  ret i32 0, !dbg !64
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 %0) #4 !dbg !65 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !70, metadata !DIExpression()), !dbg !71
  %3 = load i64, i64* %2, align 8, !dbg !72
  %4 = icmp eq i64 %3, 0, !dbg !74
  br i1 %4, label %5, label %6, !dbg !75

5:                                                ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.8, i64 0, i64 0)) #7, !dbg !76
  unreachable, !dbg !76

6:                                                ; preds = %1
  ret void, !dbg !77
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
!1 = !DIFile(filename: "55.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "65d2f92ccc7c73e2020d84d06aa79103")
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
!18 = !DILocalVariable(name: "a", scope: !14, file: !1, line: 6, type: !17)
!19 = !DILocation(line: 6, column: 7, scope: !14)
!20 = !DILocalVariable(name: "b", scope: !14, file: !1, line: 6, type: !17)
!21 = !DILocation(line: 6, column: 10, scope: !14)
!22 = !DILocalVariable(name: "c", scope: !14, file: !1, line: 6, type: !17)
!23 = !DILocation(line: 6, column: 13, scope: !14)
!24 = !DILocalVariable(name: "d", scope: !14, file: !1, line: 6, type: !17)
!25 = !DILocation(line: 6, column: 16, scope: !14)
!26 = !DILocalVariable(name: "result", scope: !14, file: !1, line: 6, type: !17)
!27 = !DILocation(line: 6, column: 19, scope: !14)
!28 = !DILocation(line: 7, column: 22, scope: !14)
!29 = !DILocation(line: 7, column: 3, scope: !14)
!30 = !DILocation(line: 8, column: 22, scope: !14)
!31 = !DILocation(line: 8, column: 3, scope: !14)
!32 = !DILocation(line: 9, column: 22, scope: !14)
!33 = !DILocation(line: 9, column: 3, scope: !14)
!34 = !DILocation(line: 10, column: 22, scope: !14)
!35 = !DILocation(line: 10, column: 3, scope: !14)
!36 = !DILocation(line: 11, column: 15, scope: !14)
!37 = !DILocation(line: 11, column: 17, scope: !14)
!38 = !DILocation(line: 11, column: 22, scope: !14)
!39 = !DILocation(line: 11, column: 25, scope: !14)
!40 = !DILocation(line: 11, column: 27, scope: !14)
!41 = !DILocation(line: 0, scope: !14)
!42 = !DILocation(line: 11, column: 3, scope: !14)
!43 = !DILocation(line: 12, column: 13, scope: !14)
!44 = !DILocation(line: 12, column: 17, scope: !14)
!45 = !DILocation(line: 12, column: 15, scope: !14)
!46 = !DILocation(line: 12, column: 23, scope: !14)
!47 = !DILocation(line: 12, column: 27, scope: !14)
!48 = !DILocation(line: 12, column: 25, scope: !14)
!49 = !{!"True"}
!50 = !DILocation(line: 12, column: 20, scope: !14)
!51 = !DILocation(line: 12, column: 33, scope: !14)
!52 = !DILocation(line: 12, column: 37, scope: !14)
!53 = !DILocation(line: 12, column: 35, scope: !14)
!54 = !DILocation(line: 12, column: 30, scope: !14)
!55 = !DILocation(line: 12, column: 10, scope: !14)
!56 = !DILocation(line: 13, column: 6, scope: !57)
!57 = distinct !DILexicalBlock(scope: !14, file: !1, line: 13, column: 6)
!58 = !DILocation(line: 13, column: 13, scope: !57)
!59 = !DILocation(line: 13, column: 21, scope: !57)
!60 = !DILocation(line: 13, column: 24, scope: !57)
!61 = !DILocation(line: 13, column: 31, scope: !57)
!62 = !DILocation(line: 13, column: 6, scope: !14)
!63 = !DILocation(line: 14, column: 5, scope: !57)
!64 = !DILocation(line: 15, column: 3, scope: !14)
!65 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !66, file: !66, line: 12, type: !67, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!66 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/rongfeng/klee")
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69}
!69 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!70 = !DILocalVariable(name: "z", arg: 1, scope: !65, file: !66, line: 12, type: !69)
!71 = !DILocation(line: 12, column: 36, scope: !65)
!72 = !DILocation(line: 13, column: 7, scope: !73)
!73 = distinct !DILexicalBlock(scope: !65, file: !66, line: 13, column: 7)
!74 = !DILocation(line: 13, column: 9, scope: !73)
!75 = !DILocation(line: 13, column: 7, scope: !65)
!76 = !DILocation(line: 14, column: 5, scope: !73)
!77 = !DILocation(line: 15, column: 1, scope: !65)
