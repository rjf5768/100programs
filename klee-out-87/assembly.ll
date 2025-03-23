; ModuleID = '88.bc'
source_filename = "88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"88.c\00", align 1
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
  store i32 0, i32* %3, align 4, !dbg !18
  %5 = bitcast i32* %2 to i8*, !dbg !19
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !20
  %6 = load i32, i32* %2, align 4, !dbg !21
  %7 = icmp sge i32 %6, 1, !dbg !22
  br i1 %7, label %8, label %11, !dbg !23

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4, !dbg !24
  %10 = icmp sle i32 %9, 50, !dbg !25
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ], !dbg !26
  %13 = zext i1 %12 to i32, !dbg !23
  %14 = sext i32 %13 to i64, !dbg !21
  call void @klee_assume(i64 noundef %14), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %4, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 1, i32* %4, align 4, !dbg !29
  br label %15, !dbg !30

15:                                               ; preds = %31, %11
  %16 = load i32, i32* %4, align 4, !dbg !31
  %17 = load i32, i32* %2, align 4, !dbg !32
  %18 = icmp sle i32 %16, %17, !dbg !33
  br i1 %18, label %19, label %34, !dbg !30

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4, !dbg !34
  %21 = srem i32 %20, 2, !dbg !37
  %22 = icmp eq i32 %21, 0, !dbg !38
  br i1 %22, label %23, label %27, !dbg !39

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4, !dbg !40
  %25 = load i32, i32* %3, align 4, !dbg !41
  %26 = add nsw i32 %25, %24, !dbg !41
  store i32 %26, i32* %3, align 4, !dbg !41
  br label %31, !dbg !42

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4, !dbg !43
  %29 = load i32, i32* %3, align 4, !dbg !44
  %30 = sub nsw i32 %29, %28, !dbg !44
  store i32 %30, i32* %3, align 4, !dbg !44
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %4, align 4, !dbg !45
  %33 = add nsw i32 %32, 1, !dbg !45
  store i32 %33, i32* %4, align 4, !dbg !45
  br label %15, !dbg !30, !llvm.loop !46

34:                                               ; preds = %15
  %35 = load i32, i32* %3, align 4, !dbg !49
  %36 = icmp slt i32 %35, -1000, !dbg !51
  br i1 %36, label %40, label %37, !dbg !52

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4, !dbg !53
  %39 = icmp sgt i32 %38, 1000, !dbg !54
  br i1 %39, label %40, label %41, !dbg !55

40:                                               ; preds = %37, %34
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 18, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !56
  unreachable, !dbg !56

41:                                               ; preds = %37
  ret i32 0, !dbg !57
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
!1 = !DIFile(filename: "88.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "7c003575888f1af692e0287ca48a366c")
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
!15 = !DILocalVariable(name: "x", scope: !10, file: !1, line: 6, type: !13)
!16 = !DILocation(line: 6, column: 9, scope: !10)
!17 = !DILocalVariable(name: "sum", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 12, scope: !10)
!19 = !DILocation(line: 7, column: 24, scope: !10)
!20 = !DILocation(line: 7, column: 5, scope: !10)
!21 = !DILocation(line: 8, column: 17, scope: !10)
!22 = !DILocation(line: 8, column: 19, scope: !10)
!23 = !DILocation(line: 8, column: 24, scope: !10)
!24 = !DILocation(line: 8, column: 27, scope: !10)
!25 = !DILocation(line: 8, column: 29, scope: !10)
!26 = !DILocation(line: 0, scope: !10)
!27 = !DILocation(line: 8, column: 5, scope: !10)
!28 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 9, type: !13)
!29 = !DILocation(line: 9, column: 9, scope: !10)
!30 = !DILocation(line: 10, column: 5, scope: !10)
!31 = !DILocation(line: 10, column: 11, scope: !10)
!32 = !DILocation(line: 10, column: 16, scope: !10)
!33 = !DILocation(line: 10, column: 13, scope: !10)
!34 = !DILocation(line: 11, column: 12, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 11, column: 12)
!36 = distinct !DILexicalBlock(scope: !10, file: !1, line: 10, column: 19)
!37 = !DILocation(line: 11, column: 14, scope: !35)
!38 = !DILocation(line: 11, column: 18, scope: !35)
!39 = !DILocation(line: 11, column: 12, scope: !36)
!40 = !DILocation(line: 12, column: 20, scope: !35)
!41 = !DILocation(line: 12, column: 17, scope: !35)
!42 = !DILocation(line: 12, column: 13, scope: !35)
!43 = !DILocation(line: 14, column: 20, scope: !35)
!44 = !DILocation(line: 14, column: 17, scope: !35)
!45 = !DILocation(line: 15, column: 10, scope: !36)
!46 = distinct !{!46, !30, !47, !48}
!47 = !DILocation(line: 16, column: 5, scope: !10)
!48 = !{!"llvm.loop.mustprogress"}
!49 = !DILocation(line: 17, column: 8, scope: !50)
!50 = distinct !DILexicalBlock(scope: !10, file: !1, line: 17, column: 8)
!51 = !DILocation(line: 17, column: 12, scope: !50)
!52 = !DILocation(line: 17, column: 20, scope: !50)
!53 = !DILocation(line: 17, column: 23, scope: !50)
!54 = !DILocation(line: 17, column: 27, scope: !50)
!55 = !DILocation(line: 17, column: 8, scope: !10)
!56 = !DILocation(line: 18, column: 9, scope: !50)
!57 = !DILocation(line: 19, column: 5, scope: !10)
