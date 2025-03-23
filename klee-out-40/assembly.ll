; ModuleID = '41.bc'
source_filename = "41.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_armstrong(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = load i32, i32* %2, align 4, !dbg !19
  store i32 %6, i32* %3, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %4, align 4, !dbg !21
  br label %7, !dbg !22

7:                                                ; preds = %10, %1
  %8 = load i32, i32* %2, align 4, !dbg !23
  %9 = icmp sgt i32 %8, 0, !dbg !24
  br i1 %9, label %10, label %22, !dbg !22

10:                                               ; preds = %7
  call void @llvm.dbg.declare(metadata i32* %5, metadata !25, metadata !DIExpression()), !dbg !27
  %11 = load i32, i32* %2, align 4, !dbg !28
  %12 = srem i32 %11, 10, !dbg !29
  store i32 %12, i32* %5, align 4, !dbg !27
  %13 = load i32, i32* %5, align 4, !dbg !30
  %14 = load i32, i32* %5, align 4, !dbg !31
  %15 = mul nsw i32 %13, %14, !dbg !32
  %16 = load i32, i32* %5, align 4, !dbg !33
  %17 = mul nsw i32 %15, %16, !dbg !34
  %18 = load i32, i32* %4, align 4, !dbg !35
  %19 = add nsw i32 %18, %17, !dbg !35
  store i32 %19, i32* %4, align 4, !dbg !35
  %20 = load i32, i32* %2, align 4, !dbg !36
  %21 = sdiv i32 %20, 10, !dbg !36
  store i32 %21, i32* %2, align 4, !dbg !36
  br label %7, !dbg !22, !llvm.loop !37

22:                                               ; preds = %7
  %23 = load i32, i32* %4, align 4, !dbg !40
  %24 = load i32, i32* %3, align 4, !dbg !41
  %25 = icmp eq i32 %23, %24, !dbg !42
  %26 = zext i1 %25 to i32, !dbg !42
  ret i32 %26, !dbg !43
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !44 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !47, metadata !DIExpression()), !dbg !48
  %4 = bitcast i32* %2 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %5 = load i32, i32* %2, align 4, !dbg !51
  %6 = icmp sge i32 %5, 1, !dbg !52
  br i1 %6, label %7, label %10, !dbg !53

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !54
  %9 = icmp sle i32 %8, 1000, !dbg !55
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !56
  %12 = zext i1 %11 to i32, !dbg !53
  %13 = sext i32 %12 to i64, !dbg !51
  call void @klee_assume(i64 noundef %13), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %3, metadata !58, metadata !DIExpression()), !dbg !59
  %14 = load i32, i32* %2, align 4, !dbg !60
  %15 = call i32 @is_armstrong(i32 noundef %14), !dbg !61
  store i32 %15, i32* %3, align 4, !dbg !59
  ret i32 0, !dbg !62
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "41.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "0e8a0024c60212ae9286604ce9120a5a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "is_armstrong", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 22, scope: !10)
!17 = !DILocalVariable(name: "original", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 7, scope: !10)
!19 = !DILocation(line: 6, column: 18, scope: !10)
!20 = !DILocalVariable(name: "sum", scope: !10, file: !1, line: 6, type: !13)
!21 = !DILocation(line: 6, column: 21, scope: !10)
!22 = !DILocation(line: 7, column: 3, scope: !10)
!23 = !DILocation(line: 7, column: 9, scope: !10)
!24 = !DILocation(line: 7, column: 11, scope: !10)
!25 = !DILocalVariable(name: "digit", scope: !26, file: !1, line: 8, type: !13)
!26 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 16)
!27 = !DILocation(line: 8, column: 9, scope: !26)
!28 = !DILocation(line: 8, column: 17, scope: !26)
!29 = !DILocation(line: 8, column: 19, scope: !26)
!30 = !DILocation(line: 9, column: 12, scope: !26)
!31 = !DILocation(line: 9, column: 20, scope: !26)
!32 = !DILocation(line: 9, column: 18, scope: !26)
!33 = !DILocation(line: 9, column: 28, scope: !26)
!34 = !DILocation(line: 9, column: 26, scope: !26)
!35 = !DILocation(line: 9, column: 9, scope: !26)
!36 = !DILocation(line: 10, column: 7, scope: !26)
!37 = distinct !{!37, !22, !38, !39}
!38 = !DILocation(line: 11, column: 3, scope: !10)
!39 = !{!"llvm.loop.mustprogress"}
!40 = !DILocation(line: 12, column: 11, scope: !10)
!41 = !DILocation(line: 12, column: 18, scope: !10)
!42 = !DILocation(line: 12, column: 15, scope: !10)
!43 = !DILocation(line: 12, column: 3, scope: !10)
!44 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !45, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!45 = !DISubroutineType(types: !46)
!46 = !{!13}
!47 = !DILocalVariable(name: "n", scope: !44, file: !1, line: 16, type: !13)
!48 = !DILocation(line: 16, column: 7, scope: !44)
!49 = !DILocation(line: 17, column: 22, scope: !44)
!50 = !DILocation(line: 17, column: 3, scope: !44)
!51 = !DILocation(line: 18, column: 15, scope: !44)
!52 = !DILocation(line: 18, column: 17, scope: !44)
!53 = !DILocation(line: 18, column: 22, scope: !44)
!54 = !DILocation(line: 18, column: 25, scope: !44)
!55 = !DILocation(line: 18, column: 27, scope: !44)
!56 = !DILocation(line: 0, scope: !44)
!57 = !DILocation(line: 18, column: 3, scope: !44)
!58 = !DILocalVariable(name: "arm", scope: !44, file: !1, line: 19, type: !13)
!59 = !DILocation(line: 19, column: 7, scope: !44)
!60 = !DILocation(line: 19, column: 26, scope: !44)
!61 = !DILocation(line: 19, column: 13, scope: !44)
!62 = !DILocation(line: 20, column: 3, scope: !44)
