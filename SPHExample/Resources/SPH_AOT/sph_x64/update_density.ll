; ModuleID = 'kernel'
source_filename = "kernel"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type { %struct.RuntimeContext.40*, void (%struct.RuntimeContext.40*, i8*)*, void (%struct.RuntimeContext.40*, i8*, i32)*, void (%struct.RuntimeContext.40*, i8*)*, i64, i32, i32, i32, i32 }
%struct.RuntimeContext.40 = type { %struct.LLVMRuntime.39*, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], i64* }
%struct.LLVMRuntime.39 = type { i8, i64, i8*, i8*, i8* (i8*, i64, i64)*, void (i8*)*, void (i8*, ...)*, i32 (i8*, i64, i8*, %struct.__va_list_tag.33*)*, i8*, [512 x i8*], [512 x i64], i8*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, [1024 x %struct.ListManager.34*], [1024 x %struct.NodeManager.35*], %struct.NodeManager.35*, [1024 x i8*], i8*, %struct.RandState.36*, %struct.MemRequestQueue.38*, i8*, void (i8*, i8*)*, void (i8*)*, [2048 x i8], [32 x i64], i32, i64, i8*, i32, i32, i64, i8* }
%struct.__va_list_tag.33 = type { i32, i32, i8*, i8* }
%struct.ListManager.34 = type { [131072 x i8*], i64, i64, i32, i32, i32, %struct.LLVMRuntime.39* }
%struct.NodeManager.35 = type <{ %struct.LLVMRuntime.39*, i32, i32, i32, i32, %struct.ListManager.34*, %struct.ListManager.34*, %struct.ListManager.34*, i32, [4 x i8] }>
%struct.RandState.36 = type { i32, i32, i32, i32, i32 }
%struct.MemRequestQueue.38 = type { [65536 x %struct.MemRequest.37], i32, i32 }
%struct.MemRequest.37 = type { i64, i64, i8*, i64 }

@.str.2 = private unnamed_addr constant [21 x i8] c"step must not be %d\0A\00", align 1

define void @update_density_c78_0_kernel_0_serial(%struct.RuntimeContext.40* %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.40* %context, i32 0, i32 0)
  %1 = call %struct.LLVMRuntime.39* @RuntimeContext_get_runtime(%struct.RuntimeContext.40* %context)
  %2 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.39* %1, i64 0)
  %3 = bitcast i8* %2 to i32*
  store i32 %0, i32* %3, align 4
  br label %final
}

define void @update_density_c78_0_kernel_1_range_for(%struct.RuntimeContext.40* %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call %struct.LLVMRuntime.39* @RuntimeContext_get_runtime(%struct.RuntimeContext.40* %context)
  %1 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.39* %0, i64 0)
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  call void @cpu_parallel_range_for(%struct.RuntimeContext.40* %context, i32 16, i32 0, i32 %3, i32 1, i32 512, void (%struct.RuntimeContext.40*, i8*)* null, void (%struct.RuntimeContext.40*, i8*, i32)* @function_body, void (%struct.RuntimeContext.40*, i8*)* null, i64 1)
  br label %final
}

define internal void @function_body(%struct.RuntimeContext.40* %0, i8* %1, i32 %2) {
allocs:
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  br label %entry

final:                                            ; preds = %after_for
  ret void

entry:                                            ; preds = %allocs
  br label %function_body

function_body:                                    ; preds = %entry
  store i32 %2, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.40* %0, i32 1)
  %9 = inttoptr i64 %8 to float*
  %10 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.40* %0, i32 1, i32 0)
  %11 = mul i32 0, %10
  %12 = add i32 %11, %7
  %13 = getelementptr float, float* %9, i32 %12
  %14 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.40* %0, i32 0)
  %15 = inttoptr i64 %14 to float*
  %16 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.40* %0, i32 0, i32 0)
  %17 = mul i32 0, %16
  %18 = add i32 %17, %7
  %19 = mul i32 %18, 3
  %20 = add i32 %19, 0
  %21 = getelementptr float, float* %15, i32 %20
  %22 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.40* %0, i32 0, i32 0)
  %23 = mul i32 0, %22
  %24 = add i32 %23, %7
  %25 = mul i32 %24, 3
  %26 = add i32 %25, 1
  %27 = getelementptr float, float* %15, i32 %26
  %28 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.40* %0, i32 0, i32 0)
  %29 = mul i32 0, %28
  %30 = add i32 %29, %7
  %31 = mul i32 %30, 3
  %32 = add i32 %31, 2
  %33 = getelementptr float, float* %15, i32 %32
  %34 = call %struct.LLVMRuntime.39* @RuntimeContext_get_runtime(%struct.RuntimeContext.40* %0)
  %35 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.39* %34, i64 0)
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4
  store float 0.000000e+00, float* %4, align 4
  store i32 0, i32* %5, align 4
  br label %for_loop_test

for_loop_body:                                    ; preds = %for_loop_test
  %38 = load i32, i32* %5, align 4
  %39 = load float, float* %21, align 4
  %40 = load float, float* %27, align 4
  %41 = load float, float* %33, align 4
  %42 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.40* %0, i32 0, i32 0)
  %43 = mul i32 0, %42
  %44 = add i32 %43, %38
  %45 = mul i32 %44, 3
  %46 = add i32 %45, 0
  %47 = getelementptr float, float* %15, i32 %46
  %48 = load float, float* %47, align 4
  %49 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.40* %0, i32 0, i32 0)
  %50 = mul i32 0, %49
  %51 = add i32 %50, %38
  %52 = mul i32 %51, 3
  %53 = add i32 %52, 1
  %54 = getelementptr float, float* %15, i32 %53
  %55 = load float, float* %54, align 4
  %56 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.40* %0, i32 0, i32 0)
  %57 = mul i32 0, %56
  %58 = add i32 %57, %38
  %59 = mul i32 %58, 3
  %60 = add i32 %59, 2
  %61 = getelementptr float, float* %15, i32 %60
  %62 = load float, float* %61, align 4
  %63 = fsub float %39, %48
  %64 = fsub float %40, %55
  %65 = fsub float %41, %62
  %66 = fmul float %63, %63
  %67 = fmul float %64, %64
  %68 = fmul float %65, %65
  %69 = fadd float %66, %67
  %70 = fadd float %69, %68
  %71 = call float @llvm.sqrt.f32(float %70)
  store float 0.000000e+00, float* %6, align 4
  %72 = fcmp ole float %71, 0x3FA47AE140000000
  %73 = sext i1 %72 to i32
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %true_block, label %false_block

for_loop_inc:                                     ; preds = %after_if
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %for_loop_test

after_for:                                        ; preds = %for_loop_test
  %78 = load float, float* %4, align 4
  store float %78, float* %13, align 4
  %79 = fmul float %78, 0x3F50624DE0000000
  %80 = fsub float %79, 1.000000e+00
  %81 = call float @llvm.maxnum.f32(float %80, float 0.000000e+00)
  %82 = fmul float %81, 1.000000e+04
  %83 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.40* %0, i32 2)
  %84 = inttoptr i64 %83 to float*
  %85 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.40* %0, i32 2, i32 0)
  %86 = mul i32 0, %85
  %87 = add i32 %86, %7
  %88 = getelementptr float, float* %84, i32 %87
  store float %82, float* %88, align 4
  br label %final

for_loop_test:                                    ; preds = %for_loop_inc, %function_body
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, %37
  br i1 %90, label %for_loop_body, label %after_for

true_block:                                       ; preds = %for_loop_body
  %91 = fmul float %71, %71
  %92 = fsub float 0x3F5A36E2E0000000, %91
  %93 = fmul float %92, 0x4295BDF8A0000000
  %94 = fmul float %93, %92
  %95 = fmul float %94, %92
  store float %95, float* %6, align 4
  br label %after_if

false_block:                                      ; preds = %for_loop_body
  br label %after_if

after_if:                                         ; preds = %false_block, %true_block
  %96 = load float, float* %6, align 4
  %97 = fmul float %96, 0x3F7A36E2E0000000
  %98 = load float, float* %4, align 4
  %99 = fadd float %98, %97
  store float %99, float* %4, align 4
  br label %for_loop_inc
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @RuntimeContext_get_args(%struct.RuntimeContext.40* %0, i32 %1) #1 {
  %3 = alloca %struct.RuntimeContext.40*, align 8
  %4 = alloca i32, align 4
  store %struct.RuntimeContext.40* %0, %struct.RuntimeContext.40** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.RuntimeContext.40*, %struct.RuntimeContext.40** %3, align 8
  %6 = getelementptr inbounds %struct.RuntimeContext.40, %struct.RuntimeContext.40* %5, i32 0, i32 1
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [64 x i64], [64 x i64]* %6, i64 0, i64 %8
  %10 = load i64, i64* %9, align 8
  ret i64 %10
}

; Function Attrs: alwaysinline nounwind uwtable
define internal %struct.LLVMRuntime.39* @RuntimeContext_get_runtime(%struct.RuntimeContext.40* %0) #1 {
  %2 = alloca %struct.RuntimeContext.40*, align 8
  store %struct.RuntimeContext.40* %0, %struct.RuntimeContext.40** %2, align 8
  %3 = load %struct.RuntimeContext.40*, %struct.RuntimeContext.40** %2, align 8
  %4 = getelementptr inbounds %struct.RuntimeContext.40, %struct.RuntimeContext.40* %3, i32 0, i32 0
  %5 = load %struct.LLVMRuntime.39*, %struct.LLVMRuntime.39** %4, align 8
  ret %struct.LLVMRuntime.39* %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.40* %0, i32 %1, i32 %2) #1 {
  %4 = alloca %struct.RuntimeContext.40*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.RuntimeContext.40* %0, %struct.RuntimeContext.40** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.RuntimeContext.40*, %struct.RuntimeContext.40** %4, align 8
  %8 = getelementptr inbounds %struct.RuntimeContext.40, %struct.RuntimeContext.40* %7, i32 0, i32 3
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [32 x [12 x i32]], [32 x [12 x i32]]* %8, i64 0, i64 %10
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  ret i32 %15
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i8* @get_temporary_pointer(%struct.LLVMRuntime.39* %0, i64 %1) #1 {
  %3 = alloca %struct.LLVMRuntime.39*, align 8
  %4 = alloca i64, align 8
  store %struct.LLVMRuntime.39* %0, %struct.LLVMRuntime.39** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.LLVMRuntime.39*, %struct.LLVMRuntime.39** %3, align 8
  %6 = getelementptr inbounds %struct.LLVMRuntime.39, %struct.LLVMRuntime.39* %5, i32 0, i32 17
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  ret i8* %9
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @cpu_parallel_range_for(%struct.RuntimeContext.40* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, void (%struct.RuntimeContext.40*, i8*)* %6, void (%struct.RuntimeContext.40*, i8*, i32)* %7, void (%struct.RuntimeContext.40*, i8*)* %8, i64 %9) #1 {
  %11 = alloca %struct.RuntimeContext.40*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca void (%struct.RuntimeContext.40*, i8*)*, align 8
  %18 = alloca void (%struct.RuntimeContext.40*, i8*, i32)*, align 8
  %19 = alloca void (%struct.RuntimeContext.40*, i8*)*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %0, align 8
  %22 = alloca %struct.LLVMRuntime.39*, align 8
  store %struct.RuntimeContext.40* %0, %struct.RuntimeContext.40** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store void (%struct.RuntimeContext.40*, i8*)* %6, void (%struct.RuntimeContext.40*, i8*)** %17, align 8
  store void (%struct.RuntimeContext.40*, i8*, i32)* %7, void (%struct.RuntimeContext.40*, i8*, i32)** %18, align 8
  store void (%struct.RuntimeContext.40*, i8*)* %8, void (%struct.RuntimeContext.40*, i8*)** %19, align 8
  store i64 %9, i64* %20, align 8
  call void @_ZN25range_task_helper_contextC2Ev(%0* %21) #5
  %23 = load %struct.RuntimeContext.40*, %struct.RuntimeContext.40** %11, align 8
  %24 = getelementptr inbounds %0, %0* %21, i32 0, i32 0
  store %struct.RuntimeContext.40* %23, %struct.RuntimeContext.40** %24, align 8
  %25 = load void (%struct.RuntimeContext.40*, i8*)*, void (%struct.RuntimeContext.40*, i8*)** %17, align 8
  %26 = getelementptr inbounds %0, %0* %21, i32 0, i32 1
  store void (%struct.RuntimeContext.40*, i8*)* %25, void (%struct.RuntimeContext.40*, i8*)** %26, align 8
  %27 = load i64, i64* %20, align 8
  %28 = getelementptr inbounds %0, %0* %21, i32 0, i32 4
  store i64 %27, i64* %28, align 8
  %29 = load void (%struct.RuntimeContext.40*, i8*, i32)*, void (%struct.RuntimeContext.40*, i8*, i32)** %18, align 8
  %30 = getelementptr inbounds %0, %0* %21, i32 0, i32 2
  store void (%struct.RuntimeContext.40*, i8*, i32)* %29, void (%struct.RuntimeContext.40*, i8*, i32)** %30, align 8
  %31 = load void (%struct.RuntimeContext.40*, i8*)*, void (%struct.RuntimeContext.40*, i8*)** %19, align 8
  %32 = getelementptr inbounds %0, %0* %21, i32 0, i32 3
  store void (%struct.RuntimeContext.40*, i8*)* %31, void (%struct.RuntimeContext.40*, i8*)** %32, align 8
  %33 = load i32, i32* %13, align 4
  %34 = getelementptr inbounds %0, %0* %21, i32 0, i32 5
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %14, align 4
  %36 = getelementptr inbounds %0, %0* %21, i32 0, i32 6
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %15, align 4
  %38 = getelementptr inbounds %0, %0* %21, i32 0, i32 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %10
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.RuntimeContext.40*, %struct.RuntimeContext.40** %11, align 8
  %46 = getelementptr inbounds %struct.RuntimeContext.40, %struct.RuntimeContext.40* %45, i32 0, i32 0
  %47 = load %struct.LLVMRuntime.39*, %struct.LLVMRuntime.39** %46, align 8
  call void @_Z13taichi_printfIJRiEEvP11LLVMRuntimePKcDpOT_(%struct.LLVMRuntime.39* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* nonnull align 4 dereferenceable(4) %15)
  call void @exit(i32 -1) #6
  unreachable

48:                                               ; preds = %41, %10
  %49 = load i32, i32* %16, align 4
  %50 = getelementptr inbounds %0, %0* %21, i32 0, i32 7
  store i32 %49, i32* %50, align 8
  %51 = load %struct.RuntimeContext.40*, %struct.RuntimeContext.40** %11, align 8
  %52 = getelementptr inbounds %struct.RuntimeContext.40, %struct.RuntimeContext.40* %51, i32 0, i32 0
  %53 = load %struct.LLVMRuntime.39*, %struct.LLVMRuntime.39** %52, align 8
  store %struct.LLVMRuntime.39* %53, %struct.LLVMRuntime.39** %22, align 8
  %54 = load %struct.LLVMRuntime.39*, %struct.LLVMRuntime.39** %22, align 8
  %55 = getelementptr inbounds %struct.LLVMRuntime.39, %struct.LLVMRuntime.39* %54, i32 0, i32 12
  %56 = load void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)** %55, align 8
  %57 = load %struct.LLVMRuntime.39*, %struct.LLVMRuntime.39** %22, align 8
  %58 = getelementptr inbounds %struct.LLVMRuntime.39, %struct.LLVMRuntime.39* %57, i32 0, i32 11
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %62, %63
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* %16, align 4
  %67 = sdiv i32 %65, %66
  %68 = load i32, i32* %12, align 4
  %69 = bitcast %0* %21 to i8*
  call void %56(i8* %59, i32 %67, i32 %68, i8* %69, void (i8*, i32, i32)* @cpu_parallel_range_for_task)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_ZN25range_task_helper_contextC2Ev(%0* %0) unnamed_addr #1 align 2 {
  %2 = alloca %0*, align 8
  store %0* %0, %0** %2, align 8
  %3 = load %0*, %0** %2, align 8
  %4 = getelementptr inbounds %0, %0* %3, i32 0, i32 1
  store void (%struct.RuntimeContext.40*, i8*)* null, void (%struct.RuntimeContext.40*, i8*)** %4, align 8
  %5 = getelementptr inbounds %0, %0* %3, i32 0, i32 2
  store void (%struct.RuntimeContext.40*, i8*, i32)* null, void (%struct.RuntimeContext.40*, i8*, i32)** %5, align 8
  %6 = getelementptr inbounds %0, %0* %3, i32 0, i32 3
  store void (%struct.RuntimeContext.40*, i8*)* null, void (%struct.RuntimeContext.40*, i8*)** %6, align 8
  %7 = getelementptr inbounds %0, %0* %3, i32 0, i32 4
  store i64 1, i64* %7, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_Z13taichi_printfIJRiEEvP11LLVMRuntimePKcDpOT_(%struct.LLVMRuntime.39* %0, i8* %1, i32* nonnull align 4 dereferenceable(4) %2) #1 {
  %4 = alloca %struct.LLVMRuntime.39*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.LLVMRuntime.39* %0, %struct.LLVMRuntime.39** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.LLVMRuntime.39*, %struct.LLVMRuntime.39** %4, align 8
  %8 = getelementptr inbounds %struct.LLVMRuntime.39, %struct.LLVMRuntime.39* %7, i32 0, i32 6
  %9 = load void (i8*, ...)*, void (i8*, ...)** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  call void (i8*, ...) %9(i8* %10, i32 %12)
  ret void
}

; Function Attrs: alwaysinline noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal void @cpu_parallel_range_for_task(i8* %0, i32 %1, i32 %2) #1 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %0, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.RuntimeContext.40, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %0*
  %22 = bitcast %0* %7 to i8*
  %23 = bitcast %0* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 56, i1 false)
  %24 = getelementptr inbounds %0, %0* %7, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca i8, i64 %25, align 8
  store i64 %25, i64* %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8* %28, i8** %10, align 8
  %29 = getelementptr inbounds %0, %0* %7, i32 0, i32 1
  %30 = load void (%struct.RuntimeContext.40*, i8*)*, void (%struct.RuntimeContext.40*, i8*)** %29, align 8
  %31 = icmp ne void (%struct.RuntimeContext.40*, i8*)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = getelementptr inbounds %0, %0* %7, i32 0, i32 1
  %34 = load void (%struct.RuntimeContext.40*, i8*)*, void (%struct.RuntimeContext.40*, i8*)** %33, align 8
  %35 = getelementptr inbounds %0, %0* %7, i32 0, i32 0
  %36 = load %struct.RuntimeContext.40*, %struct.RuntimeContext.40** %35, align 8
  %37 = load i8*, i8** %10, align 8
  call void %34(%struct.RuntimeContext.40* %36, i8* %37)
  br label %38

38:                                               ; preds = %32, %3
  %39 = getelementptr inbounds %0, %0* %7, i32 0, i32 0
  %40 = load %struct.RuntimeContext.40*, %struct.RuntimeContext.40** %39, align 8
  %41 = bitcast %struct.RuntimeContext.40* %11 to i8*
  %42 = bitcast %struct.RuntimeContext.40* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 3224, i1 false)
  %43 = load i32, i32* %5, align 4
  %44 = getelementptr inbounds %struct.RuntimeContext.40, %struct.RuntimeContext.40* %11, i32 0, i32 4
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %0, %0* %7, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %77

48:                                               ; preds = %38
  %49 = getelementptr inbounds %0, %0* %7, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds %0, %0* %7, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %51, %53
  %55 = add nsw i32 %50, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = getelementptr inbounds %0, %0* %7, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %56, %58
  store i32 %59, i32* %14, align 4
  %60 = getelementptr inbounds %0, %0* %7, i32 0, i32 6
  %61 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %14, i32* nonnull align 4 dereferenceable(4) %60)
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %73, %48
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = getelementptr inbounds %0, %0* %7, i32 0, i32 2
  %70 = load void (%struct.RuntimeContext.40*, i8*, i32)*, void (%struct.RuntimeContext.40*, i8*, i32)** %69, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %15, align 4
  call void %70(%struct.RuntimeContext.40* %11, i8* %71, i32 %72)
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %64

76:                                               ; preds = %64
  br label %112

77:                                               ; preds = %38
  %78 = getelementptr inbounds %0, %0* %7, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %111

81:                                               ; preds = %77
  %82 = getelementptr inbounds %0, %0* %7, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = getelementptr inbounds %0, %0* %7, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %84, %86
  %88 = sub nsw i32 %83, %87
  store i32 %88, i32* %16, align 4
  %89 = getelementptr inbounds %0, %0* %7, i32 0, i32 5
  %90 = load i32, i32* %16, align 4
  %91 = getelementptr inbounds %0, %0* %7, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %90, %92
  store i32 %93, i32* %18, align 4
  %94 = call nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %89, i32* nonnull align 4 dereferenceable(4) %18)
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %16, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %19, align 4
  br label %98

98:                                               ; preds = %107, %81
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = getelementptr inbounds %0, %0* %7, i32 0, i32 2
  %104 = load void (%struct.RuntimeContext.40*, i8*, i32)*, void (%struct.RuntimeContext.40*, i8*, i32)** %103, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* %19, align 4
  call void %104(%struct.RuntimeContext.40* %11, i8* %105, i32 %106)
  br label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %19, align 4
  br label %98

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %77
  br label %112

112:                                              ; preds = %111, %76
  %113 = getelementptr inbounds %0, %0* %7, i32 0, i32 3
  %114 = load void (%struct.RuntimeContext.40*, i8*)*, void (%struct.RuntimeContext.40*, i8*)** %113, align 8
  %115 = icmp ne void (%struct.RuntimeContext.40*, i8*)* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = getelementptr inbounds %0, %0* %7, i32 0, i32 3
  %118 = load void (%struct.RuntimeContext.40*, i8*)*, void (%struct.RuntimeContext.40*, i8*)** %117, align 8
  %119 = getelementptr inbounds %0, %0* %7, i32 0, i32 0
  %120 = load %struct.RuntimeContext.40*, %struct.RuntimeContext.40** %119, align 8
  %121 = load i8*, i8** %10, align 8
  call void %118(%struct.RuntimeContext.40* %120, i8* %121)
  br label %122

122:                                              ; preds = %116, %112
  %123 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %123)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: alwaysinline nounwind uwtable
define internal nonnull align 4 dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %0, i32* nonnull align 4 dereferenceable(4) %1) #1 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  store i32* %14, i32** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32*, i32** %3, align 8
  ret i32* %16
}

; Function Attrs: alwaysinline nounwind uwtable
define internal nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %0, i32* nonnull align 4 dereferenceable(4) %1) #1 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  store i32* %14, i32** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32*, i32** %3, align 8
  ret i32* %16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Ubuntu clang version 11.1.0-6"}
!1 = !{i32 1, !"wchar_size", i32 4}
