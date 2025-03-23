; ModuleID = '30.bc'
source_filename = "30.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"30.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = bitcast i32* %2 to i8*, !dbg !19
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !20
  %7 = bitcast i32* %3 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %4, metadata !23, metadata !DIExpression()), !dbg !24
  %8 = load i32, i32* %2, align 4, !dbg !25
  %9 = load i32, i32* %3, align 4, !dbg !26
  %10 = and i32 %8, %9, !dbg !27
  store i32 %10, i32* %4, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %5, metadata !28, metadata !DIExpression()), !dbg !29
  %11 = load i32, i32* %2, align 4, !dbg !30
  %12 = load i32, i32* %3, align 4, !dbg !31
  %13 = or i32 %11, %12, !dbg !32
  store i32 %13, i32* %5, align 4, !dbg !29
  %14 = load i32, i32* %4, align 4, !dbg !33
  %15 = load i32, i32* %2, align 4, !dbg !35
  %16 = icmp sgt i32 %14, %15, !dbg !36
  br i1 %16, label %21, label %17, !dbg !37

17:                                               ; preds = %0
  %18 = load i32, i32* %5, align 4, !dbg !38
  %19 = load i32, i32* %2, align 4, !dbg !39
  %20 = icmp slt i32 %18, %19, !dbg !40
  br i1 %20, label %21, label %22, !dbg !41

21:                                               ; preds = %17, %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef 12, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !42
  unreachable, !dbg !42

22:                                               ; preds = %17
  ret i32 0, !dbg !43
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

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
!1 = !DIFile(filename: "30.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "895d9dfbc68b77baf01526126aff732a")
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
!16 = !DILocation(line: 6, column: 7, scope: !10)
!17 = !DILocalVariable(name: "y", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 10, scope: !10)
!19 = !DILocation(line: 7, column: 22, scope: !10)
!20 = !DILocation(line: 7, column: 3, scope: !10)
!21 = !DILocation(line: 8, column: 22, scope: !10)
!22 = !DILocation(line: 8, column: 3, scope: !10)
!23 = !DILocalVariable(name: "and_val", scope: !10, file: !1, line: 9, type: !13)
!24 = !DILocation(line: 9, column: 7, scope: !10)
!25 = !DILocation(line: 9, column: 17, scope: !10)
!26 = !DILocation(line: 9, column: 21, scope: !10)
!27 = !DILocation(line: 9, column: 19, scope: !10)
!28 = !DILocalVariable(name: "or_val", scope: !10, file: !1, line: 10, type: !13)
!29 = !DILocation(line: 10, column: 7, scope: !10)
!30 = !DILocation(line: 10, column: 17, scope: !10)
!31 = !DILocation(line: 10, column: 21, scope: !10)
!32 = !DILocation(line: 10, column: 19, scope: !10)
!33 = !DILocation(line: 11, column: 6, scope: !34)
!34 = distinct !DILexicalBlock(scope: !10, file: !1, line: 11, column: 6)
!35 = !DILocation(line: 11, column: 16, scope: !34)
!36 = !DILocation(line: 11, column: 14, scope: !34)
!37 = !DILocation(line: 11, column: 18, scope: !34)
!38 = !DILocation(line: 11, column: 21, scope: !34)
!39 = !DILocation(line: 11, column: 30, scope: !34)
!40 = !DILocation(line: 11, column: 28, scope: !34)
!41 = !DILocation(line: 11, column: 6, scope: !10)
!42 = !DILocation(line: 12, column: 5, scope: !34)
!43 = !DILocation(line: 13, column: 3, scope: !10)
