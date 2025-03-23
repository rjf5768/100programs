; ModuleID = '6.bc'
source_filename = "6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"6.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power(i32 noundef %0, i32 noundef %1) #0 !dbg !10 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = load i32, i32* %5, align 4, !dbg !19
  %7 = icmp eq i32 %6, 0, !dbg !21
  br i1 %7, label %8, label %9, !dbg !22

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !23
  br label %16, !dbg !23

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4, !dbg !24
  %11 = load i32, i32* %4, align 4, !dbg !25
  %12 = load i32, i32* %5, align 4, !dbg !26
  %13 = sub nsw i32 %12, 1, !dbg !27
  %14 = call i32 @power(i32 noundef %11, i32 noundef %13), !dbg !28
  %15 = mul nsw i32 %10, %14, !dbg !29
  store i32 %15, i32* %3, align 4, !dbg !30
  br label %16, !dbg !30

16:                                               ; preds = %9, %8
  %17 = load i32, i32* %3, align 4, !dbg !31
  ret i32 %17, !dbg !31
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !32 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %3, metadata !37, metadata !DIExpression()), !dbg !38
  %5 = bitcast i32* %2 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !40
  %6 = bitcast i32* %3 to i8*, !dbg !41
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !42
  %7 = load i32, i32* %3, align 4, !dbg !43
  %8 = icmp sge i32 %7, 0, !dbg !44
  br i1 %8, label %9, label %12, !dbg !45

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4, !dbg !46
  %11 = icmp sle i32 %10, 10, !dbg !47
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !48
  %14 = zext i1 %13 to i32, !dbg !45
  %15 = sext i32 %14 to i64, !dbg !43
  call void @klee_assume(i64 noundef %15), !dbg !49
  %16 = load i32, i32* %2, align 4, !dbg !50
  %17 = icmp sge i32 %16, 0, !dbg !51
  br i1 %17, label %18, label %21, !dbg !52

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4, !dbg !53
  %20 = icmp sle i32 %19, 10, !dbg !54
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i1 [ false, %12 ], [ %20, %18 ], !dbg !48
  %23 = zext i1 %22 to i32, !dbg !52
  %24 = sext i32 %23 to i64, !dbg !50
  call void @klee_assume(i64 noundef %24), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %4, metadata !56, metadata !DIExpression()), !dbg !57
  %25 = load i32, i32* %2, align 4, !dbg !58
  %26 = load i32, i32* %3, align 4, !dbg !59
  %27 = call i32 @power(i32 noundef %25, i32 noundef %26), !dbg !60
  store i32 %27, i32* %4, align 4, !dbg !57
  %28 = load i32, i32* %3, align 4, !dbg !61
  %29 = icmp sgt i32 %28, 0, !dbg !63
  br i1 %29, label %30, label %35, !dbg !64

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4, !dbg !65
  %32 = load i32, i32* %2, align 4, !dbg !66
  %33 = icmp slt i32 %31, %32, !dbg !67
  br i1 %33, label %34, label %35, !dbg !68

34:                                               ; preds = %30
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef 18, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !69
  unreachable, !dbg !69

35:                                               ; preds = %30, %21
  ret i32 0, !dbg !70
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
!1 = !DIFile(filename: "6.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "ad370f44a5da71e98d3a19a8bc575c3a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "power", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "base", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 15, scope: !10)
!17 = !DILocalVariable(name: "exp", arg: 2, scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 5, column: 25, scope: !10)
!19 = !DILocation(line: 6, column: 6, scope: !20)
!20 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 6)
!21 = !DILocation(line: 6, column: 10, scope: !20)
!22 = !DILocation(line: 6, column: 6, scope: !10)
!23 = !DILocation(line: 6, column: 16, scope: !20)
!24 = !DILocation(line: 7, column: 10, scope: !10)
!25 = !DILocation(line: 7, column: 23, scope: !10)
!26 = !DILocation(line: 7, column: 29, scope: !10)
!27 = !DILocation(line: 7, column: 32, scope: !10)
!28 = !DILocation(line: 7, column: 17, scope: !10)
!29 = !DILocation(line: 7, column: 15, scope: !10)
!30 = !DILocation(line: 7, column: 3, scope: !10)
!31 = !DILocation(line: 8, column: 1, scope: !10)
!32 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !33, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!33 = !DISubroutineType(types: !34)
!34 = !{!13}
!35 = !DILocalVariable(name: "base", scope: !32, file: !1, line: 11, type: !13)
!36 = !DILocation(line: 11, column: 7, scope: !32)
!37 = !DILocalVariable(name: "exp", scope: !32, file: !1, line: 11, type: !13)
!38 = !DILocation(line: 11, column: 13, scope: !32)
!39 = !DILocation(line: 12, column: 22, scope: !32)
!40 = !DILocation(line: 12, column: 3, scope: !32)
!41 = !DILocation(line: 13, column: 22, scope: !32)
!42 = !DILocation(line: 13, column: 3, scope: !32)
!43 = !DILocation(line: 14, column: 15, scope: !32)
!44 = !DILocation(line: 14, column: 19, scope: !32)
!45 = !DILocation(line: 14, column: 24, scope: !32)
!46 = !DILocation(line: 14, column: 27, scope: !32)
!47 = !DILocation(line: 14, column: 31, scope: !32)
!48 = !DILocation(line: 0, scope: !32)
!49 = !DILocation(line: 14, column: 3, scope: !32)
!50 = !DILocation(line: 15, column: 15, scope: !32)
!51 = !DILocation(line: 15, column: 20, scope: !32)
!52 = !DILocation(line: 15, column: 25, scope: !32)
!53 = !DILocation(line: 15, column: 28, scope: !32)
!54 = !DILocation(line: 15, column: 33, scope: !32)
!55 = !DILocation(line: 15, column: 3, scope: !32)
!56 = !DILocalVariable(name: "result", scope: !32, file: !1, line: 16, type: !13)
!57 = !DILocation(line: 16, column: 7, scope: !32)
!58 = !DILocation(line: 16, column: 22, scope: !32)
!59 = !DILocation(line: 16, column: 28, scope: !32)
!60 = !DILocation(line: 16, column: 16, scope: !32)
!61 = !DILocation(line: 17, column: 6, scope: !62)
!62 = distinct !DILexicalBlock(scope: !32, file: !1, line: 17, column: 6)
!63 = !DILocation(line: 17, column: 10, scope: !62)
!64 = !DILocation(line: 17, column: 14, scope: !62)
!65 = !DILocation(line: 17, column: 17, scope: !62)
!66 = !DILocation(line: 17, column: 26, scope: !62)
!67 = !DILocation(line: 17, column: 24, scope: !62)
!68 = !DILocation(line: 17, column: 6, scope: !32)
!69 = !DILocation(line: 18, column: 5, scope: !62)
!70 = !DILocation(line: 19, column: 3, scope: !32)
