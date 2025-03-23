; ModuleID = '5.bc'
source_filename = "5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"5.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binom(i32 noundef %0, i32 noundef %1) #0 !dbg !10 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = load i32, i32* %5, align 4, !dbg !19
  %7 = icmp eq i32 %6, 0, !dbg !21
  br i1 %7, label %12, label %8, !dbg !22

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4, !dbg !23
  %10 = load i32, i32* %4, align 4, !dbg !24
  %11 = icmp eq i32 %9, %10, !dbg !25
  br i1 %11, label %12, label %13, !dbg !26

12:                                               ; preds = %8, %2
  store i32 1, i32* %3, align 4, !dbg !27
  br label %24, !dbg !27

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4, !dbg !28
  %15 = sub nsw i32 %14, 1, !dbg !29
  %16 = load i32, i32* %5, align 4, !dbg !30
  %17 = sub nsw i32 %16, 1, !dbg !31
  %18 = call i32 @binom(i32 noundef %15, i32 noundef %17), !dbg !32
  %19 = load i32, i32* %4, align 4, !dbg !33
  %20 = sub nsw i32 %19, 1, !dbg !34
  %21 = load i32, i32* %5, align 4, !dbg !35
  %22 = call i32 @binom(i32 noundef %20, i32 noundef %21), !dbg !36
  %23 = add nsw i32 %18, %22, !dbg !37
  store i32 %23, i32* %3, align 4, !dbg !38
  br label %24, !dbg !38

24:                                               ; preds = %13, %12
  %25 = load i32, i32* %3, align 4, !dbg !39
  ret i32 %25, !dbg !39
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !40 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %3, metadata !45, metadata !DIExpression()), !dbg !46
  %5 = bitcast i32* %2 to i8*, !dbg !47
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !48
  %6 = bitcast i32* %3 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !50
  %7 = load i32, i32* %2, align 4, !dbg !51
  %8 = icmp sge i32 %7, 0, !dbg !52
  br i1 %8, label %9, label %12, !dbg !53

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4, !dbg !54
  %11 = icmp sle i32 %10, 15, !dbg !55
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !56
  %14 = zext i1 %13 to i32, !dbg !53
  %15 = sext i32 %14 to i64, !dbg !51
  call void @klee_assume(i64 noundef %15), !dbg !57
  %16 = load i32, i32* %3, align 4, !dbg !58
  %17 = icmp sge i32 %16, 0, !dbg !59
  br i1 %17, label %18, label %22, !dbg !60

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4, !dbg !61
  %20 = load i32, i32* %2, align 4, !dbg !62
  %21 = icmp sle i32 %19, %20, !dbg !63
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i1 [ false, %12 ], [ %21, %18 ], !dbg !56
  %24 = zext i1 %23 to i32, !dbg !60
  %25 = sext i32 %24 to i64, !dbg !58
  call void @klee_assume(i64 noundef %25), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %4, metadata !65, metadata !DIExpression()), !dbg !66
  %26 = load i32, i32* %2, align 4, !dbg !67
  %27 = load i32, i32* %3, align 4, !dbg !68
  %28 = call i32 @binom(i32 noundef %26, i32 noundef %27), !dbg !69
  store i32 %28, i32* %4, align 4, !dbg !66
  %29 = load i32, i32* %4, align 4, !dbg !70
  %30 = icmp slt i32 %29, 1, !dbg !72
  br i1 %30, label %31, label %32, !dbg !73

31:                                               ; preds = %22
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef 19, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !74
  unreachable, !dbg !74

32:                                               ; preds = %22
  ret i32 0, !dbg !75
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
!1 = !DIFile(filename: "5.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "29ca207561c3ce34c47c86919729aba3")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "binom", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 15, scope: !10)
!17 = !DILocalVariable(name: "k", arg: 2, scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 5, column: 22, scope: !10)
!19 = !DILocation(line: 6, column: 6, scope: !20)
!20 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 6)
!21 = !DILocation(line: 6, column: 8, scope: !20)
!22 = !DILocation(line: 6, column: 13, scope: !20)
!23 = !DILocation(line: 6, column: 16, scope: !20)
!24 = !DILocation(line: 6, column: 21, scope: !20)
!25 = !DILocation(line: 6, column: 18, scope: !20)
!26 = !DILocation(line: 6, column: 6, scope: !10)
!27 = !DILocation(line: 7, column: 5, scope: !20)
!28 = !DILocation(line: 8, column: 16, scope: !10)
!29 = !DILocation(line: 8, column: 17, scope: !10)
!30 = !DILocation(line: 8, column: 21, scope: !10)
!31 = !DILocation(line: 8, column: 22, scope: !10)
!32 = !DILocation(line: 8, column: 10, scope: !10)
!33 = !DILocation(line: 8, column: 34, scope: !10)
!34 = !DILocation(line: 8, column: 35, scope: !10)
!35 = !DILocation(line: 8, column: 39, scope: !10)
!36 = !DILocation(line: 8, column: 28, scope: !10)
!37 = !DILocation(line: 8, column: 26, scope: !10)
!38 = !DILocation(line: 8, column: 3, scope: !10)
!39 = !DILocation(line: 9, column: 1, scope: !10)
!40 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !41, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!41 = !DISubroutineType(types: !42)
!42 = !{!13}
!43 = !DILocalVariable(name: "n", scope: !40, file: !1, line: 12, type: !13)
!44 = !DILocation(line: 12, column: 7, scope: !40)
!45 = !DILocalVariable(name: "k", scope: !40, file: !1, line: 12, type: !13)
!46 = !DILocation(line: 12, column: 10, scope: !40)
!47 = !DILocation(line: 13, column: 22, scope: !40)
!48 = !DILocation(line: 13, column: 3, scope: !40)
!49 = !DILocation(line: 14, column: 22, scope: !40)
!50 = !DILocation(line: 14, column: 3, scope: !40)
!51 = !DILocation(line: 15, column: 15, scope: !40)
!52 = !DILocation(line: 15, column: 17, scope: !40)
!53 = !DILocation(line: 15, column: 22, scope: !40)
!54 = !DILocation(line: 15, column: 25, scope: !40)
!55 = !DILocation(line: 15, column: 27, scope: !40)
!56 = !DILocation(line: 0, scope: !40)
!57 = !DILocation(line: 15, column: 3, scope: !40)
!58 = !DILocation(line: 16, column: 15, scope: !40)
!59 = !DILocation(line: 16, column: 17, scope: !40)
!60 = !DILocation(line: 16, column: 22, scope: !40)
!61 = !DILocation(line: 16, column: 25, scope: !40)
!62 = !DILocation(line: 16, column: 30, scope: !40)
!63 = !DILocation(line: 16, column: 27, scope: !40)
!64 = !DILocation(line: 16, column: 3, scope: !40)
!65 = !DILocalVariable(name: "result", scope: !40, file: !1, line: 17, type: !13)
!66 = !DILocation(line: 17, column: 7, scope: !40)
!67 = !DILocation(line: 17, column: 22, scope: !40)
!68 = !DILocation(line: 17, column: 25, scope: !40)
!69 = !DILocation(line: 17, column: 16, scope: !40)
!70 = !DILocation(line: 18, column: 6, scope: !71)
!71 = distinct !DILexicalBlock(scope: !40, file: !1, line: 18, column: 6)
!72 = !DILocation(line: 18, column: 13, scope: !71)
!73 = !DILocation(line: 18, column: 6, scope: !40)
!74 = !DILocation(line: 19, column: 5, scope: !71)
!75 = !DILocation(line: 20, column: 3, scope: !40)
