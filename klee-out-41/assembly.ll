; ModuleID = '42.bc'
source_filename = "42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"42.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sum_squares_digits(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %3, align 4, !dbg !18
  br label %5, !dbg !19

5:                                                ; preds = %8, %1
  %6 = load i32, i32* %2, align 4, !dbg !20
  %7 = icmp sgt i32 %6, 0, !dbg !21
  br i1 %7, label %8, label %18, !dbg !19

8:                                                ; preds = %5
  call void @llvm.dbg.declare(metadata i32* %4, metadata !22, metadata !DIExpression()), !dbg !24
  %9 = load i32, i32* %2, align 4, !dbg !25
  %10 = srem i32 %9, 10, !dbg !26
  store i32 %10, i32* %4, align 4, !dbg !24
  %11 = load i32, i32* %4, align 4, !dbg !27
  %12 = load i32, i32* %4, align 4, !dbg !28
  %13 = mul nsw i32 %11, %12, !dbg !29
  %14 = load i32, i32* %3, align 4, !dbg !30
  %15 = add nsw i32 %14, %13, !dbg !30
  store i32 %15, i32* %3, align 4, !dbg !30
  %16 = load i32, i32* %2, align 4, !dbg !31
  %17 = sdiv i32 %16, 10, !dbg !31
  store i32 %17, i32* %2, align 4, !dbg !31
  br label %5, !dbg !19, !llvm.loop !32

18:                                               ; preds = %5
  %19 = load i32, i32* %3, align 4, !dbg !35
  ret i32 %19, !dbg !36
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
  call void @llvm.dbg.declare(metadata i32* %3, metadata !42, metadata !DIExpression()), !dbg !43
  %4 = bitcast i32* %2 to i8*, !dbg !44
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !45
  %5 = load i32, i32* %2, align 4, !dbg !46
  %6 = icmp sge i32 %5, 1, !dbg !47
  br i1 %6, label %7, label %10, !dbg !48

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !49
  %9 = icmp sle i32 %8, 100, !dbg !50
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !51
  %12 = zext i1 %11 to i32, !dbg !48
  %13 = sext i32 %12 to i64, !dbg !46
  call void @klee_assume(i64 noundef %13), !dbg !52
  %14 = load i32, i32* %2, align 4, !dbg !53
  %15 = call i32 @sum_squares_digits(i32 noundef %14), !dbg !54
  store i32 %15, i32* %3, align 4, !dbg !55
  %16 = load i32, i32* %3, align 4, !dbg !56
  %17 = icmp slt i32 %16, 0, !dbg !58
  br i1 %17, label %18, label %19, !dbg !59

18:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 21, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !60
  unreachable, !dbg !60

19:                                               ; preds = %10
  ret i32 0, !dbg !61
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "42.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "6203b2f3f03123e6a5c8afd097373309")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "sum_squares_digits", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 28, scope: !10)
!17 = !DILocalVariable(name: "sum", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 7, scope: !10)
!19 = !DILocation(line: 7, column: 3, scope: !10)
!20 = !DILocation(line: 7, column: 9, scope: !10)
!21 = !DILocation(line: 7, column: 11, scope: !10)
!22 = !DILocalVariable(name: "d", scope: !23, file: !1, line: 8, type: !13)
!23 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 16)
!24 = !DILocation(line: 8, column: 9, scope: !23)
!25 = !DILocation(line: 8, column: 13, scope: !23)
!26 = !DILocation(line: 8, column: 15, scope: !23)
!27 = !DILocation(line: 9, column: 12, scope: !23)
!28 = !DILocation(line: 9, column: 16, scope: !23)
!29 = !DILocation(line: 9, column: 14, scope: !23)
!30 = !DILocation(line: 9, column: 9, scope: !23)
!31 = !DILocation(line: 10, column: 7, scope: !23)
!32 = distinct !{!32, !19, !33, !34}
!33 = !DILocation(line: 11, column: 3, scope: !10)
!34 = !{!"llvm.loop.mustprogress"}
!35 = !DILocation(line: 12, column: 10, scope: !10)
!36 = !DILocation(line: 12, column: 3, scope: !10)
!37 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !38, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!38 = !DISubroutineType(types: !39)
!39 = !{!13}
!40 = !DILocalVariable(name: "n", scope: !37, file: !1, line: 16, type: !13)
!41 = !DILocation(line: 16, column: 7, scope: !37)
!42 = !DILocalVariable(name: "sumsq", scope: !37, file: !1, line: 16, type: !13)
!43 = !DILocation(line: 16, column: 10, scope: !37)
!44 = !DILocation(line: 17, column: 22, scope: !37)
!45 = !DILocation(line: 17, column: 3, scope: !37)
!46 = !DILocation(line: 18, column: 15, scope: !37)
!47 = !DILocation(line: 18, column: 17, scope: !37)
!48 = !DILocation(line: 18, column: 22, scope: !37)
!49 = !DILocation(line: 18, column: 25, scope: !37)
!50 = !DILocation(line: 18, column: 27, scope: !37)
!51 = !DILocation(line: 0, scope: !37)
!52 = !DILocation(line: 18, column: 3, scope: !37)
!53 = !DILocation(line: 19, column: 30, scope: !37)
!54 = !DILocation(line: 19, column: 11, scope: !37)
!55 = !DILocation(line: 19, column: 9, scope: !37)
!56 = !DILocation(line: 20, column: 6, scope: !57)
!57 = distinct !DILexicalBlock(scope: !37, file: !1, line: 20, column: 6)
!58 = !DILocation(line: 20, column: 12, scope: !57)
!59 = !DILocation(line: 20, column: 6, scope: !37)
!60 = !DILocation(line: 21, column: 5, scope: !57)
!61 = !DILocation(line: 22, column: 3, scope: !37)
