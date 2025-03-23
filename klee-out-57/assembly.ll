; ModuleID = '58.bc'
source_filename = "58.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"58.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  %6 = bitcast i32* %2 to i8*, !dbg !23
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !24
  %7 = bitcast i32* %3 to i8*, !dbg !25
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !26
  %8 = bitcast i32* %4 to i8*, !dbg !27
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !28
  %9 = load i32, i32* %2, align 4, !dbg !29
  %10 = load i32, i32* %3, align 4, !dbg !31
  %11 = icmp sgt i32 %9, %10, !dbg !32
  br i1 %11, label %12, label %21, !dbg !33

12:                                               ; preds = %0
  %13 = load i32, i32* %3, align 4, !dbg !34
  %14 = load i32, i32* %4, align 4, !dbg !37
  %15 = icmp sgt i32 %13, %14, !dbg !38
  br i1 %15, label %16, label %18, !dbg !39

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4, !dbg !40
  store i32 %17, i32* %5, align 4, !dbg !41
  br label %20, !dbg !42

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4, !dbg !43
  store i32 %19, i32* %5, align 4, !dbg !44
  br label %20

20:                                               ; preds = %18, %16
  br label %23, !dbg !45

21:                                               ; preds = %0
  %22 = load i32, i32* %3, align 4, !dbg !46
  store i32 %22, i32* %5, align 4, !dbg !48
  br label %23

23:                                               ; preds = %21, %20
  %24 = load i32, i32* %5, align 4, !dbg !49
  %25 = load i32, i32* %2, align 4, !dbg !51
  %26 = icmp slt i32 %24, %25, !dbg !52
  br i1 %26, label %35, label %27, !dbg !53

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4, !dbg !54
  %29 = load i32, i32* %3, align 4, !dbg !55
  %30 = icmp slt i32 %28, %29, !dbg !56
  br i1 %30, label %35, label %31, !dbg !57

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4, !dbg !58
  %33 = load i32, i32* %4, align 4, !dbg !59
  %34 = icmp slt i32 %32, %33, !dbg !60
  br i1 %34, label %35, label %36, !dbg !61

35:                                               ; preds = %31, %27, %23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef 19, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !62
  unreachable, !dbg !62

36:                                               ; preds = %31
  ret i32 0, !dbg !63
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

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
!1 = !DIFile(filename: "58.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "c1a3b18a327a452ca4f1b448934655a4")
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
!15 = !DILocalVariable(name: "a", scope: !10, file: !1, line: 6, type: !13)
!16 = !DILocation(line: 6, column: 7, scope: !10)
!17 = !DILocalVariable(name: "b", scope: !10, file: !1, line: 6, type: !13)
!18 = !DILocation(line: 6, column: 10, scope: !10)
!19 = !DILocalVariable(name: "c", scope: !10, file: !1, line: 6, type: !13)
!20 = !DILocation(line: 6, column: 13, scope: !10)
!21 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 6, type: !13)
!22 = !DILocation(line: 6, column: 16, scope: !10)
!23 = !DILocation(line: 7, column: 22, scope: !10)
!24 = !DILocation(line: 7, column: 3, scope: !10)
!25 = !DILocation(line: 8, column: 22, scope: !10)
!26 = !DILocation(line: 8, column: 3, scope: !10)
!27 = !DILocation(line: 9, column: 22, scope: !10)
!28 = !DILocation(line: 9, column: 3, scope: !10)
!29 = !DILocation(line: 10, column: 6, scope: !30)
!30 = distinct !DILexicalBlock(scope: !10, file: !1, line: 10, column: 6)
!31 = !DILocation(line: 10, column: 10, scope: !30)
!32 = !DILocation(line: 10, column: 8, scope: !30)
!33 = !DILocation(line: 10, column: 6, scope: !10)
!34 = !DILocation(line: 11, column: 8, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 11, column: 8)
!36 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 13)
!37 = !DILocation(line: 11, column: 12, scope: !35)
!38 = !DILocation(line: 11, column: 10, scope: !35)
!39 = !DILocation(line: 11, column: 8, scope: !36)
!40 = !DILocation(line: 12, column: 16, scope: !35)
!41 = !DILocation(line: 12, column: 14, scope: !35)
!42 = !DILocation(line: 12, column: 7, scope: !35)
!43 = !DILocation(line: 14, column: 16, scope: !35)
!44 = !DILocation(line: 14, column: 14, scope: !35)
!45 = !DILocation(line: 15, column: 3, scope: !36)
!46 = !DILocation(line: 16, column: 14, scope: !47)
!47 = distinct !DILexicalBlock(scope: !30, file: !1, line: 15, column: 10)
!48 = !DILocation(line: 16, column: 12, scope: !47)
!49 = !DILocation(line: 18, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !10, file: !1, line: 18, column: 6)
!51 = !DILocation(line: 18, column: 15, scope: !50)
!52 = !DILocation(line: 18, column: 13, scope: !50)
!53 = !DILocation(line: 18, column: 17, scope: !50)
!54 = !DILocation(line: 18, column: 20, scope: !50)
!55 = !DILocation(line: 18, column: 29, scope: !50)
!56 = !DILocation(line: 18, column: 27, scope: !50)
!57 = !DILocation(line: 18, column: 31, scope: !50)
!58 = !DILocation(line: 18, column: 34, scope: !50)
!59 = !DILocation(line: 18, column: 43, scope: !50)
!60 = !DILocation(line: 18, column: 41, scope: !50)
!61 = !DILocation(line: 18, column: 6, scope: !10)
!62 = !DILocation(line: 19, column: 5, scope: !50)
!63 = !DILocation(line: 20, column: 3, scope: !10)
