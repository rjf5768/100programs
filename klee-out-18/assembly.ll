; ModuleID = '19.bc'
source_filename = "19.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"19.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lcg(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  %3 = load i32, i32* %2, align 4, !dbg !17
  %4 = mul i32 1103515245, %3, !dbg !18
  %5 = add i32 %4, 12345, !dbg !19
  %6 = and i32 %5, 2147483647, !dbg !20
  ret i32 %6, !dbg !21
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !22 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !26, metadata !DIExpression()), !dbg !27
  %4 = bitcast i32* %2 to i8*, !dbg !28
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !29
  %5 = load i32, i32* %2, align 4, !dbg !30
  %6 = icmp ule i32 %5, 1000, !dbg !31
  %7 = zext i1 %6 to i32, !dbg !31
  %8 = sext i32 %7 to i64, !dbg !30
  call void @klee_assume(i64 noundef %8), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %3, metadata !33, metadata !DIExpression()), !dbg !34
  %9 = load i32, i32* %2, align 4, !dbg !35
  %10 = call i32 @lcg(i32 noundef %9), !dbg !36
  store i32 %10, i32* %3, align 4, !dbg !34
  %11 = load i32, i32* %3, align 4, !dbg !37
  %12 = icmp ugt i32 %11, 2147483647, !dbg !39
  br i1 %12, label %13, label %14, !dbg !40

13:                                               ; preds = %0
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 noundef 15, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4, !dbg !41
  unreachable, !dbg !41

14:                                               ; preds = %0
  ret i32 0, !dbg !42
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
!1 = !DIFile(filename: "19.c", directory: "/home/rongfeng/klee/code/100 programs", checksumkind: CSK_MD5, checksum: "43340a64dc0396ab0746e087327b750c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!10 = distinct !DISubprogram(name: "lcg", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{}
!15 = !DILocalVariable(name: "seed", arg: 1, scope: !10, file: !1, line: 5, type: !13)
!16 = !DILocation(line: 5, column: 31, scope: !10)
!17 = !DILocation(line: 6, column: 24, scope: !10)
!18 = !DILocation(line: 6, column: 22, scope: !10)
!19 = !DILocation(line: 6, column: 29, scope: !10)
!20 = !DILocation(line: 6, column: 38, scope: !10)
!21 = !DILocation(line: 6, column: 3, scope: !10)
!22 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !23, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!23 = !DISubroutineType(types: !24)
!24 = !{!25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DILocalVariable(name: "seed", scope: !22, file: !1, line: 10, type: !13)
!27 = !DILocation(line: 10, column: 16, scope: !22)
!28 = !DILocation(line: 11, column: 22, scope: !22)
!29 = !DILocation(line: 11, column: 3, scope: !22)
!30 = !DILocation(line: 12, column: 15, scope: !22)
!31 = !DILocation(line: 12, column: 20, scope: !22)
!32 = !DILocation(line: 12, column: 3, scope: !22)
!33 = !DILocalVariable(name: "rand_val", scope: !22, file: !1, line: 13, type: !13)
!34 = !DILocation(line: 13, column: 16, scope: !22)
!35 = !DILocation(line: 13, column: 31, scope: !22)
!36 = !DILocation(line: 13, column: 27, scope: !22)
!37 = !DILocation(line: 14, column: 6, scope: !38)
!38 = distinct !DILexicalBlock(scope: !22, file: !1, line: 14, column: 6)
!39 = !DILocation(line: 14, column: 15, scope: !38)
!40 = !DILocation(line: 14, column: 6, scope: !22)
!41 = !DILocation(line: 15, column: 5, scope: !38)
!42 = !DILocation(line: 16, column: 3, scope: !22)
