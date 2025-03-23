; ModuleID = '32.bc'
source_filename = "32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"32.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @absolute(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  %3 = load i32, i32* %2, align 4, !dbg !17
  %4 = icmp slt i32 %3, 0, !dbg !18
  br i1 %4, label %5, label %8, !dbg !19

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !20
  %7 = sub nsw i32 0, %6, !dbg !21
  br label %10, !dbg !19

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4, !dbg !22
  br label %10, !dbg !19

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ], !dbg !19
  ret i32 %11, !dbg !23
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !24 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %3, metadata !29, metadata !DIExpression()), !dbg !30
  %4 = bitcast i32* %2 to i8*, !dbg !31
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !32
  %5 = load i32, i32* %2, align 4, !dbg !33
  %6 = call i32 @absolute(i32 noundef %5), !dbg !34
  store i32 %6, i32* %3, align 4, !dbg !35
  %7 = load i32, i32* %2, align 4, !dbg !36
  %8 = icmp slt i32 %7, 0, !dbg !38
  br i1 %8, label %9, label %15, !dbg !39

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4, !dbg !40
  %11 = load i32, i32* %2, align 4, !dbg !41
  %12 = sub nsw i32 0, %11, !dbg !42
  %13 = icmp ne i32 %10, %12, !dbg !43
  br i1 %13, label %14, label %15, !dbg !44

14:                                               ; preds = %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !45
  unreachable, !dbg !45

15:                                               ; preds = %9, %0
  %16 = load i32, i32* %2, align 4, !dbg !46
  %17 = icmp sge i32 %16, 0, !dbg !48
  br i1 %17, label %18, label %23, !dbg !49

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4, !dbg !50
  %20 = load i32, i32* %2, align 4, !dbg !51
  %21 = icmp ne i32 %19, %20, !dbg !52
  br i1 %21, label %22, label %23, !dbg !53

22:                                               ; preds = %18
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 16, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !54
  unreachable, !dbg !54

23:                                               ; preds = %18, %15
  ret i32 0, !dbg !55
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
!1 = !DIFile(filename: "32.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "2432e8af430a8e62d9614e0d67c99c16")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "absolute", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 18, scope: !10)
!17 = !DILocation(line: 6, column: 11, scope: !10)
!18 = !DILocation(line: 6, column: 13, scope: !10)
!19 = !DILocation(line: 6, column: 10, scope: !10)
!20 = !DILocation(line: 6, column: 21, scope: !10)
!21 = !DILocation(line: 6, column: 20, scope: !10)
!22 = !DILocation(line: 6, column: 25, scope: !10)
!23 = !DILocation(line: 6, column: 3, scope: !10)
!24 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !25, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!25 = !DISubroutineType(types: !26)
!26 = !{!13}
!27 = !DILocalVariable(name: "x", scope: !24, file: !1, line: 10, type: !13)
!28 = !DILocation(line: 10, column: 7, scope: !24)
!29 = !DILocalVariable(name: "abs_val", scope: !24, file: !1, line: 10, type: !13)
!30 = !DILocation(line: 10, column: 10, scope: !24)
!31 = !DILocation(line: 11, column: 22, scope: !24)
!32 = !DILocation(line: 11, column: 3, scope: !24)
!33 = !DILocation(line: 12, column: 22, scope: !24)
!34 = !DILocation(line: 12, column: 13, scope: !24)
!35 = !DILocation(line: 12, column: 11, scope: !24)
!36 = !DILocation(line: 13, column: 6, scope: !37)
!37 = distinct !DILexicalBlock(scope: !24, file: !1, line: 13, column: 6)
!38 = !DILocation(line: 13, column: 8, scope: !37)
!39 = !DILocation(line: 13, column: 12, scope: !37)
!40 = !DILocation(line: 13, column: 15, scope: !37)
!41 = !DILocation(line: 13, column: 27, scope: !37)
!42 = !DILocation(line: 13, column: 26, scope: !37)
!43 = !DILocation(line: 13, column: 23, scope: !37)
!44 = !DILocation(line: 13, column: 6, scope: !24)
!45 = !DILocation(line: 14, column: 5, scope: !37)
!46 = !DILocation(line: 15, column: 6, scope: !47)
!47 = distinct !DILexicalBlock(scope: !24, file: !1, line: 15, column: 6)
!48 = !DILocation(line: 15, column: 8, scope: !47)
!49 = !DILocation(line: 15, column: 13, scope: !47)
!50 = !DILocation(line: 15, column: 16, scope: !47)
!51 = !DILocation(line: 15, column: 27, scope: !47)
!52 = !DILocation(line: 15, column: 24, scope: !47)
!53 = !DILocation(line: 15, column: 6, scope: !24)
!54 = !DILocation(line: 16, column: 5, scope: !47)
!55 = !DILocation(line: 17, column: 3, scope: !24)
