; ModuleID = '20.bc'
source_filename = "20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"20.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @factorial_iter(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 1, i32* %3, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !21
  store i32 2, i32* %4, align 4, !dbg !21
  br label %5, !dbg !22

5:                                                ; preds = %13, %1
  %6 = load i32, i32* %4, align 4, !dbg !23
  %7 = load i32, i32* %2, align 4, !dbg !25
  %8 = icmp sle i32 %6, %7, !dbg !26
  br i1 %8, label %9, label %16, !dbg !27

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4, !dbg !28
  %11 = load i32, i32* %3, align 4, !dbg !30
  %12 = mul nsw i32 %11, %10, !dbg !30
  store i32 %12, i32* %3, align 4, !dbg !30
  br label %13, !dbg !31

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4, !dbg !32
  %15 = add nsw i32 %14, 1, !dbg !32
  store i32 %15, i32* %4, align 4, !dbg !32
  br label %5, !dbg !33, !llvm.loop !34

16:                                               ; preds = %5
  %17 = load i32, i32* %3, align 4, !dbg !37
  ret i32 %17, !dbg !38
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !39 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !42, metadata !DIExpression()), !dbg !43
  %4 = bitcast i32* %2 to i8*, !dbg !44
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !45
  %5 = load i32, i32* %2, align 4, !dbg !46
  %6 = icmp sge i32 %5, 0, !dbg !47
  br i1 %6, label %7, label %10, !dbg !48

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !49
  %9 = icmp sle i32 %8, 10, !dbg !50
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !51
  %12 = zext i1 %11 to i32, !dbg !48
  %13 = sext i32 %12 to i64, !dbg !46
  call void @klee_assume(i64 noundef %13), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %3, metadata !53, metadata !DIExpression()), !dbg !54
  %14 = load i32, i32* %2, align 4, !dbg !55
  %15 = call i32 @factorial_iter(i32 noundef %14), !dbg !56
  store i32 %15, i32* %3, align 4, !dbg !54
  %16 = load i32, i32* %3, align 4, !dbg !57
  %17 = icmp sle i32 %16, 0, !dbg !59
  br i1 %17, label %18, label %19, !dbg !60

18:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 19, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !61
  unreachable, !dbg !61

19:                                               ; preds = %10
  ret i32 0, !dbg !62
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
!1 = !DIFile(filename: "20.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "06d18f723294cf01dfed5a8d327d830c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "factorial_iter", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 24, scope: !10)
!17 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 7, scope: !10)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 7, type: !13)
!20 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 3)
!21 = !DILocation(line: 7, column: 12, scope: !20)
!22 = !DILocation(line: 7, column: 8, scope: !20)
!23 = !DILocation(line: 7, column: 19, scope: !24)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 7, column: 3)
!25 = !DILocation(line: 7, column: 24, scope: !24)
!26 = !DILocation(line: 7, column: 21, scope: !24)
!27 = !DILocation(line: 7, column: 3, scope: !20)
!28 = !DILocation(line: 8, column: 15, scope: !29)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 7, column: 31)
!30 = !DILocation(line: 8, column: 12, scope: !29)
!31 = !DILocation(line: 9, column: 3, scope: !29)
!32 = !DILocation(line: 7, column: 28, scope: !24)
!33 = !DILocation(line: 7, column: 3, scope: !24)
!34 = distinct !{!34, !27, !35, !36}
!35 = !DILocation(line: 9, column: 3, scope: !20)
!36 = !{!"llvm.loop.mustprogress"}
!37 = !DILocation(line: 10, column: 10, scope: !10)
!38 = !DILocation(line: 10, column: 3, scope: !10)
!39 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !40, scopeLine: 13, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!40 = !DISubroutineType(types: !41)
!41 = !{!13}
!42 = !DILocalVariable(name: "n", scope: !39, file: !1, line: 14, type: !13)
!43 = !DILocation(line: 14, column: 7, scope: !39)
!44 = !DILocation(line: 15, column: 22, scope: !39)
!45 = !DILocation(line: 15, column: 3, scope: !39)
!46 = !DILocation(line: 16, column: 15, scope: !39)
!47 = !DILocation(line: 16, column: 17, scope: !39)
!48 = !DILocation(line: 16, column: 22, scope: !39)
!49 = !DILocation(line: 16, column: 25, scope: !39)
!50 = !DILocation(line: 16, column: 27, scope: !39)
!51 = !DILocation(line: 0, scope: !39)
!52 = !DILocation(line: 16, column: 3, scope: !39)
!53 = !DILocalVariable(name: "result", scope: !39, file: !1, line: 17, type: !13)
!54 = !DILocation(line: 17, column: 7, scope: !39)
!55 = !DILocation(line: 17, column: 31, scope: !39)
!56 = !DILocation(line: 17, column: 16, scope: !39)
!57 = !DILocation(line: 18, column: 6, scope: !58)
!58 = distinct !DILexicalBlock(scope: !39, file: !1, line: 18, column: 6)
!59 = !DILocation(line: 18, column: 13, scope: !58)
!60 = !DILocation(line: 18, column: 6, scope: !39)
!61 = !DILocation(line: 19, column: 5, scope: !58)
!62 = !DILocation(line: 20, column: 3, scope: !39)
