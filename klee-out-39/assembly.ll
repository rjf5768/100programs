; ModuleID = '40.bc'
source_filename = "40.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"40.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @product_of_digits(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %4, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 1, i32* %4, align 4, !dbg !18
  %5 = load i32, i32* %3, align 4, !dbg !19
  %6 = icmp eq i32 %5, 0, !dbg !21
  br i1 %6, label %7, label %8, !dbg !22

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !23
  br label %21, !dbg !23

8:                                                ; preds = %1
  br label %9, !dbg !24

9:                                                ; preds = %12, %8
  %10 = load i32, i32* %3, align 4, !dbg !25
  %11 = icmp sgt i32 %10, 0, !dbg !26
  br i1 %11, label %12, label %19, !dbg !24

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4, !dbg !27
  %14 = srem i32 %13, 10, !dbg !29
  %15 = load i32, i32* %4, align 4, !dbg !30
  %16 = mul nsw i32 %15, %14, !dbg !30
  store i32 %16, i32* %4, align 4, !dbg !30
  %17 = load i32, i32* %3, align 4, !dbg !31
  %18 = sdiv i32 %17, 10, !dbg !31
  store i32 %18, i32* %3, align 4, !dbg !31
  br label %9, !dbg !24, !llvm.loop !32

19:                                               ; preds = %9
  %20 = load i32, i32* %4, align 4, !dbg !35
  store i32 %20, i32* %2, align 4, !dbg !36
  br label %21, !dbg !36

21:                                               ; preds = %19, %7
  %22 = load i32, i32* %2, align 4, !dbg !37
  ret i32 %22, !dbg !37
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !38 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %3, metadata !43, metadata !DIExpression()), !dbg !44
  %4 = bitcast i32* %2 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !46
  %5 = load i32, i32* %2, align 4, !dbg !47
  %6 = icmp sge i32 %5, 1, !dbg !48
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
  %14 = load i32, i32* %2, align 4, !dbg !54
  %15 = call i32 @product_of_digits(i32 noundef %14), !dbg !55
  store i32 %15, i32* %3, align 4, !dbg !56
  %16 = load i32, i32* %3, align 4, !dbg !57
  %17 = icmp slt i32 %16, 0, !dbg !59
  br i1 %17, label %18, label %19, !dbg !60

18:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !61
  unreachable, !dbg !61

19:                                               ; preds = %10
  ret i32 0, !dbg !62
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
!1 = !DIFile(filename: "40.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "0e6a86aab9dc399c5a9a62e0f1d92023")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "product_of_digits", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 27, scope: !10)
!17 = !DILocalVariable(name: "prod", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 7, scope: !10)
!19 = !DILocation(line: 7, column: 6, scope: !20)
!20 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 6)
!21 = !DILocation(line: 7, column: 8, scope: !20)
!22 = !DILocation(line: 7, column: 6, scope: !10)
!23 = !DILocation(line: 8, column: 5, scope: !20)
!24 = !DILocation(line: 9, column: 3, scope: !10)
!25 = !DILocation(line: 9, column: 9, scope: !10)
!26 = !DILocation(line: 9, column: 11, scope: !10)
!27 = !DILocation(line: 10, column: 14, scope: !28)
!28 = distinct !DILexicalBlock(scope: !10, file: !1, line: 9, column: 16)
!29 = !DILocation(line: 10, column: 16, scope: !28)
!30 = !DILocation(line: 10, column: 10, scope: !28)
!31 = !DILocation(line: 11, column: 7, scope: !28)
!32 = distinct !{!32, !24, !33, !34}
!33 = !DILocation(line: 12, column: 3, scope: !10)
!34 = !{!"llvm.loop.mustprogress"}
!35 = !DILocation(line: 13, column: 10, scope: !10)
!36 = !DILocation(line: 13, column: 3, scope: !10)
!37 = !DILocation(line: 14, column: 1, scope: !10)
!38 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 16, type: !39, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!39 = !DISubroutineType(types: !40)
!40 = !{!13}
!41 = !DILocalVariable(name: "n", scope: !38, file: !1, line: 17, type: !13)
!42 = !DILocation(line: 17, column: 7, scope: !38)
!43 = !DILocalVariable(name: "prod", scope: !38, file: !1, line: 17, type: !13)
!44 = !DILocation(line: 17, column: 10, scope: !38)
!45 = !DILocation(line: 18, column: 22, scope: !38)
!46 = !DILocation(line: 18, column: 3, scope: !38)
!47 = !DILocation(line: 19, column: 15, scope: !38)
!48 = !DILocation(line: 19, column: 17, scope: !38)
!49 = !DILocation(line: 19, column: 22, scope: !38)
!50 = !DILocation(line: 19, column: 25, scope: !38)
!51 = !DILocation(line: 19, column: 27, scope: !38)
!52 = !DILocation(line: 0, scope: !38)
!53 = !DILocation(line: 19, column: 3, scope: !38)
!54 = !DILocation(line: 20, column: 28, scope: !38)
!55 = !DILocation(line: 20, column: 10, scope: !38)
!56 = !DILocation(line: 20, column: 8, scope: !38)
!57 = !DILocation(line: 21, column: 6, scope: !58)
!58 = distinct !DILexicalBlock(scope: !38, file: !1, line: 21, column: 6)
!59 = !DILocation(line: 21, column: 11, scope: !58)
!60 = !DILocation(line: 21, column: 6, scope: !38)
!61 = !DILocation(line: 22, column: 5, scope: !58)
!62 = !DILocation(line: 23, column: 3, scope: !38)
