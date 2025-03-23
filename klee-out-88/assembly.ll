; ModuleID = '89.bc'
source_filename = "89.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

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
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  %5 = bitcast i32* %2 to i8*, !dbg !21
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !22
  %6 = load i32, i32* %2, align 4, !dbg !23
  %7 = icmp sge i32 %6, 0, !dbg !24
  br i1 %7, label %8, label %11, !dbg !25

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4, !dbg !26
  %10 = icmp sle i32 %9, 100, !dbg !27
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ], !dbg !28
  %13 = zext i1 %12 to i32, !dbg !25
  %14 = sext i32 %13 to i64, !dbg !23
  call void @klee_assume(i64 noundef %14), !dbg !29
  br label %15, !dbg !30

15:                                               ; preds = %11, %28
  %16 = load i32, i32* %3, align 4, !dbg !31
  %17 = load i32, i32* %3, align 4, !dbg !33
  %18 = mul nsw i32 %16, %17, !dbg !34
  store i32 %18, i32* %4, align 4, !dbg !35
  %19 = load i32, i32* %4, align 4, !dbg !36
  %20 = load i32, i32* %2, align 4, !dbg !38
  %21 = icmp eq i32 %19, %20, !dbg !39
  br i1 %21, label %22, label %23, !dbg !40

22:                                               ; preds = %15
  br label %31, !dbg !41

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4, !dbg !42
  %25 = load i32, i32* %2, align 4, !dbg !44
  %26 = icmp sgt i32 %24, %25, !dbg !45
  br i1 %26, label %27, label %28, !dbg !46

27:                                               ; preds = %23
  br label %31, !dbg !47

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4, !dbg !48
  %30 = add nsw i32 %29, 1, !dbg !48
  store i32 %30, i32* %3, align 4, !dbg !48
  br label %15, !dbg !30, !llvm.loop !49

31:                                               ; preds = %27, %22
  ret i32 0, !dbg !51
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "89.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "f6746fa741d7b679144fd175fad8c0f6")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !11, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 9, scope: !10)
!17 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 5, column: 12, scope: !10)
!19 = !DILocalVariable(name: "sq", scope: !10, file: !1, line: 5, type: !13)
!20 = !DILocation(line: 5, column: 19, scope: !10)
!21 = !DILocation(line: 6, column: 24, scope: !10)
!22 = !DILocation(line: 6, column: 5, scope: !10)
!23 = !DILocation(line: 7, column: 17, scope: !10)
!24 = !DILocation(line: 7, column: 19, scope: !10)
!25 = !DILocation(line: 7, column: 24, scope: !10)
!26 = !DILocation(line: 7, column: 27, scope: !10)
!27 = !DILocation(line: 7, column: 29, scope: !10)
!28 = !DILocation(line: 0, scope: !10)
!29 = !DILocation(line: 7, column: 5, scope: !10)
!30 = !DILocation(line: 8, column: 5, scope: !10)
!31 = !DILocation(line: 9, column: 14, scope: !32)
!32 = distinct !DILexicalBlock(scope: !10, file: !1, line: 8, column: 15)
!33 = !DILocation(line: 9, column: 18, scope: !32)
!34 = !DILocation(line: 9, column: 16, scope: !32)
!35 = !DILocation(line: 9, column: 12, scope: !32)
!36 = !DILocation(line: 10, column: 13, scope: !37)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 10, column: 13)
!38 = !DILocation(line: 10, column: 19, scope: !37)
!39 = !DILocation(line: 10, column: 16, scope: !37)
!40 = !DILocation(line: 10, column: 13, scope: !32)
!41 = !DILocation(line: 11, column: 13, scope: !37)
!42 = !DILocation(line: 12, column: 13, scope: !43)
!43 = distinct !DILexicalBlock(scope: !32, file: !1, line: 12, column: 13)
!44 = !DILocation(line: 12, column: 18, scope: !43)
!45 = !DILocation(line: 12, column: 16, scope: !43)
!46 = !DILocation(line: 12, column: 13, scope: !32)
!47 = !DILocation(line: 13, column: 13, scope: !43)
!48 = !DILocation(line: 14, column: 10, scope: !32)
!49 = distinct !{!49, !30, !50}
!50 = !DILocation(line: 15, column: 5, scope: !10)
!51 = !DILocation(line: 16, column: 5, scope: !10)
