; ModuleID = '2.bc'
source_filename = "2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sum(i32 noundef %0, i32 noundef %1) #0 !dbg !10 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !17, metadata !DIExpression()), !dbg !18
  %6 = load i32, i32* %4, align 4, !dbg !19
  %7 = icmp sle i32 %6, 0, !dbg !21
  br i1 %7, label %8, label %12, !dbg !22

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4, !dbg !23
  %10 = load i32, i32* %4, align 4, !dbg !25
  %11 = add nsw i32 %9, %10, !dbg !26
  store i32 %11, i32* %3, align 4, !dbg !27
  br label %18, !dbg !27

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4, !dbg !28
  %14 = sub nsw i32 %13, 1, !dbg !30
  %15 = load i32, i32* %5, align 4, !dbg !31
  %16 = add nsw i32 %15, 1, !dbg !32
  %17 = call i32 @sum(i32 noundef %14, i32 noundef %16), !dbg !33
  store i32 %17, i32* %3, align 4, !dbg !34
  br label %18, !dbg !34

18:                                               ; preds = %12, %8
  %19 = load i32, i32* %3, align 4, !dbg !35
  ret i32 %19, !dbg !35
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !36 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %3, metadata !41, metadata !DIExpression()), !dbg !42
  %5 = bitcast i32* %2 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !44
  %6 = bitcast i32* %3 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !46
  %7 = load i32, i32* %2, align 4, !dbg !47
  %8 = icmp sge i32 %7, 0, !dbg !48
  %9 = zext i1 %8 to i32, !dbg !48
  %10 = sext i32 %9 to i64, !dbg !47
  call void @klee_assume(i64 noundef %10), !dbg !49
  %11 = load i32, i32* %2, align 4, !dbg !50
  %12 = icmp sle i32 %11, 10, !dbg !51
  %13 = zext i1 %12 to i32, !dbg !51
  %14 = sext i32 %13 to i64, !dbg !50
  call void @klee_assume(i64 noundef %14), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %4, metadata !53, metadata !DIExpression()), !dbg !54
  %15 = load i32, i32* %2, align 4, !dbg !55
  %16 = load i32, i32* %3, align 4, !dbg !56
  %17 = call i32 @sum(i32 noundef %15, i32 noundef %16), !dbg !57
  store i32 %17, i32* %4, align 4, !dbg !54
  %18 = load i32, i32* %4, align 4, !dbg !58
  %19 = load i32, i32* %2, align 4, !dbg !60
  %20 = load i32, i32* %3, align 4, !dbg !61
  %21 = add nsw i32 %19, %20, !dbg !62
  %22 = icmp eq i32 %18, %21, !dbg !63
  br i1 %22, label %23, label %24, !dbg !64

23:                                               ; preds = %0
  br label %24, !dbg !65

24:                                               ; preds = %23, %0
  ret i32 0, !dbg !67
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
!1 = !DIFile(filename: "2.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "0776a578fff20a6b721ebd404d8933dd")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "sum", scope: !1, file: !1, line: 3, type: !11, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 3, type: !13)
!16 = !DILocation(line: 3, column: 13, scope: !10)
!17 = !DILocalVariable(name: "m", arg: 2, scope: !10, file: !1, line: 3, type: !13)
!18 = !DILocation(line: 3, column: 20, scope: !10)
!19 = !DILocation(line: 4, column: 7, scope: !20)
!20 = distinct !DILexicalBlock(scope: !10, file: !1, line: 4, column: 7)
!21 = !DILocation(line: 4, column: 9, scope: !20)
!22 = !DILocation(line: 4, column: 7, scope: !10)
!23 = !DILocation(line: 5, column: 12, scope: !24)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 4, column: 15)
!25 = !DILocation(line: 5, column: 16, scope: !24)
!26 = !DILocation(line: 5, column: 14, scope: !24)
!27 = !DILocation(line: 5, column: 5, scope: !24)
!28 = !DILocation(line: 7, column: 16, scope: !29)
!29 = distinct !DILexicalBlock(scope: !20, file: !1, line: 6, column: 10)
!30 = !DILocation(line: 7, column: 18, scope: !29)
!31 = !DILocation(line: 7, column: 23, scope: !29)
!32 = !DILocation(line: 7, column: 25, scope: !29)
!33 = !DILocation(line: 7, column: 12, scope: !29)
!34 = !DILocation(line: 7, column: 5, scope: !29)
!35 = !DILocation(line: 9, column: 1, scope: !10)
!36 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !37, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!37 = !DISubroutineType(types: !38)
!38 = !{!13}
!39 = !DILocalVariable(name: "a", scope: !36, file: !1, line: 12, type: !13)
!40 = !DILocation(line: 12, column: 7, scope: !36)
!41 = !DILocalVariable(name: "b", scope: !36, file: !1, line: 12, type: !13)
!42 = !DILocation(line: 12, column: 10, scope: !36)
!43 = !DILocation(line: 13, column: 22, scope: !36)
!44 = !DILocation(line: 13, column: 3, scope: !36)
!45 = !DILocation(line: 14, column: 22, scope: !36)
!46 = !DILocation(line: 14, column: 3, scope: !36)
!47 = !DILocation(line: 17, column: 15, scope: !36)
!48 = !DILocation(line: 17, column: 17, scope: !36)
!49 = !DILocation(line: 17, column: 3, scope: !36)
!50 = !DILocation(line: 18, column: 15, scope: !36)
!51 = !DILocation(line: 18, column: 17, scope: !36)
!52 = !DILocation(line: 18, column: 3, scope: !36)
!53 = !DILocalVariable(name: "result", scope: !36, file: !1, line: 20, type: !13)
!54 = !DILocation(line: 20, column: 7, scope: !36)
!55 = !DILocation(line: 20, column: 20, scope: !36)
!56 = !DILocation(line: 20, column: 23, scope: !36)
!57 = !DILocation(line: 20, column: 16, scope: !36)
!58 = !DILocation(line: 21, column: 7, scope: !59)
!59 = distinct !DILexicalBlock(scope: !36, file: !1, line: 21, column: 7)
!60 = !DILocation(line: 21, column: 17, scope: !59)
!61 = !DILocation(line: 21, column: 21, scope: !59)
!62 = !DILocation(line: 21, column: 19, scope: !59)
!63 = !DILocation(line: 21, column: 14, scope: !59)
!64 = !DILocation(line: 21, column: 7, scope: !36)
!65 = !DILocation(line: 23, column: 3, scope: !66)
!66 = distinct !DILexicalBlock(scope: !59, file: !1, line: 21, column: 24)
!67 = !DILocation(line: 24, column: 3, scope: !36)
