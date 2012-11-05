; ModuleID = 'program.o'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-linux-gnu"

@.str = private constant [2 x i8] c"a\00", align 1 ; <[2 x i8]*> [#uses=1]
@.str1 = private constant [2 x i8] c"b\00", align 1 ; <[2 x i8]*> [#uses=1]
@.str2 = private constant [2 x i8] c"c\00", align 1 ; <[2 x i8]*> [#uses=1]
@.str3 = private constant [2 x i8] c"d\00", align 1 ; <[2 x i8]*> [#uses=1]
@.str4 = private constant [4 x i8] c"%d\0A\00", align 1 ; <[4 x i8]*> [#uses=1]

define i32 @main() nounwind {
entry:
  %retval = alloca i32                            ; <i32*> [#uses=2]
  %0 = alloca i32                                 ; <i32*> [#uses=2]
  %e = alloca i32                                 ; <i32*> [#uses=21]
  %a = alloca float                               ; <float*> [#uses=6]
  %b = alloca float                               ; <float*> [#uses=6]
  %c = alloca float                               ; <float*> [#uses=4]
  %d = alloca float                               ; <float*> [#uses=6]
  %"alloca point" = bitcast i32 0 to i32          ; <i32> [#uses=0]
  store i32 0, i32* %e, align 4, !dbg !0
  store float 0.000000e+00, float* %a, align 4, !dbg !7
  store float 0.000000e+00, float* %b, align 4, !dbg !8
  store float 0.000000e+00, float* %c, align 4, !dbg !9
  store float 0.000000e+00, float* %d, align 4, !dbg !10
  %1 = call i32 (...)* @klee_make_symbolic(float* %a, i32 4, i8* getelementptr inbounds ([2 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !11 ; <i32> [#uses=0]
  %2 = call i32 (...)* @klee_make_symbolic(float* %b, i32 4, i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !12 ; <i32> [#uses=0]
  %3 = call i32 (...)* @klee_make_symbolic(float* %c, i32 4, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !13 ; <i32> [#uses=0]
  %4 = call i32 (...)* @klee_make_symbolic(float* %d, i32 4, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !14 ; <i32> [#uses=0]
  %5 = load float* %a, align 4, !dbg !15          ; <float> [#uses=1]
  %6 = fcmp ogt float %5, 1.000000e+01, !dbg !15  ; <i1> [#uses=1]
  br i1 %6, label %bb, label %bb7, !dbg !15

bb:                                               ; preds = %entry
  %7 = load i32* %e, align 4, !dbg !16            ; <i32> [#uses=1]
  store i32 %7, i32* %e, align 4, !dbg !16
  %8 = load float* %b, align 4, !dbg !17          ; <float> [#uses=1]
  %9 = fpext float %8 to double, !dbg !17         ; <double> [#uses=1]
  %10 = fmul double %9, 3.000000e+00, !dbg !17    ; <double> [#uses=1]
  %11 = fadd double %10, 2.700000e+01, !dbg !17   ; <double> [#uses=1]
  %12 = fcmp oeq double %11, 3.000000e+02, !dbg !17 ; <i1> [#uses=1]
  br i1 %12, label %bb1, label %bb2, !dbg !17

bb1:                                              ; preds = %bb
  %13 = load i32* %e, align 4, !dbg !18           ; <i32> [#uses=1]
  store i32 %13, i32* %e, align 4, !dbg !18
  br label %bb17, !dbg !18

bb2:                                              ; preds = %bb
  %14 = load float* %a, align 4, !dbg !19         ; <float> [#uses=1]
  %15 = load float* %b, align 4, !dbg !19         ; <float> [#uses=1]
  %16 = fadd float %14, %15, !dbg !19             ; <float> [#uses=1]
  %17 = fcmp ogt float %16, 2.400000e+01, !dbg !19 ; <i1> [#uses=1]
  br i1 %17, label %bb3, label %bb4, !dbg !19

bb3:                                              ; preds = %bb2
  %18 = load i32* %e, align 4, !dbg !20           ; <i32> [#uses=1]
  %19 = add nsw i32 %18, 1, !dbg !20              ; <i32> [#uses=1]
  store i32 %19, i32* %e, align 4, !dbg !20
  br label %bb17, !dbg !20

bb4:                                              ; preds = %bb2
  %20 = load float* %b, align 4, !dbg !21         ; <float> [#uses=1]
  %21 = fcmp olt float %20, 5.000000e+02, !dbg !21 ; <i1> [#uses=1]
  br i1 %21, label %bb5, label %bb17, !dbg !21

bb5:                                              ; preds = %bb4
  %22 = load i32* %e, align 4, !dbg !22           ; <i32> [#uses=1]
  %23 = add nsw i32 %22, 2, !dbg !22              ; <i32> [#uses=1]
  store i32 %23, i32* %e, align 4, !dbg !22
  br label %bb17, !dbg !22

bb7:                                              ; preds = %entry
  %24 = load float* %d, align 4, !dbg !23         ; <float> [#uses=1]
  %25 = fcmp ogt float %24, 0.000000e+00, !dbg !23 ; <i1> [#uses=1]
  %26 = load i32* %e, align 4, !dbg !24           ; <i32> [#uses=2]
  br i1 %25, label %bb8, label %bb14, !dbg !23

bb8:                                              ; preds = %bb7
  %27 = add nsw i32 %26, 4, !dbg !24              ; <i32> [#uses=1]
  store i32 %27, i32* %e, align 4, !dbg !24
  %28 = load float* %d, align 4, !dbg !25         ; <float> [#uses=1]
  %29 = load float* %a, align 4, !dbg !25         ; <float> [#uses=1]
  %30 = fcmp olt float %28, %29, !dbg !25         ; <i1> [#uses=1]
  br i1 %30, label %bb9, label %bb10, !dbg !25

bb9:                                              ; preds = %bb8
  %31 = load i32* %e, align 4, !dbg !26           ; <i32> [#uses=1]
  store i32 %31, i32* %e, align 4, !dbg !26
  br label %bb17, !dbg !26

bb10:                                             ; preds = %bb8
  %32 = load float* %c, align 4, !dbg !27         ; <float> [#uses=1]
  %33 = fpext float %32 to double, !dbg !27       ; <double> [#uses=1]
  %34 = fadd double %33, 1.000000e+01, !dbg !27   ; <double> [#uses=1]
  %35 = load float* %d, align 4, !dbg !27         ; <float> [#uses=1]
  %36 = fpext float %35 to double, !dbg !27       ; <double> [#uses=1]
  %37 = fcmp olt double %34, %36, !dbg !27        ; <i1> [#uses=1]
  %38 = load i32* %e, align 4, !dbg !28           ; <i32> [#uses=2]
  br i1 %37, label %bb11, label %bb12, !dbg !27

bb11:                                             ; preds = %bb10
  %39 = add nsw i32 %38, 1, !dbg !28              ; <i32> [#uses=1]
  store i32 %39, i32* %e, align 4, !dbg !28
  br label %bb17, !dbg !28

bb12:                                             ; preds = %bb10
  %40 = add nsw i32 %38, 2, !dbg !29              ; <i32> [#uses=1]
  store i32 %40, i32* %e, align 4, !dbg !29
  br label %bb17, !dbg !29

bb14:                                             ; preds = %bb7
  %41 = add nsw i32 %26, 7, !dbg !30              ; <i32> [#uses=1]
  store i32 %41, i32* %e, align 4, !dbg !30
  %42 = load float* %a, align 4, !dbg !31         ; <float> [#uses=1]
  %43 = fpext float %42 to double, !dbg !31       ; <double> [#uses=1]
  %44 = load float* %b, align 4, !dbg !31         ; <float> [#uses=1]
  %45 = fpext float %44 to double, !dbg !31       ; <double> [#uses=1]
  %46 = fmul double %45, 3.000000e+00, !dbg !31   ; <double> [#uses=1]
  %47 = fadd double %43, %46, !dbg !31            ; <double> [#uses=1]
  %48 = load float* %c, align 4, !dbg !31         ; <float> [#uses=1]
  %49 = fpext float %48 to double, !dbg !31       ; <double> [#uses=1]
  %50 = fmul double %49, 2.000000e+00, !dbg !31   ; <double> [#uses=1]
  %51 = load float* %d, align 4, !dbg !31         ; <float> [#uses=1]
  %52 = fpext float %51 to double, !dbg !31       ; <double> [#uses=1]
  %53 = fadd double %50, %52, !dbg !31            ; <double> [#uses=1]
  %54 = fcmp olt double %47, %53, !dbg !31        ; <i1> [#uses=1]
  %55 = load i32* %e, align 4, !dbg !32           ; <i32> [#uses=2]
  br i1 %54, label %bb15, label %bb16, !dbg !31

bb15:                                             ; preds = %bb14
  store i32 %55, i32* %e, align 4, !dbg !32
  br label %bb17, !dbg !32

bb16:                                             ; preds = %bb14
  %56 = add nsw i32 %55, 1, !dbg !33              ; <i32> [#uses=1]
  store i32 %56, i32* %e, align 4, !dbg !33
  br label %bb17, !dbg !33

bb17:                                             ; preds = %bb9, %bb11, %bb12, %bb1, %bb3, %bb4, %bb5, %bb16, %bb15
  %57 = load i32* %e, align 4, !dbg !34           ; <i32> [#uses=1]
  %58 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i32 %57) nounwind, !dbg !34 ; <i32> [#uses=0]
  store i32 0, i32* %0, align 4, !dbg !35
  %59 = load i32* %0, align 4, !dbg !35           ; <i32> [#uses=1]
  store i32 %59, i32* %retval, align 4, !dbg !35
  %retval18 = load i32* %retval, !dbg !35         ; <i32> [#uses=1]
  ret i32 %retval18, !dbg !35
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @klee_make_symbolic(...)

declare i32 @printf(i8* noalias, ...) nounwind

!0 = metadata !{i32 6, i32 0, metadata !1, null}
!1 = metadata !{i32 458763, metadata !2, i32 4, i32 0} ; [ DW_TAG_lexical_block ]
!2 = metadata !{i32 458798, i32 0, metadata !3, metadata !"main", metadata !"main", metadata !"main", metadata !3, i32 4, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i1 false} ; [ DW_TAG_subprogram ]
!3 = metadata !{i32 458769, i32 0, i32 1, metadata !"program.c", metadata !"/u/data/u93/ma23/Purdue/cs490st/proj3/part2/cannot_cover_all_feasible_paths/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.7)", i1 true, i1 false, metadata !"
!4 = metadata !{i32 458773, metadata !3, metadata !"", metadata !3, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, null} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{metadata !6}
!6 = metadata !{i32 458788, metadata !3, metadata !"int", metadata !3, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 7, i32 0, metadata !1, null}
!8 = metadata !{i32 8, i32 0, metadata !1, null}
!9 = metadata !{i32 9, i32 0, metadata !1, null}
!10 = metadata !{i32 10, i32 0, metadata !1, null}
!11 = metadata !{i32 13, i32 0, metadata !1, null}
!12 = metadata !{i32 14, i32 0, metadata !1, null}
!13 = metadata !{i32 15, i32 0, metadata !1, null}
!14 = metadata !{i32 16, i32 0, metadata !1, null}
!15 = metadata !{i32 18, i32 0, metadata !1, null}
!16 = metadata !{i32 19, i32 0, metadata !1, null}
!17 = metadata !{i32 21, i32 0, metadata !1, null}
!18 = metadata !{i32 22, i32 0, metadata !1, null}
!19 = metadata !{i32 24, i32 0, metadata !1, null}
!20 = metadata !{i32 25, i32 0, metadata !1, null}
!21 = metadata !{i32 27, i32 0, metadata !1, null}
!22 = metadata !{i32 28, i32 0, metadata !1, null}
!23 = metadata !{i32 31, i32 0, metadata !1, null}
!24 = metadata !{i32 32, i32 0, metadata !1, null}
!25 = metadata !{i32 34, i32 0, metadata !1, null}
!26 = metadata !{i32 35, i32 0, metadata !1, null}
!27 = metadata !{i32 37, i32 0, metadata !1, null}
!28 = metadata !{i32 38, i32 0, metadata !1, null}
!29 = metadata !{i32 41, i32 0, metadata !1, null}
!30 = metadata !{i32 45, i32 0, metadata !1, null}
!31 = metadata !{i32 47, i32 0, metadata !1, null}
!32 = metadata !{i32 48, i32 0, metadata !1, null}
!33 = metadata !{i32 51, i32 0, metadata !1, null}
!34 = metadata !{i32 55, i32 0, metadata !1, null}
!35 = metadata !{i32 57, i32 0, metadata !1, null}
