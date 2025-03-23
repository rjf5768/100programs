; ModuleID = '56.bc'
source_filename = "56.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"56.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @piecewise(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !DIExpression()), !dbg !16
  %4 = load i32, i32* %3, align 4, !dbg !17
  %5 = icmp slt i32 %4, 10, !dbg !19
  br i1 %5, label %6, label %10, !dbg !20

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !21
  %8 = load i32, i32* %3, align 4, !dbg !22
  %9 = mul nsw i32 %7, %8, !dbg !23
  store i32 %9, i32* %2, align 4, !dbg !24
  br label %14, !dbg !24

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4, !dbg !25
  %12 = mul nsw i32 2, %11, !dbg !26
  %13 = add nsw i32 %12, 1, !dbg !27
  store i32 %13, i32* %2, align 4, !dbg !28
  br label %14, !dbg !28

14:                                               ; preds = %10, %6
  %15 = load i32, i32* %2, align 4, !dbg !29
  ret i32 %15, !dbg !29
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !30 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %3, metadata !35, metadata !DIExpression()), !dbg !36
  %4 = bitcast i32* %2 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !38
  %5 = load i32, i32* %2, align 4, !dbg !39
  %6 = icmp sge i32 %5, 0, !dbg !40
  br i1 %6, label %7, label %10, !dbg !41

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !42
  %9 = icmp sle i32 %8, 20, !dbg !43
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !44
  %12 = zext i1 %11 to i32, !dbg !41
  %13 = sext i32 %12 to i64, !dbg !39
  call void @klee_assume(i64 noundef %13), !dbg !45
  %14 = load i32, i32* %2, align 4, !dbg !46
  %15 = call i32 @piecewise(i32 noundef %14), !dbg !47
  store i32 %15, i32* %3, align 4, !dbg !48
  %16 = load i32, i32* %2, align 4, !dbg !49
  %17 = icmp slt i32 %16, 10, !dbg !51
  br i1 %17, label %18, label %25, !dbg !52

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4, !dbg !53
  %20 = load i32, i32* %2, align 4, !dbg !54
  %21 = load i32, i32* %2, align 4, !dbg !55
  %22 = mul nsw i32 %20, %21, !dbg !56
  %23 = icmp ne i32 %19, %22, !dbg !57
  br i1 %23, label %24, label %25, !dbg !58

24:                                               ; preds = %18
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 18, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !59
  unreachable, !dbg !59

25:                                               ; preds = %18, %10
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
!1 = !DIFile(filename: "56.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "c76c06d11994958ccd26426c2db7de69")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "piecewise", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 19, scope: !10)
!17 = !DILocation(line: 6, column: 6, scope: !18)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 6)
!19 = !DILocation(line: 6, column: 8, scope: !18)
!20 = !DILocation(line: 6, column: 6, scope: !10)
!21 = !DILocation(line: 7, column: 12, scope: !18)
!22 = !DILocation(line: 7, column: 16, scope: !18)
!23 = !DILocation(line: 7, column: 14, scope: !18)
!24 = !DILocation(line: 7, column: 5, scope: !18)
!25 = !DILocation(line: 9, column: 16, scope: !18)
!26 = !DILocation(line: 9, column: 14, scope: !18)
!27 = !DILocation(line: 9, column: 18, scope: !18)
!28 = !DILocation(line: 9, column: 5, scope: !18)
!29 = !DILocation(line: 10, column: 1, scope: !10)
!30 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !31, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!31 = !DISubroutineType(types: !32)
!32 = !{!13}
!33 = !DILocalVariable(name: "x", scope: !30, file: !1, line: 13, type: !13)
!34 = !DILocation(line: 13, column: 7, scope: !30)
!35 = !DILocalVariable(name: "y", scope: !30, file: !1, line: 13, type: !13)
!36 = !DILocation(line: 13, column: 10, scope: !30)
!37 = !DILocation(line: 14, column: 22, scope: !30)
!38 = !DILocation(line: 14, column: 3, scope: !30)
!39 = !DILocation(line: 15, column: 15, scope: !30)
!40 = !DILocation(line: 15, column: 17, scope: !30)
!41 = !DILocation(line: 15, column: 22, scope: !30)
!42 = !DILocation(line: 15, column: 25, scope: !30)
!43 = !DILocation(line: 15, column: 27, scope: !30)
!44 = !DILocation(line: 0, scope: !30)
!45 = !DILocation(line: 15, column: 3, scope: !30)
!46 = !DILocation(line: 16, column: 17, scope: !30)
!47 = !DILocation(line: 16, column: 7, scope: !30)
!48 = !DILocation(line: 16, column: 5, scope: !30)
!49 = !DILocation(line: 17, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !30, file: !1, line: 17, column: 6)
!51 = !DILocation(line: 17, column: 8, scope: !50)
!52 = !DILocation(line: 17, column: 13, scope: !50)
!53 = !DILocation(line: 17, column: 16, scope: !50)
!54 = !DILocation(line: 17, column: 21, scope: !50)
!55 = !DILocation(line: 17, column: 25, scope: !50)
!56 = !DILocation(line: 17, column: 23, scope: !50)
!57 = !DILocation(line: 17, column: 18, scope: !50)
!58 = !DILocation(line: 17, column: 6, scope: !30)
!59 = !DILocation(line: 18, column: 5, scope: !50)
!60 = !DILocation(line: 19, column: 3, scope: !30)
