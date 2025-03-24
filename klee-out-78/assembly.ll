; ModuleID = '79.bc'
source_filename = "79.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"79.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %2, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  %5 = bitcast i32* %3 to i8*, !dbg !19
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !20
  %6 = load i32, i32* %3, align 4, !dbg !21
  %7 = icmp sge i32 %6, 0, !dbg !22
  br i1 %7, label %8, label %11, !dbg !23

8:                                                ; preds = %0
  %9 = load i32, i32* %3, align 4, !dbg !24
  %10 = icmp sle i32 %9, 20, !dbg !25
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ], !dbg !26
  %13 = zext i1 %12 to i32, !dbg !23
  %14 = sext i32 %13 to i64, !dbg !21
  call void @klee_assume(i64 noundef %14), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %4, metadata !28, metadata !DIExpression()), !dbg !30
  store i32 1, i32* %4, align 4, !dbg !30
  br label %15, !dbg !31

15:                                               ; preds = %23, %11
  %16 = load i32, i32* %4, align 4, !dbg !32
  %17 = load i32, i32* %3, align 4, !dbg !34
  %18 = icmp sle i32 %16, %17, !dbg !35
  br i1 %18, label %19, label %26, !dbg !36

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4, !dbg !37
  %21 = load i32, i32* %2, align 4, !dbg !38
  %22 = add nsw i32 %21, %20, !dbg !38
  store i32 %22, i32* %2, align 4, !dbg !38
  br label %23, !dbg !39

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4, !dbg !40
  %25 = add nsw i32 %24, 1, !dbg !40
  store i32 %25, i32* %4, align 4, !dbg !40
  br label %15, !dbg !41, !llvm.loop !42

26:                                               ; preds = %15
  %27 = load i32, i32* %2, align 4, !dbg !45
  %28 = load i32, i32* %3, align 4, !dbg !47
  %29 = load i32, i32* %3, align 4, !dbg !48
  %30 = add nsw i32 %29, 1, !dbg !49
  %31 = mul nsw i32 %28, %30, !dbg !50
  %32 = sdiv i32 %31, 2, !dbg !51
  %33 = icmp ne i32 %27, %32, !dbg !52
  br i1 %33, label %34, label %35, !dbg !53

34:                                               ; preds = %26
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 12, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !54
  unreachable, !dbg !54

35:                                               ; preds = %26
  ret i32 0, !dbg !55
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
!1 = !DIFile(filename: "79.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "356e0dcfd753ce23b531e81f6e912181")
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
!15 = !DILocalVariable(name: "sum", scope: !10, file: !1, line: 6, type: !13)
!16 = !DILocation(line: 6, column: 9, scope: !10)
!17 = !DILocalVariable(name: "n", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 18, scope: !10)
!19 = !DILocation(line: 7, column: 24, scope: !10)
!20 = !DILocation(line: 7, column: 5, scope: !10)
!21 = !DILocation(line: 8, column: 17, scope: !10)
!22 = !DILocation(line: 8, column: 19, scope: !10)
!23 = !DILocation(line: 8, column: 24, scope: !10)
!24 = !DILocation(line: 8, column: 27, scope: !10)
!25 = !DILocation(line: 8, column: 29, scope: !10)
!26 = !DILocation(line: 0, scope: !10)
!27 = !DILocation(line: 8, column: 5, scope: !10)
!28 = !DILocalVariable(name: "i", scope: !29, file: !1, line: 9, type: !13)
!29 = distinct !DILexicalBlock(scope: !10, file: !1, line: 9, column: 5)
!30 = !DILocation(line: 9, column: 14, scope: !29)
!31 = !DILocation(line: 9, column: 10, scope: !29)
!32 = !DILocation(line: 9, column: 21, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 5)
!34 = !DILocation(line: 9, column: 26, scope: !33)
!35 = !DILocation(line: 9, column: 23, scope: !33)
!36 = !DILocation(line: 9, column: 5, scope: !29)
!37 = !DILocation(line: 10, column: 16, scope: !33)
!38 = !DILocation(line: 10, column: 13, scope: !33)
!39 = !DILocation(line: 10, column: 9, scope: !33)
!40 = !DILocation(line: 9, column: 30, scope: !33)
!41 = !DILocation(line: 9, column: 5, scope: !33)
!42 = distinct !{!42, !36, !43, !44}
!43 = !DILocation(line: 10, column: 16, scope: !29)
!44 = !{!"llvm.loop.mustprogress"}
!45 = !DILocation(line: 11, column: 8, scope: !46)
!46 = distinct !DILexicalBlock(scope: !10, file: !1, line: 11, column: 8)
!47 = !DILocation(line: 11, column: 15, scope: !46)
!48 = !DILocation(line: 11, column: 20, scope: !46)
!49 = !DILocation(line: 11, column: 22, scope: !46)
!50 = !DILocation(line: 11, column: 17, scope: !46)
!51 = !DILocation(line: 11, column: 27, scope: !46)
!52 = !DILocation(line: 11, column: 12, scope: !46)
!53 = !DILocation(line: 11, column: 8, scope: !10)
!54 = !DILocation(line: 12, column: 9, scope: !46)
!55 = !DILocation(line: 13, column: 5, scope: !10)
