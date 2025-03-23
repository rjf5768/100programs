; ModuleID = '70.bc'
source_filename = "70.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"70.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  %5 = bitcast i32* %2 to i8*, !dbg !17
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !18
  %6 = load i32, i32* %2, align 4, !dbg !19
  %7 = icmp sge i32 %6, 0, !dbg !20
  br i1 %7, label %8, label %11, !dbg !21

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4, !dbg !22
  %10 = icmp sle i32 %9, 1000, !dbg !23
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ], !dbg !24
  %13 = zext i1 %12 to i32, !dbg !21
  %14 = sext i32 %13 to i64, !dbg !19
  call void @klee_assume(i64 noundef %14), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %3, metadata !26, metadata !DIExpression()), !dbg !27
  %15 = load i32, i32* %2, align 4, !dbg !28
  store i32 %15, i32* %3, align 4, !dbg !27
  %16 = load i32, i32* %3, align 4, !dbg !29
  %17 = shl i32 %16, 2, !dbg !30
  store i32 %17, i32* %3, align 4, !dbg !31
  %18 = load i32, i32* %3, align 4, !dbg !32
  %19 = ashr i32 %18, 1, !dbg !33
  store i32 %19, i32* %3, align 4, !dbg !34
  %20 = load i32, i32* %3, align 4, !dbg !35
  %21 = xor i32 %20, 23130, !dbg !36
  store i32 %21, i32* %3, align 4, !dbg !37
  %22 = load i32, i32* %3, align 4, !dbg !38
  %23 = or i32 %22, 4660, !dbg !39
  store i32 %23, i32* %3, align 4, !dbg !40
  %24 = load i32, i32* %3, align 4, !dbg !41
  %25 = and i32 %24, 65535, !dbg !42
  store i32 %25, i32* %3, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %4, metadata !44, metadata !DIExpression()), !dbg !46
  store i32 0, i32* %4, align 4, !dbg !46
  br label %26, !dbg !47

26:                                               ; preds = %35, %11
  %27 = load i32, i32* %4, align 4, !dbg !48
  %28 = icmp slt i32 %27, 5, !dbg !50
  br i1 %28, label %29, label %38, !dbg !51

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4, !dbg !52
  %31 = shl i32 %30, 1, !dbg !54
  %32 = load i32, i32* %3, align 4, !dbg !55
  %33 = ashr i32 %32, 1, !dbg !56
  %34 = xor i32 %31, %33, !dbg !57
  store i32 %34, i32* %3, align 4, !dbg !58
  br label %35, !dbg !59

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4, !dbg !60
  %37 = add nsw i32 %36, 1, !dbg !60
  store i32 %37, i32* %4, align 4, !dbg !60
  br label %26, !dbg !61, !llvm.loop !62

38:                                               ; preds = %26
  %39 = load i32, i32* %3, align 4, !dbg !65
  %40 = icmp slt i32 %39, 0, !dbg !67
  br i1 %40, label %44, label %41, !dbg !68

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4, !dbg !69
  %43 = icmp sge i32 %42, 65536, !dbg !70
  br i1 %43, label %44, label %45, !dbg !71

44:                                               ; preds = %41, %38
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !72
  unreachable, !dbg !72

45:                                               ; preds = %41
  ret i32 0, !dbg !73
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
!1 = !DIFile(filename: "70.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "ddf308b5a2f316c8b7c92640a032cba6")
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
!16 = !DILocation(line: 6, column: 9, scope: !10)
!17 = !DILocation(line: 7, column: 24, scope: !10)
!18 = !DILocation(line: 7, column: 5, scope: !10)
!19 = !DILocation(line: 8, column: 17, scope: !10)
!20 = !DILocation(line: 8, column: 19, scope: !10)
!21 = !DILocation(line: 8, column: 24, scope: !10)
!22 = !DILocation(line: 8, column: 27, scope: !10)
!23 = !DILocation(line: 8, column: 29, scope: !10)
!24 = !DILocation(line: 0, scope: !10)
!25 = !DILocation(line: 8, column: 5, scope: !10)
!26 = !DILocalVariable(name: "y", scope: !10, file: !1, line: 10, type: !13)
!27 = !DILocation(line: 10, column: 9, scope: !10)
!28 = !DILocation(line: 10, column: 13, scope: !10)
!29 = !DILocation(line: 11, column: 9, scope: !10)
!30 = !DILocation(line: 11, column: 11, scope: !10)
!31 = !DILocation(line: 11, column: 7, scope: !10)
!32 = !DILocation(line: 12, column: 9, scope: !10)
!33 = !DILocation(line: 12, column: 11, scope: !10)
!34 = !DILocation(line: 12, column: 7, scope: !10)
!35 = !DILocation(line: 13, column: 9, scope: !10)
!36 = !DILocation(line: 13, column: 11, scope: !10)
!37 = !DILocation(line: 13, column: 7, scope: !10)
!38 = !DILocation(line: 14, column: 9, scope: !10)
!39 = !DILocation(line: 14, column: 11, scope: !10)
!40 = !DILocation(line: 14, column: 7, scope: !10)
!41 = !DILocation(line: 15, column: 9, scope: !10)
!42 = !DILocation(line: 15, column: 11, scope: !10)
!43 = !DILocation(line: 15, column: 7, scope: !10)
!44 = !DILocalVariable(name: "i", scope: !45, file: !1, line: 17, type: !13)
!45 = distinct !DILexicalBlock(scope: !10, file: !1, line: 17, column: 5)
!46 = !DILocation(line: 17, column: 14, scope: !45)
!47 = !DILocation(line: 17, column: 10, scope: !45)
!48 = !DILocation(line: 17, column: 21, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 17, column: 5)
!50 = !DILocation(line: 17, column: 23, scope: !49)
!51 = !DILocation(line: 17, column: 5, scope: !45)
!52 = !DILocation(line: 18, column: 14, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 17, column: 32)
!54 = !DILocation(line: 18, column: 16, scope: !53)
!55 = !DILocation(line: 18, column: 25, scope: !53)
!56 = !DILocation(line: 18, column: 27, scope: !53)
!57 = !DILocation(line: 18, column: 22, scope: !53)
!58 = !DILocation(line: 18, column: 11, scope: !53)
!59 = !DILocation(line: 19, column: 5, scope: !53)
!60 = !DILocation(line: 17, column: 29, scope: !49)
!61 = !DILocation(line: 17, column: 5, scope: !49)
!62 = distinct !{!62, !51, !63, !64}
!63 = !DILocation(line: 19, column: 5, scope: !45)
!64 = !{!"llvm.loop.mustprogress"}
!65 = !DILocation(line: 21, column: 8, scope: !66)
!66 = distinct !DILexicalBlock(scope: !10, file: !1, line: 21, column: 8)
!67 = !DILocation(line: 21, column: 10, scope: !66)
!68 = !DILocation(line: 21, column: 14, scope: !66)
!69 = !DILocation(line: 21, column: 17, scope: !66)
!70 = !DILocation(line: 21, column: 19, scope: !66)
!71 = !DILocation(line: 21, column: 8, scope: !10)
!72 = !DILocation(line: 22, column: 9, scope: !66)
!73 = !DILocation(line: 24, column: 5, scope: !10)
