; ModuleID = '1.bc'
source_filename = "1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solve(i32 noundef %0, i32 noundef %1) #0 !dbg !10 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = load i32, i32* %4, align 4, !dbg !19
  %7 = mul nsw i32 200, %6, !dbg !21
  %8 = load i32, i32* %5, align 4, !dbg !22
  %9 = mul nsw i32 150, %8, !dbg !23
  %10 = add nsw i32 %7, %9, !dbg !24
  %11 = icmp sle i32 %10, 4000, !dbg !25
  br i1 %11, label %12, label %20, !dbg !26

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4, !dbg !27
  %14 = mul nsw i32 100, %13, !dbg !28
  %15 = load i32, i32* %5, align 4, !dbg !29
  %16 = mul nsw i32 250, %15, !dbg !30
  %17 = add nsw i32 %14, %16, !dbg !31
  %18 = icmp sge i32 %17, 0, !dbg !32
  br i1 %18, label %19, label %20, !dbg !33

19:                                               ; preds = %12
  store i32 1, i32* %3, align 4, !dbg !34
  br label %21, !dbg !34

20:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4, !dbg !35
  br label %21, !dbg !35

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %3, align 4, !dbg !36
  ret i32 %22, !dbg !36
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !37 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %3, metadata !42, metadata !DIExpression()), !dbg !43
  %4 = bitcast i32* %2 to i8*, !dbg !44
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !45
  %5 = bitcast i32* %3 to i8*, !dbg !46
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !47
  %6 = load i32, i32* %2, align 4, !dbg !48
  %7 = load i32, i32* %3, align 4, !dbg !50
  %8 = call i32 @solve(i32 noundef %6, i32 noundef %7), !dbg !51
  %9 = icmp ne i32 %8, 0, !dbg !51
  br i1 %9, label %11, label %10, !dbg !52

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !53
  br label %12, !dbg !53

11:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !55
  br label %12, !dbg !55

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %1, align 4, !dbg !57
  ret i32 %13, !dbg !57
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "1.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "a78a1ef9c5b8b0cc1c85b60d0d9d2214")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "solve", scope: !1, file: !1, line: 3, type: !11, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !10, file: !1, line: 3, type: !13)
!16 = !DILocation(line: 3, column: 15, scope: !10)
!17 = !DILocalVariable(name: "b", arg: 2, scope: !10, file: !1, line: 3, type: !13)
!18 = !DILocation(line: 3, column: 22, scope: !10)
!19 = !DILocation(line: 4, column: 13, scope: !20)
!20 = distinct !DILexicalBlock(scope: !10, file: !1, line: 4, column: 7)
!21 = !DILocation(line: 4, column: 11, scope: !20)
!22 = !DILocation(line: 4, column: 23, scope: !20)
!23 = !DILocation(line: 4, column: 21, scope: !20)
!24 = !DILocation(line: 4, column: 15, scope: !20)
!25 = !DILocation(line: 4, column: 25, scope: !20)
!26 = !DILocation(line: 4, column: 33, scope: !20)
!27 = !DILocation(line: 4, column: 42, scope: !20)
!28 = !DILocation(line: 4, column: 40, scope: !20)
!29 = !DILocation(line: 4, column: 52, scope: !20)
!30 = !DILocation(line: 4, column: 50, scope: !20)
!31 = !DILocation(line: 4, column: 44, scope: !20)
!32 = !DILocation(line: 4, column: 54, scope: !20)
!33 = !DILocation(line: 4, column: 7, scope: !10)
!34 = !DILocation(line: 5, column: 5, scope: !20)
!35 = !DILocation(line: 7, column: 5, scope: !20)
!36 = !DILocation(line: 8, column: 1, scope: !10)
!37 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !38, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!38 = !DISubroutineType(types: !39)
!39 = !{!13}
!40 = !DILocalVariable(name: "x", scope: !37, file: !1, line: 11, type: !13)
!41 = !DILocation(line: 11, column: 7, scope: !37)
!42 = !DILocalVariable(name: "y", scope: !37, file: !1, line: 11, type: !13)
!43 = !DILocation(line: 11, column: 10, scope: !37)
!44 = !DILocation(line: 12, column: 22, scope: !37)
!45 = !DILocation(line: 12, column: 3, scope: !37)
!46 = !DILocation(line: 13, column: 22, scope: !37)
!47 = !DILocation(line: 13, column: 3, scope: !37)
!48 = !DILocation(line: 15, column: 14, scope: !49)
!49 = distinct !DILexicalBlock(scope: !37, file: !1, line: 15, column: 7)
!50 = !DILocation(line: 15, column: 17, scope: !49)
!51 = !DILocation(line: 15, column: 8, scope: !49)
!52 = !DILocation(line: 15, column: 7, scope: !37)
!53 = !DILocation(line: 16, column: 5, scope: !54)
!54 = distinct !DILexicalBlock(scope: !49, file: !1, line: 15, column: 21)
!55 = !DILocation(line: 18, column: 5, scope: !56)
!56 = distinct !DILexicalBlock(scope: !49, file: !1, line: 17, column: 10)
!57 = !DILocation(line: 20, column: 1, scope: !37)
