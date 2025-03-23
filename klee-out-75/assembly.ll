; ModuleID = '76.bc'
source_filename = "76.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"76.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  %5 = bitcast i32* %2 to i8*, !dbg !19
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !20
  %6 = bitcast i32* %3 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !22
  %7 = load i32, i32* %2, align 4, !dbg !23
  %8 = icmp sge i32 %7, -100, !dbg !24
  br i1 %8, label %9, label %12, !dbg !25

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !26
  %11 = icmp sle i32 %10, 100, !dbg !27
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !28
  %14 = zext i1 %13 to i32, !dbg !25
  %15 = sext i32 %14 to i64, !dbg !23
  call void @klee_assume(i64 noundef %15), !dbg !29
  %16 = load i32, i32* %3, align 4, !dbg !30
  %17 = icmp sge i32 %16, -100, !dbg !31
  br i1 %17, label %18, label %21, !dbg !32

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4, !dbg !33
  %20 = icmp sle i32 %19, 100, !dbg !34
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i1 [ false, %12 ], [ %20, %18 ], !dbg !28
  %23 = zext i1 %22 to i32, !dbg !32
  %24 = sext i32 %23 to i64, !dbg !30
  call void @klee_assume(i64 noundef %24), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %4, metadata !36, metadata !DIExpression()), !dbg !37
  %25 = load i32, i32* %2, align 4, !dbg !38
  %26 = load i32, i32* %3, align 4, !dbg !39
  %27 = add nsw i32 %25, %26, !dbg !40
  store i32 %27, i32* %4, align 4, !dbg !37
  %28 = load i32, i32* %4, align 4, !dbg !41
  %29 = load i32, i32* %2, align 4, !dbg !43
  %30 = sub nsw i32 %28, %29, !dbg !44
  %31 = load i32, i32* %3, align 4, !dbg !45
  %32 = icmp ne i32 %30, %31, !dbg !46
  br i1 %32, label %33, label %34, !dbg !47

33:                                               ; preds = %21
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef 13, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !48
  unreachable, !dbg !48

34:                                               ; preds = %21
  ret i32 0, !dbg !49
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

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
!1 = !DIFile(filename: "76.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "b5133b128849fe76183dc99bc8a24dde")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "a", scope: !10, file: !1, line: 6, type: !13)
!16 = !DILocation(line: 6, column: 9, scope: !10)
!17 = !DILocalVariable(name: "b", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 12, scope: !10)
!19 = !DILocation(line: 7, column: 24, scope: !10)
!20 = !DILocation(line: 7, column: 5, scope: !10)
!21 = !DILocation(line: 8, column: 24, scope: !10)
!22 = !DILocation(line: 8, column: 5, scope: !10)
!23 = !DILocation(line: 9, column: 17, scope: !10)
!24 = !DILocation(line: 9, column: 19, scope: !10)
!25 = !DILocation(line: 9, column: 27, scope: !10)
!26 = !DILocation(line: 9, column: 30, scope: !10)
!27 = !DILocation(line: 9, column: 32, scope: !10)
!28 = !DILocation(line: 0, scope: !10)
!29 = !DILocation(line: 9, column: 5, scope: !10)
!30 = !DILocation(line: 10, column: 17, scope: !10)
!31 = !DILocation(line: 10, column: 19, scope: !10)
!32 = !DILocation(line: 10, column: 27, scope: !10)
!33 = !DILocation(line: 10, column: 30, scope: !10)
!34 = !DILocation(line: 10, column: 32, scope: !10)
!35 = !DILocation(line: 10, column: 5, scope: !10)
!36 = !DILocalVariable(name: "c", scope: !10, file: !1, line: 11, type: !13)
!37 = !DILocation(line: 11, column: 9, scope: !10)
!38 = !DILocation(line: 11, column: 13, scope: !10)
!39 = !DILocation(line: 11, column: 17, scope: !10)
!40 = !DILocation(line: 11, column: 15, scope: !10)
!41 = !DILocation(line: 12, column: 8, scope: !42)
!42 = distinct !DILexicalBlock(scope: !10, file: !1, line: 12, column: 8)
!43 = !DILocation(line: 12, column: 12, scope: !42)
!44 = !DILocation(line: 12, column: 10, scope: !42)
!45 = !DILocation(line: 12, column: 17, scope: !42)
!46 = !DILocation(line: 12, column: 14, scope: !42)
!47 = !DILocation(line: 12, column: 8, scope: !10)
!48 = !DILocation(line: 13, column: 9, scope: !42)
!49 = !DILocation(line: 14, column: 5, scope: !10)
