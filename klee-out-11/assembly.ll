; ModuleID = '12.bc'
source_filename = "12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"12.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sum_digits(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %3, align 4, !dbg !18
  br label %4, !dbg !19

4:                                                ; preds = %7, %1
  %5 = load i32, i32* %2, align 4, !dbg !20
  %6 = icmp sgt i32 %5, 0, !dbg !21
  br i1 %6, label %7, label %14, !dbg !19

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4, !dbg !22
  %9 = srem i32 %8, 10, !dbg !24
  %10 = load i32, i32* %3, align 4, !dbg !25
  %11 = add nsw i32 %10, %9, !dbg !25
  store i32 %11, i32* %3, align 4, !dbg !25
  %12 = load i32, i32* %2, align 4, !dbg !26
  %13 = sdiv i32 %12, 10, !dbg !26
  store i32 %13, i32* %2, align 4, !dbg !26
  br label %4, !dbg !19, !llvm.loop !27

14:                                               ; preds = %4
  %15 = load i32, i32* %3, align 4, !dbg !30
  ret i32 %15, !dbg !31
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !32 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !35, metadata !DIExpression()), !dbg !36
  %4 = bitcast i32* %2 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !38
  %5 = load i32, i32* %2, align 4, !dbg !39
  %6 = icmp sge i32 %5, 0, !dbg !40
  %7 = zext i1 %6 to i32, !dbg !40
  %8 = sext i32 %7 to i64, !dbg !39
  call void @klee_assume(i64 noundef %8), !dbg !41
  %9 = load i32, i32* %2, align 4, !dbg !42
  %10 = icmp sle i32 %9, 10, !dbg !43
  %11 = zext i1 %10 to i32, !dbg !43
  %12 = sext i32 %11 to i64, !dbg !42
  call void @klee_assume(i64 noundef %12), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %3, metadata !45, metadata !DIExpression()), !dbg !46
  %13 = load i32, i32* %2, align 4, !dbg !47
  %14 = call i32 @sum_digits(i32 noundef %13), !dbg !48
  store i32 %14, i32* %3, align 4, !dbg !46
  %15 = load i32, i32* %3, align 4, !dbg !49
  %16 = load i32, i32* %2, align 4, !dbg !51
  %17 = icmp sgt i32 %15, %16, !dbg !52
  br i1 %17, label %18, label %19, !dbg !53

18:                                               ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 21, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !54
  unreachable, !dbg !54

19:                                               ; preds = %0
  ret i32 0, !dbg !55
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
!1 = !DIFile(filename: "12.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "bdddddd6221f9ec24f31b337d8bbd7c1")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "sum_digits", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 20, scope: !10)
!17 = !DILocalVariable(name: "sum", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 7, scope: !10)
!19 = !DILocation(line: 7, column: 3, scope: !10)
!20 = !DILocation(line: 7, column: 9, scope: !10)
!21 = !DILocation(line: 7, column: 11, scope: !10)
!22 = !DILocation(line: 8, column: 12, scope: !23)
!23 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 16)
!24 = !DILocation(line: 8, column: 14, scope: !23)
!25 = !DILocation(line: 8, column: 9, scope: !23)
!26 = !DILocation(line: 9, column: 7, scope: !23)
!27 = distinct !{!27, !19, !28, !29}
!28 = !DILocation(line: 10, column: 3, scope: !10)
!29 = !{!"llvm.loop.mustprogress"}
!30 = !DILocation(line: 11, column: 10, scope: !10)
!31 = !DILocation(line: 11, column: 3, scope: !10)
!32 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !33, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!33 = !DISubroutineType(types: !34)
!34 = !{!13}
!35 = !DILocalVariable(name: "n", scope: !32, file: !1, line: 15, type: !13)
!36 = !DILocation(line: 15, column: 7, scope: !32)
!37 = !DILocation(line: 16, column: 22, scope: !32)
!38 = !DILocation(line: 16, column: 3, scope: !32)
!39 = !DILocation(line: 17, column: 15, scope: !32)
!40 = !DILocation(line: 17, column: 17, scope: !32)
!41 = !DILocation(line: 17, column: 3, scope: !32)
!42 = !DILocation(line: 18, column: 15, scope: !32)
!43 = !DILocation(line: 18, column: 17, scope: !32)
!44 = !DILocation(line: 18, column: 3, scope: !32)
!45 = !DILocalVariable(name: "s", scope: !32, file: !1, line: 19, type: !13)
!46 = !DILocation(line: 19, column: 7, scope: !32)
!47 = !DILocation(line: 19, column: 22, scope: !32)
!48 = !DILocation(line: 19, column: 11, scope: !32)
!49 = !DILocation(line: 20, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !32, file: !1, line: 20, column: 6)
!51 = !DILocation(line: 20, column: 10, scope: !50)
!52 = !DILocation(line: 20, column: 8, scope: !50)
!53 = !DILocation(line: 20, column: 6, scope: !32)
!54 = !DILocation(line: 21, column: 5, scope: !50)
!55 = !DILocation(line: 22, column: 3, scope: !32)
