; ModuleID = '22.bc'
source_filename = "22.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"request\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"22.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %2, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  %4 = bitcast i32* %3 to i8*, !dbg !19
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !20
  %5 = load i32, i32* %3, align 4, !dbg !21
  %6 = icmp sge i32 %5, 0, !dbg !22
  br i1 %6, label %7, label %10, !dbg !23

7:                                                ; preds = %0
  %8 = load i32, i32* %3, align 4, !dbg !24
  %9 = icmp sle i32 %8, 10, !dbg !25
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !26
  %12 = zext i1 %11 to i32, !dbg !23
  %13 = sext i32 %12 to i64, !dbg !21
  call void @klee_assume(i64 noundef %13), !dbg !27
  %14 = load i32, i32* %3, align 4, !dbg !28
  %15 = load i32, i32* %2, align 4, !dbg !30
  %16 = icmp sgt i32 %14, %15, !dbg !31
  br i1 %16, label %17, label %19, !dbg !32

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4, !dbg !33
  store i32 %18, i32* %2, align 4, !dbg !34
  br label %19, !dbg !35

19:                                               ; preds = %17, %10
  %20 = load i32, i32* %3, align 4, !dbg !36
  %21 = icmp sgt i32 %20, 0, !dbg !38
  br i1 %21, label %22, label %27, !dbg !39

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4, !dbg !40
  %24 = load i32, i32* %3, align 4, !dbg !41
  %25 = icmp slt i32 %23, %24, !dbg !42
  br i1 %25, label %26, label %27, !dbg !43

26:                                               ; preds = %22
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 13, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !44
  unreachable, !dbg !44

27:                                               ; preds = %22, %19
  ret i32 0, !dbg !45
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
!1 = !DIFile(filename: "22.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "00a63f4fab56ab286feb6d20adda5deb")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "current_floor", scope: !10, file: !1, line: 6, type: !13)
!16 = !DILocation(line: 6, column: 7, scope: !10)
!17 = !DILocalVariable(name: "request", scope: !10, file: !1, line: 7, type: !13)
!18 = !DILocation(line: 7, column: 7, scope: !10)
!19 = !DILocation(line: 8, column: 22, scope: !10)
!20 = !DILocation(line: 8, column: 3, scope: !10)
!21 = !DILocation(line: 9, column: 15, scope: !10)
!22 = !DILocation(line: 9, column: 23, scope: !10)
!23 = !DILocation(line: 9, column: 28, scope: !10)
!24 = !DILocation(line: 9, column: 31, scope: !10)
!25 = !DILocation(line: 9, column: 39, scope: !10)
!26 = !DILocation(line: 0, scope: !10)
!27 = !DILocation(line: 9, column: 3, scope: !10)
!28 = !DILocation(line: 10, column: 6, scope: !29)
!29 = distinct !DILexicalBlock(scope: !10, file: !1, line: 10, column: 6)
!30 = !DILocation(line: 10, column: 16, scope: !29)
!31 = !DILocation(line: 10, column: 14, scope: !29)
!32 = !DILocation(line: 10, column: 6, scope: !10)
!33 = !DILocation(line: 11, column: 21, scope: !29)
!34 = !DILocation(line: 11, column: 19, scope: !29)
!35 = !DILocation(line: 11, column: 5, scope: !29)
!36 = !DILocation(line: 12, column: 6, scope: !37)
!37 = distinct !DILexicalBlock(scope: !10, file: !1, line: 12, column: 6)
!38 = !DILocation(line: 12, column: 14, scope: !37)
!39 = !DILocation(line: 12, column: 18, scope: !37)
!40 = !DILocation(line: 12, column: 21, scope: !37)
!41 = !DILocation(line: 12, column: 37, scope: !37)
!42 = !DILocation(line: 12, column: 35, scope: !37)
!43 = !DILocation(line: 12, column: 6, scope: !10)
!44 = !DILocation(line: 13, column: 5, scope: !37)
!45 = !DILocation(line: 14, column: 3, scope: !10)
