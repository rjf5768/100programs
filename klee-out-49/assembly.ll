; ModuleID = '50.bc'
source_filename = "50.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"minutes\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"50.c\00", align 1
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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  %5 = bitcast i32* %2 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !22
  %6 = load i32, i32* %2, align 4, !dbg !23
  %7 = icmp sge i32 %6, 0, !dbg !24
  br i1 %7, label %8, label %11, !dbg !25

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4, !dbg !26
  %10 = icmp slt i32 %9, 1440, !dbg !27
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ], !dbg !28
  %13 = zext i1 %12 to i32, !dbg !25
  %14 = sext i32 %13 to i64, !dbg !23
  call void @klee_assume(i64 noundef %14), !dbg !29
  %15 = load i32, i32* %2, align 4, !dbg !30
  %16 = sdiv i32 %15, 60, !dbg !31
  store i32 %16, i32* %3, align 4, !dbg !32
  %17 = load i32, i32* %2, align 4, !dbg !33
  %18 = srem i32 %17, 60, !dbg !34
  store i32 %18, i32* %4, align 4, !dbg !35
  %19 = load i32, i32* %3, align 4, !dbg !36
  %20 = icmp slt i32 %19, 0, !dbg !38
  br i1 %20, label %27, label %21, !dbg !39

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4, !dbg !40
  %23 = icmp slt i32 %22, 0, !dbg !41
  br i1 %23, label %27, label %24, !dbg !42

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4, !dbg !43
  %26 = icmp sge i32 %25, 60, !dbg !44
  br i1 %26, label %27, label %28, !dbg !45

27:                                               ; preds = %24, %21, %11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 12, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !46
  unreachable, !dbg !46

28:                                               ; preds = %24
  ret i32 0, !dbg !47
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
!1 = !DIFile(filename: "50.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "6429fd03b9163ffab891520b6f4d9197")
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
!15 = !DILocalVariable(name: "minutes", scope: !10, file: !1, line: 6, type: !13)
!16 = !DILocation(line: 6, column: 7, scope: !10)
!17 = !DILocalVariable(name: "hour", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 16, scope: !10)
!19 = !DILocalVariable(name: "min", scope: !10, file: !1, line: 6, type: !13)
!20 = !DILocation(line: 6, column: 22, scope: !10)
!21 = !DILocation(line: 7, column: 22, scope: !10)
!22 = !DILocation(line: 7, column: 3, scope: !10)
!23 = !DILocation(line: 8, column: 15, scope: !10)
!24 = !DILocation(line: 8, column: 23, scope: !10)
!25 = !DILocation(line: 8, column: 28, scope: !10)
!26 = !DILocation(line: 8, column: 31, scope: !10)
!27 = !DILocation(line: 8, column: 39, scope: !10)
!28 = !DILocation(line: 0, scope: !10)
!29 = !DILocation(line: 8, column: 3, scope: !10)
!30 = !DILocation(line: 9, column: 10, scope: !10)
!31 = !DILocation(line: 9, column: 18, scope: !10)
!32 = !DILocation(line: 9, column: 8, scope: !10)
!33 = !DILocation(line: 10, column: 9, scope: !10)
!34 = !DILocation(line: 10, column: 17, scope: !10)
!35 = !DILocation(line: 10, column: 7, scope: !10)
!36 = !DILocation(line: 11, column: 6, scope: !37)
!37 = distinct !DILexicalBlock(scope: !10, file: !1, line: 11, column: 6)
!38 = !DILocation(line: 11, column: 11, scope: !37)
!39 = !DILocation(line: 11, column: 15, scope: !37)
!40 = !DILocation(line: 11, column: 18, scope: !37)
!41 = !DILocation(line: 11, column: 22, scope: !37)
!42 = !DILocation(line: 11, column: 26, scope: !37)
!43 = !DILocation(line: 11, column: 29, scope: !37)
!44 = !DILocation(line: 11, column: 33, scope: !37)
!45 = !DILocation(line: 11, column: 6, scope: !10)
!46 = !DILocation(line: 12, column: 5, scope: !37)
!47 = !DILocation(line: 13, column: 3, scope: !10)
