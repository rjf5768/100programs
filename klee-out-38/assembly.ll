; ModuleID = '39.bc'
source_filename = "39.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"39.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_digits(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %4, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %4, align 4, !dbg !18
  %5 = load i32, i32* %3, align 4, !dbg !19
  %6 = icmp eq i32 %5, 0, !dbg !21
  br i1 %6, label %7, label %8, !dbg !22

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !23
  br label %19, !dbg !23

8:                                                ; preds = %1
  br label %9, !dbg !24

9:                                                ; preds = %12, %8
  %10 = load i32, i32* %3, align 4, !dbg !25
  %11 = icmp ne i32 %10, 0, !dbg !26
  br i1 %11, label %12, label %17, !dbg !24

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4, !dbg !27
  %14 = add nsw i32 %13, 1, !dbg !27
  store i32 %14, i32* %4, align 4, !dbg !27
  %15 = load i32, i32* %3, align 4, !dbg !29
  %16 = sdiv i32 %15, 10, !dbg !29
  store i32 %16, i32* %3, align 4, !dbg !29
  br label %9, !dbg !24, !llvm.loop !30

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4, !dbg !33
  store i32 %18, i32* %2, align 4, !dbg !34
  br label %19, !dbg !34

19:                                               ; preds = %17, %7
  %20 = load i32, i32* %2, align 4, !dbg !35
  ret i32 %20, !dbg !35
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !36 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %3, metadata !41, metadata !DIExpression()), !dbg !42
  %4 = bitcast i32* %2 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !44
  %5 = load i32, i32* %2, align 4, !dbg !45
  %6 = icmp sge i32 %5, 0, !dbg !46
  br i1 %6, label %7, label %10, !dbg !47

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !48
  %9 = icmp sle i32 %8, 1000, !dbg !49
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !50
  %12 = zext i1 %11 to i32, !dbg !47
  %13 = sext i32 %12 to i64, !dbg !45
  call void @klee_assume(i64 noundef %13), !dbg !51
  %14 = load i32, i32* %2, align 4, !dbg !52
  %15 = call i32 @count_digits(i32 noundef %14), !dbg !53
  store i32 %15, i32* %3, align 4, !dbg !54
  %16 = load i32, i32* %3, align 4, !dbg !55
  %17 = icmp slt i32 %16, 1, !dbg !57
  br i1 %17, label %18, label %19, !dbg !58

18:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !59
  unreachable, !dbg !59

19:                                               ; preds = %10
  ret i32 0, !dbg !60
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
!1 = !DIFile(filename: "39.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "634b38c55bfaa095355fee29ee44cfb6")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "count_digits", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 22, scope: !10)
!17 = !DILocalVariable(name: "count", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 7, scope: !10)
!19 = !DILocation(line: 7, column: 6, scope: !20)
!20 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 6)
!21 = !DILocation(line: 7, column: 8, scope: !20)
!22 = !DILocation(line: 7, column: 6, scope: !10)
!23 = !DILocation(line: 8, column: 5, scope: !20)
!24 = !DILocation(line: 9, column: 3, scope: !10)
!25 = !DILocation(line: 9, column: 9, scope: !10)
!26 = !DILocation(line: 9, column: 11, scope: !10)
!27 = !DILocation(line: 10, column: 10, scope: !28)
!28 = distinct !DILexicalBlock(scope: !10, file: !1, line: 9, column: 17)
!29 = !DILocation(line: 11, column: 7, scope: !28)
!30 = distinct !{!30, !24, !31, !32}
!31 = !DILocation(line: 12, column: 3, scope: !10)
!32 = !{!"llvm.loop.mustprogress"}
!33 = !DILocation(line: 13, column: 10, scope: !10)
!34 = !DILocation(line: 13, column: 3, scope: !10)
!35 = !DILocation(line: 14, column: 1, scope: !10)
!36 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 16, type: !37, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!37 = !DISubroutineType(types: !38)
!38 = !{!13}
!39 = !DILocalVariable(name: "n", scope: !36, file: !1, line: 17, type: !13)
!40 = !DILocation(line: 17, column: 7, scope: !36)
!41 = !DILocalVariable(name: "digits", scope: !36, file: !1, line: 17, type: !13)
!42 = !DILocation(line: 17, column: 10, scope: !36)
!43 = !DILocation(line: 18, column: 22, scope: !36)
!44 = !DILocation(line: 18, column: 3, scope: !36)
!45 = !DILocation(line: 19, column: 15, scope: !36)
!46 = !DILocation(line: 19, column: 17, scope: !36)
!47 = !DILocation(line: 19, column: 22, scope: !36)
!48 = !DILocation(line: 19, column: 25, scope: !36)
!49 = !DILocation(line: 19, column: 27, scope: !36)
!50 = !DILocation(line: 0, scope: !36)
!51 = !DILocation(line: 19, column: 3, scope: !36)
!52 = !DILocation(line: 20, column: 25, scope: !36)
!53 = !DILocation(line: 20, column: 12, scope: !36)
!54 = !DILocation(line: 20, column: 10, scope: !36)
!55 = !DILocation(line: 21, column: 6, scope: !56)
!56 = distinct !DILexicalBlock(scope: !36, file: !1, line: 21, column: 6)
!57 = !DILocation(line: 21, column: 13, scope: !56)
!58 = !DILocation(line: 21, column: 6, scope: !36)
!59 = !DILocation(line: 22, column: 5, scope: !56)
!60 = !DILocation(line: 23, column: 3, scope: !36)
