; ModuleID = '3.bc'
source_filename = "3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"3.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @factorial(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !DIExpression()), !dbg !16
  %4 = load i32, i32* %3, align 4, !dbg !17
  %5 = icmp sle i32 %4, 1, !dbg !19
  br i1 %5, label %6, label %7, !dbg !20

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !21
  br label %13, !dbg !21

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !22
  %9 = load i32, i32* %3, align 4, !dbg !23
  %10 = sub nsw i32 %9, 1, !dbg !24
  %11 = call i32 @factorial(i32 noundef %10), !dbg !25
  %12 = mul nsw i32 %8, %11, !dbg !26
  store i32 %12, i32* %2, align 4, !dbg !27
  br label %13, !dbg !27

13:                                               ; preds = %7, %6
  %14 = load i32, i32* %2, align 4, !dbg !28
  ret i32 %14, !dbg !28
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !32, metadata !DIExpression()), !dbg !33
  %4 = bitcast i32* %2 to i8*, !dbg !34
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !35
  %5 = load i32, i32* %2, align 4, !dbg !36
  %6 = icmp sge i32 %5, 0, !dbg !37
  %7 = zext i1 %6 to i32, !dbg !37
  %8 = sext i32 %7 to i64, !dbg !36
  call void @klee_assume(i64 noundef %8), !dbg !38
  %9 = load i32, i32* %2, align 4, !dbg !39
  %10 = icmp sle i32 %9, 10, !dbg !40
  %11 = zext i1 %10 to i32, !dbg !40
  %12 = sext i32 %11 to i64, !dbg !39
  call void @klee_assume(i64 noundef %12), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %3, metadata !42, metadata !DIExpression()), !dbg !43
  %13 = load i32, i32* %2, align 4, !dbg !44
  %14 = call i32 @factorial(i32 noundef %13), !dbg !45
  store i32 %14, i32* %3, align 4, !dbg !43
  %15 = load i32, i32* %3, align 4, !dbg !46
  %16 = icmp sle i32 %15, 0, !dbg !48
  br i1 %16, label %17, label %18, !dbg !49

17:                                               ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 noundef 17, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !50
  unreachable, !dbg !50

18:                                               ; preds = %0
  ret i32 0, !dbg !51
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
!1 = !DIFile(filename: "3.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "8ead895f08e551303396003aadd06787")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "factorial", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 19, scope: !10)
!17 = !DILocation(line: 6, column: 6, scope: !18)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 6)
!19 = !DILocation(line: 6, column: 8, scope: !18)
!20 = !DILocation(line: 6, column: 6, scope: !10)
!21 = !DILocation(line: 6, column: 14, scope: !18)
!22 = !DILocation(line: 7, column: 10, scope: !10)
!23 = !DILocation(line: 7, column: 24, scope: !10)
!24 = !DILocation(line: 7, column: 26, scope: !10)
!25 = !DILocation(line: 7, column: 14, scope: !10)
!26 = !DILocation(line: 7, column: 12, scope: !10)
!27 = !DILocation(line: 7, column: 3, scope: !10)
!28 = !DILocation(line: 8, column: 1, scope: !10)
!29 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !30, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!30 = !DISubroutineType(types: !31)
!31 = !{!13}
!32 = !DILocalVariable(name: "n", scope: !29, file: !1, line: 11, type: !13)
!33 = !DILocation(line: 11, column: 7, scope: !29)
!34 = !DILocation(line: 12, column: 22, scope: !29)
!35 = !DILocation(line: 12, column: 3, scope: !29)
!36 = !DILocation(line: 13, column: 15, scope: !29)
!37 = !DILocation(line: 13, column: 17, scope: !29)
!38 = !DILocation(line: 13, column: 3, scope: !29)
!39 = !DILocation(line: 14, column: 15, scope: !29)
!40 = !DILocation(line: 14, column: 17, scope: !29)
!41 = !DILocation(line: 14, column: 3, scope: !29)
!42 = !DILocalVariable(name: "result", scope: !29, file: !1, line: 15, type: !13)
!43 = !DILocation(line: 15, column: 7, scope: !29)
!44 = !DILocation(line: 15, column: 26, scope: !29)
!45 = !DILocation(line: 15, column: 16, scope: !29)
!46 = !DILocation(line: 16, column: 6, scope: !47)
!47 = distinct !DILexicalBlock(scope: !29, file: !1, line: 16, column: 6)
!48 = !DILocation(line: 16, column: 13, scope: !47)
!49 = !DILocation(line: 16, column: 6, scope: !29)
!50 = !DILocation(line: 17, column: 5, scope: !47)
!51 = !DILocation(line: 18, column: 3, scope: !29)
