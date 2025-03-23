; ModuleID = '17.bc'
source_filename = "17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_int_palindrome(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  %5 = load i32, i32* %2, align 4, !dbg !19
  store i32 %5, i32* %3, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %4, align 4, !dbg !21
  br label %6, !dbg !22

6:                                                ; preds = %9, %1
  %7 = load i32, i32* %2, align 4, !dbg !23
  %8 = icmp sgt i32 %7, 0, !dbg !24
  br i1 %8, label %9, label %17, !dbg !22

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4, !dbg !25
  %11 = mul nsw i32 %10, 10, !dbg !27
  %12 = load i32, i32* %2, align 4, !dbg !28
  %13 = srem i32 %12, 10, !dbg !29
  %14 = add nsw i32 %11, %13, !dbg !30
  store i32 %14, i32* %4, align 4, !dbg !31
  %15 = load i32, i32* %2, align 4, !dbg !32
  %16 = sdiv i32 %15, 10, !dbg !32
  store i32 %16, i32* %2, align 4, !dbg !32
  br label %6, !dbg !22, !llvm.loop !33

17:                                               ; preds = %6
  %18 = load i32, i32* %3, align 4, !dbg !36
  %19 = load i32, i32* %4, align 4, !dbg !37
  %20 = icmp eq i32 %18, %19, !dbg !38
  %21 = zext i1 %20 to i32, !dbg !38
  ret i32 %21, !dbg !39
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !40 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !43, metadata !DIExpression()), !dbg !44
  %4 = bitcast i32* %2 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !46
  %5 = load i32, i32* %2, align 4, !dbg !47
  %6 = icmp sge i32 %5, 0, !dbg !48
  br i1 %6, label %7, label %10, !dbg !49

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !50
  %9 = icmp sle i32 %8, 100, !dbg !51
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !52
  %12 = zext i1 %11 to i32, !dbg !49
  %13 = sext i32 %12 to i64, !dbg !47
  call void @klee_assume(i64 noundef %13), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %3, metadata !54, metadata !DIExpression()), !dbg !55
  %14 = load i32, i32* %2, align 4, !dbg !56
  %15 = call i32 @is_int_palindrome(i32 noundef %14), !dbg !57
  store i32 %15, i32* %3, align 4, !dbg !55
  ret i32 0, !dbg !58
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
!1 = !DIFile(filename: "17.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "6bf029f873984d8185d94224decb88c2")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "is_int_palindrome", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 27, scope: !10)
!17 = !DILocalVariable(name: "original", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 7, scope: !10)
!19 = !DILocation(line: 6, column: 18, scope: !10)
!20 = !DILocalVariable(name: "reversed", scope: !10, file: !1, line: 6, type: !13)
!21 = !DILocation(line: 6, column: 21, scope: !10)
!22 = !DILocation(line: 7, column: 3, scope: !10)
!23 = !DILocation(line: 7, column: 9, scope: !10)
!24 = !DILocation(line: 7, column: 11, scope: !10)
!25 = !DILocation(line: 8, column: 16, scope: !26)
!26 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 16)
!27 = !DILocation(line: 8, column: 25, scope: !26)
!28 = !DILocation(line: 8, column: 33, scope: !26)
!29 = !DILocation(line: 8, column: 35, scope: !26)
!30 = !DILocation(line: 8, column: 30, scope: !26)
!31 = !DILocation(line: 8, column: 14, scope: !26)
!32 = !DILocation(line: 9, column: 7, scope: !26)
!33 = distinct !{!33, !22, !34, !35}
!34 = !DILocation(line: 10, column: 3, scope: !10)
!35 = !{!"llvm.loop.mustprogress"}
!36 = !DILocation(line: 11, column: 10, scope: !10)
!37 = !DILocation(line: 11, column: 22, scope: !10)
!38 = !DILocation(line: 11, column: 19, scope: !10)
!39 = !DILocation(line: 11, column: 3, scope: !10)
!40 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !41, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!41 = !DISubroutineType(types: !42)
!42 = !{!13}
!43 = !DILocalVariable(name: "n", scope: !40, file: !1, line: 15, type: !13)
!44 = !DILocation(line: 15, column: 7, scope: !40)
!45 = !DILocation(line: 16, column: 22, scope: !40)
!46 = !DILocation(line: 16, column: 3, scope: !40)
!47 = !DILocation(line: 17, column: 15, scope: !40)
!48 = !DILocation(line: 17, column: 17, scope: !40)
!49 = !DILocation(line: 17, column: 22, scope: !40)
!50 = !DILocation(line: 17, column: 25, scope: !40)
!51 = !DILocation(line: 17, column: 27, scope: !40)
!52 = !DILocation(line: 0, scope: !40)
!53 = !DILocation(line: 17, column: 3, scope: !40)
!54 = !DILocalVariable(name: "result", scope: !40, file: !1, line: 18, type: !13)
!55 = !DILocation(line: 18, column: 7, scope: !40)
!56 = !DILocation(line: 18, column: 34, scope: !40)
!57 = !DILocation(line: 18, column: 16, scope: !40)
!58 = !DILocation(line: 19, column: 3, scope: !40)
