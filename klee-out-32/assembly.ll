; ModuleID = '33.bc'
source_filename = "33.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"33.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sign(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !15, metadata !DIExpression()), !dbg !16
  %4 = load i32, i32* %3, align 4, !dbg !17
  %5 = icmp sgt i32 %4, 0, !dbg !19
  br i1 %5, label %6, label %7, !dbg !20

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !21
  br label %12, !dbg !21

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !22
  %9 = icmp slt i32 %8, 0, !dbg !24
  br i1 %9, label %10, label %11, !dbg !25

10:                                               ; preds = %7
  store i32 -1, i32* %2, align 4, !dbg !26
  br label %12, !dbg !26

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4, !dbg !27
  br label %12, !dbg !27

12:                                               ; preds = %11, %10, %6
  %13 = load i32, i32* %2, align 4, !dbg !28
  ret i32 %13, !dbg !28
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %3, metadata !34, metadata !DIExpression()), !dbg !35
  %4 = bitcast i32* %2 to i8*, !dbg !36
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !37
  %5 = load i32, i32* %2, align 4, !dbg !38
  %6 = call i32 @sign(i32 noundef %5), !dbg !39
  store i32 %6, i32* %3, align 4, !dbg !40
  %7 = load i32, i32* %2, align 4, !dbg !41
  %8 = icmp sgt i32 %7, 0, !dbg !43
  br i1 %8, label %9, label %13, !dbg !44

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4, !dbg !45
  %11 = icmp ne i32 %10, 1, !dbg !46
  br i1 %11, label %12, label %13, !dbg !47

12:                                               ; preds = %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 16, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !48
  unreachable, !dbg !48

13:                                               ; preds = %9, %0
  %14 = load i32, i32* %2, align 4, !dbg !49
  %15 = icmp slt i32 %14, 0, !dbg !51
  br i1 %15, label %16, label %20, !dbg !52

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4, !dbg !53
  %18 = icmp ne i32 %17, -1, !dbg !54
  br i1 %18, label %19, label %20, !dbg !55

19:                                               ; preds = %16
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 18, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !56
  unreachable, !dbg !56

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %2, align 4, !dbg !57
  %22 = icmp eq i32 %21, 0, !dbg !59
  br i1 %22, label %23, label %27, !dbg !60

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4, !dbg !61
  %25 = icmp ne i32 %24, 0, !dbg !62
  br i1 %25, label %26, label %27, !dbg !63

26:                                               ; preds = %23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 20, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !64
  unreachable, !dbg !64

27:                                               ; preds = %23, %20
  ret i32 0, !dbg !65
}

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
!1 = !DIFile(filename: "33.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "173c3c388d9bb21fe68da5bffcb22af4")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "sign", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 14, scope: !10)
!17 = !DILocation(line: 6, column: 6, scope: !18)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 6)
!19 = !DILocation(line: 6, column: 8, scope: !18)
!20 = !DILocation(line: 6, column: 6, scope: !10)
!21 = !DILocation(line: 6, column: 13, scope: !18)
!22 = !DILocation(line: 7, column: 6, scope: !23)
!23 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 6)
!24 = !DILocation(line: 7, column: 8, scope: !23)
!25 = !DILocation(line: 7, column: 6, scope: !10)
!26 = !DILocation(line: 7, column: 13, scope: !23)
!27 = !DILocation(line: 8, column: 3, scope: !10)
!28 = !DILocation(line: 9, column: 1, scope: !10)
!29 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !30, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!30 = !DISubroutineType(types: !31)
!31 = !{!13}
!32 = !DILocalVariable(name: "x", scope: !29, file: !1, line: 12, type: !13)
!33 = !DILocation(line: 12, column: 7, scope: !29)
!34 = !DILocalVariable(name: "s", scope: !29, file: !1, line: 12, type: !13)
!35 = !DILocation(line: 12, column: 10, scope: !29)
!36 = !DILocation(line: 13, column: 22, scope: !29)
!37 = !DILocation(line: 13, column: 3, scope: !29)
!38 = !DILocation(line: 14, column: 12, scope: !29)
!39 = !DILocation(line: 14, column: 7, scope: !29)
!40 = !DILocation(line: 14, column: 5, scope: !29)
!41 = !DILocation(line: 15, column: 6, scope: !42)
!42 = distinct !DILexicalBlock(scope: !29, file: !1, line: 15, column: 6)
!43 = !DILocation(line: 15, column: 8, scope: !42)
!44 = !DILocation(line: 15, column: 12, scope: !42)
!45 = !DILocation(line: 15, column: 15, scope: !42)
!46 = !DILocation(line: 15, column: 17, scope: !42)
!47 = !DILocation(line: 15, column: 6, scope: !29)
!48 = !DILocation(line: 16, column: 5, scope: !42)
!49 = !DILocation(line: 17, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !29, file: !1, line: 17, column: 6)
!51 = !DILocation(line: 17, column: 8, scope: !50)
!52 = !DILocation(line: 17, column: 12, scope: !50)
!53 = !DILocation(line: 17, column: 15, scope: !50)
!54 = !DILocation(line: 17, column: 17, scope: !50)
!55 = !DILocation(line: 17, column: 6, scope: !29)
!56 = !DILocation(line: 18, column: 5, scope: !50)
!57 = !DILocation(line: 19, column: 6, scope: !58)
!58 = distinct !DILexicalBlock(scope: !29, file: !1, line: 19, column: 6)
!59 = !DILocation(line: 19, column: 8, scope: !58)
!60 = !DILocation(line: 19, column: 13, scope: !58)
!61 = !DILocation(line: 19, column: 16, scope: !58)
!62 = !DILocation(line: 19, column: 18, scope: !58)
!63 = !DILocation(line: 19, column: 6, scope: !29)
!64 = !DILocation(line: 20, column: 5, scope: !58)
!65 = !DILocation(line: 21, column: 3, scope: !29)
