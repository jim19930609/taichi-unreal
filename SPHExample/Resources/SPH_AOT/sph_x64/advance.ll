; ModuleID = 'kernel'
source_filename = "kernel"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type { %struct.RuntimeContext.112*, void (%struct.RuntimeContext.112*, i8*)*, void (%struct.RuntimeContext.112*, i8*, i32)*, void (%struct.RuntimeContext.112*, i8*)*, i64, i32, i32, i32, i32 }
%struct.RuntimeContext.112 = type { %struct.LLVMRuntime.111*, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], i64* }
%struct.LLVMRuntime.111 = type { i8, i64, i8*, i8*, i8* (i8*, i64, i64)*, void (i8*)*, void (i8*, ...)*, i32 (i8*, i64, i8*, %struct.__va_list_tag.105*)*, i8*, [512 x i8*], [512 x i64], i8*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, [1024 x %struct.ListManager.106*], [1024 x %struct.NodeManager.107*], %struct.NodeManager.107*, [1024 x i8*], i8*, %struct.RandState.108*, %struct.MemRequestQueue.110*, i8*, void (i8*, i8*)*, void (i8*)*, [2048 x i8], [32 x i64], i32, i64, i8*, i32, i32, i64, i8* }
%struct.__va_list_tag.105 = type { i32, i32, i8*, i8* }
%struct.ListManager.106 = type { [131072 x i8*], i64, i64, i32, i32, i32, %struct.LLVMRuntime.111* }
%struct.NodeManager.107 = type <{ %struct.LLVMRuntime.111*, i32, i32, i32, i32, %struct.ListManager.106*, %struct.ListManager.106*, %struct.ListManager.106*, i32, [4 x i8] }>
%struct.RandState.108 = type { i32, i32, i32, i32, i32 }
%struct.MemRequestQueue.110 = type { [65536 x %struct.MemRequest.109], i32, i32 }
%struct.MemRequest.109 = type { i64, i64, i8*, i64 }

@.str.2 = private unnamed_addr constant [21 x i8] c"step must not be %d\0A\00", align 1

define void @advance_c82_0_kernel_0_serial(%struct.RuntimeContext.112* %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.112* %context, i32 0, i32 0)
  %1 = call %struct.LLVMRuntime.111* @RuntimeContext_get_runtime(%struct.RuntimeContext.112* %context)
  %2 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.111* %1, i64 0)
  %3 = bitcast i8* %2 to i32*
  store i32 %0, i32* %3, align 4
  br label %final
}

define void @advance_c82_0_kernel_1_range_for(%struct.RuntimeContext.112* %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call %struct.LLVMRuntime.111* @RuntimeContext_get_runtime(%struct.RuntimeContext.112* %context)
  %1 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.111* %0, i64 0)
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  call void @cpu_parallel_range_for(%struct.RuntimeContext.112* %context, i32 16, i32 0, i32 %3, i32 1, i32 512, void (%struct.RuntimeContext.112*, i8*)* null, void (%struct.RuntimeContext.112*, i8*, i32)* @function_body, void (%struct.RuntimeContext.112*, i8*)* null, i64 1)
  br label %final
}

define internal void @function_body(%struct.RuntimeContext.112* %0, i8* %1, i32 %2) {
allocs:
  %3 = alloca i32, align 4
  br label %entry

final:                                            ; preds = %function_body
  ret void

entry:                                            ; preds = %allocs
  br label %function_body

function_body:                                    ; preds = %entry
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.112* %0, i32 2)
  %6 = inttoptr i64 %5 to float*
  %7 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.112* %0, i32 2, i32 0)
  %8 = mul i32 0, %7
  %9 = add i32 %8, %4
  %10 = mul i32 %9, 3
  %11 = add i32 %10, 0
  %12 = getelementptr float, float* %6, i32 %11
  %13 = load float, float* %12, align 4
  %14 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.112* %0, i32 2, i32 0)
  %15 = mul i32 0, %14
  %16 = add i32 %15, %4
  %17 = mul i32 %16, 3
  %18 = add i32 %17, 1
  %19 = getelementptr float, float* %6, i32 %18
  %20 = load float, float* %19, align 4
  %21 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.112* %0, i32 2, i32 0)
  %22 = mul i32 0, %21
  %23 = add i32 %22, %4
  %24 = mul i32 %23, 3
  %25 = add i32 %24, 2
  %26 = getelementptr float, float* %6, i32 %25
  %27 = load float, float* %26, align 4
  %28 = fmul float %13, 0x3F6A36E2E0000000
  %29 = fmul float %20, 0x3F6A36E2E0000000
  %30 = fmul float %27, 0x3F6A36E2E0000000
  %31 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.112* %0, i32 1)
  %32 = inttoptr i64 %31 to float*
  %33 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.112* %0, i32 1, i32 0)
  %34 = mul i32 0, %33
  %35 = add i32 %34, %4
  %36 = mul i32 %35, 3
  %37 = add i32 %36, 0
  %38 = getelementptr float, float* %32, i32 %37
  %39 = load float, float* %38, align 4
  %40 = fadd float %39, %28
  store float %40, float* %38, align 4
  %41 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.112* %0, i32 1, i32 0)
  %42 = mul i32 0, %41
  %43 = add i32 %42, %4
  %44 = mul i32 %43, 3
  %45 = add i32 %44, 1
  %46 = getelementptr float, float* %32, i32 %45
  %47 = load float, float* %46, align 4
  %48 = fadd float %47, %29
  store float %48, float* %46, align 4
  %49 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.112* %0, i32 1, i32 0)
  %50 = mul i32 0, %49
  %51 = add i32 %50, %4
  %52 = mul i32 %51, 3
  %53 = add i32 %52, 2
  %54 = getelementptr float, float* %32, i32 %53
  %55 = load float, float* %54, align 4
  %56 = fadd float %55, %30
  store float %56, float* %54, align 4
  %57 = fmul float %40, 0x3F6A36E2E0000000
  %58 = fmul float %48, 0x3F6A36E2E0000000
  %59 = fmul float %56, 0x3F6A36E2E0000000
  %60 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.112* %0, i32 0)
  %61 = inttoptr i64 %60 to float*
  %62 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.112* %0, i32 0, i32 0)
  %63 = mul i32 0, %62
  %64 = add i32 %63, %4
  %65 = mul i32 %64, 3
  %66 = add i32 %65, 0
  %67 = getelementptr float, float* %61, i32 %66
  %68 = load float, float* %67, align 4
  %69 = fadd float %68, %57
  store float %69, float* %67, align 4
  %70 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.112* %0, i32 0, i32 0)
  %71 = mul i32 0, %70
  %72 = add i32 %71, %4
  %73 = mul i32 %72, 3
  %74 = add i32 %73, 1
  %75 = getelementptr float, float* %61, i32 %74
  %76 = load float, float* %75, align 4
  %77 = fadd float %76, %58
  store float %77, float* %75, align 4
  %78 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.112* %0, i32 0, i32 0)
  %79 = mul i32 0, %78
  %80 = add i32 %79, %4
  %81 = mul i32 %80, 3
  %82 = add i32 %81, 2
  %83 = getelementptr float, float* %61, i32 %82
  %84 = load float, float* %83, align 4
  %85 = fadd float %84, %59
  store float %85, float* %83, align 4
  br label %final
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @RuntimeContext_get_args(%struct.RuntimeContext.112* %0, i32 %1) #0 {
  %3 = alloca %struct.RuntimeContext.112*, align 8
  %4 = alloca i32, align 4
  store %struct.RuntimeContext.112* %0, %struct.RuntimeContext.112** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.RuntimeContext.112*, %struct.RuntimeContext.112** %3, align 8
  %6 = getelementptr inbounds %struct.RuntimeContext.112, %struct.RuntimeContext.112* %5, i32 0, i32 1
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [64 x i64], [64 x i64]* %6, i64 0, i64 %8
  %10 = load i64, i64* %9, align 8
  ret i64 %10
}

; Function Attrs: alwaysinline nounwind uwtable
define internal %struct.LLVMRuntime.111* @RuntimeContext_get_runtime(%struct.RuntimeContext.112* %0) #0 {
  %2 = alloca %struct.RuntimeContext.112*, align 8
  store %struct.RuntimeContext.112* %0, %struct.RuntimeContext.112** %2, align 8
  %3 = load %struct.RuntimeContext.112*, %struct.RuntimeContext.112** %2, align 8
  %4 = getelementptr inbounds %struct.RuntimeContext.112, %struct.RuntimeContext.112* %3, i32 0, i32 0
  %5 = load %struct.LLVMRuntime.111*, %struct.LLVMRuntime.111** %4, align 8
  ret %struct.LLVMRuntime.111* %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.112* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.RuntimeContext.112*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.RuntimeContext.112* %0, %struct.RuntimeContext.112** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.RuntimeContext.112*, %struct.RuntimeContext.112** %4, align 8
  %8 = getelementptr inbounds %struct.RuntimeContext.112, %struct.RuntimeContext.112* %7, i32 0, i32 3
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
define internal i8* @get_temporary_pointer(%struct.LLVMRuntime.111* %0, i64 %1) #0 {
  %3 = alloca %struct.LLVMRuntime.111*, align 8
  %4 = alloca i64, align 8
  store %struct.LLVMRuntime.111* %0, %struct.LLVMRuntime.111** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.LLVMRuntime.111*, %struct.LLVMRuntime.111** %3, align 8
  %6 = getelementptr inbounds %struct.LLVMRuntime.111, %struct.LLVMRuntime.111* %5, i32 0, i32 17
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  ret i8* %9
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @cpu_parallel_range_for(%struct.RuntimeContext.112* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, void (%struct.RuntimeContext.112*, i8*)* %6, void (%struct.RuntimeContext.112*, i8*, i32)* %7, void (%struct.RuntimeContext.112*, i8*)* %8, i64 %9) #0 {
  %11 = alloca %struct.RuntimeContext.112*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca void (%struct.RuntimeContext.112*, i8*)*, align 8
  %18 = alloca void (%struct.RuntimeContext.112*, i8*, i32)*, align 8
  %19 = alloca void (%struct.RuntimeContext.112*, i8*)*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %0, align 8
  %22 = alloca %struct.LLVMRuntime.111*, align 8
  store %struct.RuntimeContext.112* %0, %struct.RuntimeContext.112** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store void (%struct.RuntimeContext.112*, i8*)* %6, void (%struct.RuntimeContext.112*, i8*)** %17, align 8
  store void (%struct.RuntimeContext.112*, i8*, i32)* %7, void (%struct.RuntimeContext.112*, i8*, i32)** %18, align 8
  store void (%struct.RuntimeContext.112*, i8*)* %8, void (%struct.RuntimeContext.112*, i8*)** %19, align 8
  store i64 %9, i64* %20, align 8
  call void @_ZN25range_task_helper_contextC2Ev(%0* %21) #4
  %23 = load %struct.RuntimeContext.112*, %struct.RuntimeContext.112** %11, align 8
  %24 = getelementptr inbounds %0, %0* %21, i32 0, i32 0
  store %struct.RuntimeContext.112* %23, %struct.RuntimeContext.112** %24, align 8
  %25 = load void (%struct.RuntimeContext.112*, i8*)*, void (%struct.RuntimeContext.112*, i8*)** %17, align 8
  %26 = getelementptr inbounds %0, %0* %21, i32 0, i32 1
  store void (%struct.RuntimeContext.112*, i8*)* %25, void (%struct.RuntimeContext.112*, i8*)** %26, align 8
  %27 = load i64, i64* %20, align 8
  %28 = getelementptr inbounds %0, %0* %21, i32 0, i32 4
  store i64 %27, i64* %28, align 8
  %29 = load void (%struct.RuntimeContext.112*, i8*, i32)*, void (%struct.RuntimeContext.112*, i8*, i32)** %18, align 8
  %30 = getelementptr inbounds %0, %0* %21, i32 0, i32 2
  store void (%struct.RuntimeContext.112*, i8*, i32)* %29, void (%struct.RuntimeContext.112*, i8*, i32)** %30, align 8
  %31 = load void (%struct.RuntimeContext.112*, i8*)*, void (%struct.RuntimeContext.112*, i8*)** %19, align 8
  %32 = getelementptr inbounds %0, %0* %21, i32 0, i32 3
  store void (%struct.RuntimeContext.112*, i8*)* %31, void (%struct.RuntimeContext.112*, i8*)** %32, align 8
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
  %45 = load %struct.RuntimeContext.112*, %struct.RuntimeContext.112** %11, align 8
  %46 = getelementptr inbounds %struct.RuntimeContext.112, %struct.RuntimeContext.112* %45, i32 0, i32 0
  %47 = load %struct.LLVMRuntime.111*, %struct.LLVMRuntime.111** %46, align 8
  call void @_Z13taichi_printfIJRiEEvP11LLVMRuntimePKcDpOT_(%struct.LLVMRuntime.111* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* nonnull align 4 dereferenceable(4) %15)
  call void @exit(i32 -1) #5
  unreachable

48:                                               ; preds = %41, %10
  %49 = load i32, i32* %16, align 4
  %50 = getelementptr inbounds %0, %0* %21, i32 0, i32 7
  store i32 %49, i32* %50, align 8
  %51 = load %struct.RuntimeContext.112*, %struct.RuntimeContext.112** %11, align 8
  %52 = getelementptr inbounds %struct.RuntimeContext.112, %struct.RuntimeContext.112* %51, i32 0, i32 0
  %53 = load %struct.LLVMRuntime.111*, %struct.LLVMRuntime.111** %52, align 8
  store %struct.LLVMRuntime.111* %53, %struct.LLVMRuntime.111** %22, align 8
  %54 = load %struct.LLVMRuntime.111*, %struct.LLVMRuntime.111** %22, align 8
  %55 = getelementptr inbounds %struct.LLVMRuntime.111, %struct.LLVMRuntime.111* %54, i32 0, i32 12
  %56 = load void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)** %55, align 8
  %57 = load %struct.LLVMRuntime.111*, %struct.LLVMRuntime.111** %22, align 8
  %58 = getelementptr inbounds %struct.LLVMRuntime.111, %struct.LLVMRuntime.111* %57, i32 0, i32 11
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
define internal void @_ZN25range_task_helper_contextC2Ev(%0* %0) unnamed_addr #0 align 2 {
  %2 = alloca %0*, align 8
  store %0* %0, %0** %2, align 8
  %3 = load %0*, %0** %2, align 8
  %4 = getelementptr inbounds %0, %0* %3, i32 0, i32 1
  store void (%struct.RuntimeContext.112*, i8*)* null, void (%struct.RuntimeContext.112*, i8*)** %4, align 8
  %5 = getelementptr inbounds %0, %0* %3, i32 0, i32 2
  store void (%struct.RuntimeContext.112*, i8*, i32)* null, void (%struct.RuntimeContext.112*, i8*, i32)** %5, align 8
  %6 = getelementptr inbounds %0, %0* %3, i32 0, i32 3
  store void (%struct.RuntimeContext.112*, i8*)* null, void (%struct.RuntimeContext.112*, i8*)** %6, align 8
  %7 = getelementptr inbounds %0, %0* %3, i32 0, i32 4
  store i64 1, i64* %7, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_Z13taichi_printfIJRiEEvP11LLVMRuntimePKcDpOT_(%struct.LLVMRuntime.111* %0, i8* %1, i32* nonnull align 4 dereferenceable(4) %2) #0 {
  %4 = alloca %struct.LLVMRuntime.111*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.LLVMRuntime.111* %0, %struct.LLVMRuntime.111** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.LLVMRuntime.111*, %struct.LLVMRuntime.111** %4, align 8
  %8 = getelementptr inbounds %struct.LLVMRuntime.111, %struct.LLVMRuntime.111* %7, i32 0, i32 6
  %9 = load void (i8*, ...)*, void (i8*, ...)** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  call void (i8*, ...) %9(i8* %10, i32 %12)
  ret void
}

; Function Attrs: alwaysinline noreturn nounwind
declare dso_local void @exit(i32) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal void @cpu_parallel_range_for_task(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %0, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.RuntimeContext.112, align 8
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
  %30 = load void (%struct.RuntimeContext.112*, i8*)*, void (%struct.RuntimeContext.112*, i8*)** %29, align 8
  %31 = icmp ne void (%struct.RuntimeContext.112*, i8*)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = getelementptr inbounds %0, %0* %7, i32 0, i32 1
  %34 = load void (%struct.RuntimeContext.112*, i8*)*, void (%struct.RuntimeContext.112*, i8*)** %33, align 8
  %35 = getelementptr inbounds %0, %0* %7, i32 0, i32 0
  %36 = load %struct.RuntimeContext.112*, %struct.RuntimeContext.112** %35, align 8
  %37 = load i8*, i8** %10, align 8
  call void %34(%struct.RuntimeContext.112* %36, i8* %37)
  br label %38

38:                                               ; preds = %32, %3
  %39 = getelementptr inbounds %0, %0* %7, i32 0, i32 0
  %40 = load %struct.RuntimeContext.112*, %struct.RuntimeContext.112** %39, align 8
  %41 = bitcast %struct.RuntimeContext.112* %11 to i8*
  %42 = bitcast %struct.RuntimeContext.112* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 3224, i1 false)
  %43 = load i32, i32* %5, align 4
  %44 = getelementptr inbounds %struct.RuntimeContext.112, %struct.RuntimeContext.112* %11, i32 0, i32 4
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
  %70 = load void (%struct.RuntimeContext.112*, i8*, i32)*, void (%struct.RuntimeContext.112*, i8*, i32)** %69, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %15, align 4
  call void %70(%struct.RuntimeContext.112* %11, i8* %71, i32 %72)
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
  %104 = load void (%struct.RuntimeContext.112*, i8*, i32)*, void (%struct.RuntimeContext.112*, i8*, i32)** %103, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* %19, align 4
  call void %104(%struct.RuntimeContext.112* %11, i8* %105, i32 %106)
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
  %114 = load void (%struct.RuntimeContext.112*, i8*)*, void (%struct.RuntimeContext.112*, i8*)** %113, align 8
  %115 = icmp ne void (%struct.RuntimeContext.112*, i8*)* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = getelementptr inbounds %0, %0* %7, i32 0, i32 3
  %118 = load void (%struct.RuntimeContext.112*, i8*)*, void (%struct.RuntimeContext.112*, i8*)** %117, align 8
  %119 = getelementptr inbounds %0, %0* %7, i32 0, i32 0
  %120 = load %struct.RuntimeContext.112*, %struct.RuntimeContext.112** %119, align 8
  %121 = load i8*, i8** %10, align 8
  call void %118(%struct.RuntimeContext.112* %120, i8* %121)
  br label %122

122:                                              ; preds = %116, %112
  %123 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %123)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

; Function Attrs: alwaysinline nounwind uwtable
define internal nonnull align 4 dereferenceable(4) i32* @_ZSt3minIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %0, i32* nonnull align 4 dereferenceable(4) %1) #0 {
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
define internal nonnull align 4 dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* nonnull align 4 dereferenceable(4) %0, i32* nonnull align 4 dereferenceable(4) %1) #0 {
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
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Ubuntu clang version 11.1.0-6"}
!1 = !{i32 1, !"wchar_size", i32 4}
