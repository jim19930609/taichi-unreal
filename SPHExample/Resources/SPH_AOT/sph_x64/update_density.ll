; ModuleID = 'kernel'
source_filename = "kernel"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RuntimeContext = type { ptr, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], ptr, i64 }
%struct.LLVMRuntime = type { i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [512 x ptr], [512 x i64], ptr, ptr, [1024 x ptr], [1024 x ptr], ptr, [1024 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, [2048 x i8], [32 x i64], i32, i64, ptr, i32, i32, i64, ptr }
%struct.range_task_helper_context = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32 }

@.str.2 = private unnamed_addr constant [21 x i8] c"step must not be %d\0A\00", align 1

define void @update_density_c78_0_kernel_0_serial(ptr %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %1 = call ptr @RuntimeContext_get_runtime(ptr %context)
  %2 = call ptr @get_temporary_pointer(ptr %1, i64 0)
  store i32 %0, ptr %2, align 4
  br label %final
}

define void @update_density_c78_0_kernel_1_range_for(ptr %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call ptr @RuntimeContext_get_runtime(ptr %context)
  %1 = call ptr @get_temporary_pointer(ptr %0, i64 0)
  %2 = load i32, ptr %1, align 4
  call void @cpu_parallel_range_for(ptr %context, i32 16, i32 0, i32 %2, i32 1, i32 512, ptr null, ptr @function_body, ptr null, i64 1)
  br label %final
}

define internal void @function_body(ptr %0, ptr %1, i32 %2) {
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
  store i32 %2, ptr %3, align 4
  %7 = load i32, ptr %3, align 4
  %8 = call i64 @RuntimeContext_get_args(ptr %0, i32 1)
  %9 = inttoptr i64 %8 to ptr
  %10 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %11 = mul i32 0, %10
  %12 = add i32 %11, %7
  %13 = getelementptr float, ptr %9, i32 %12
  %14 = call i64 @RuntimeContext_get_args(ptr %0, i32 0)
  %15 = inttoptr i64 %14 to ptr
  %16 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %17 = mul i32 0, %16
  %18 = add i32 %17, %7
  %19 = mul i32 %18, 3
  %20 = add i32 %19, 0
  %21 = getelementptr float, ptr %15, i32 %20
  %22 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %23 = mul i32 0, %22
  %24 = add i32 %23, %7
  %25 = mul i32 %24, 3
  %26 = add i32 %25, 1
  %27 = getelementptr float, ptr %15, i32 %26
  %28 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %29 = mul i32 0, %28
  %30 = add i32 %29, %7
  %31 = mul i32 %30, 3
  %32 = add i32 %31, 2
  %33 = getelementptr float, ptr %15, i32 %32
  %34 = call ptr @RuntimeContext_get_runtime(ptr %0)
  %35 = call ptr @get_temporary_pointer(ptr %34, i64 0)
  %36 = load i32, ptr %35, align 4
  store float 0.000000e+00, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %for_loop_test

for_loop_body:                                    ; preds = %for_loop_test
  %37 = load i32, ptr %5, align 4
  %38 = load float, ptr %21, align 4
  %39 = load float, ptr %27, align 4
  %40 = load float, ptr %33, align 4
  %41 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %42 = mul i32 0, %41
  %43 = add i32 %42, %37
  %44 = mul i32 %43, 3
  %45 = add i32 %44, 0
  %46 = getelementptr float, ptr %15, i32 %45
  %47 = load float, ptr %46, align 4
  %48 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %49 = mul i32 0, %48
  %50 = add i32 %49, %37
  %51 = mul i32 %50, 3
  %52 = add i32 %51, 1
  %53 = getelementptr float, ptr %15, i32 %52
  %54 = load float, ptr %53, align 4
  %55 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %56 = mul i32 0, %55
  %57 = add i32 %56, %37
  %58 = mul i32 %57, 3
  %59 = add i32 %58, 2
  %60 = getelementptr float, ptr %15, i32 %59
  %61 = load float, ptr %60, align 4
  %62 = fsub float %38, %47
  %63 = fsub float %39, %54
  %64 = fsub float %40, %61
  %65 = fmul float %62, %62
  %66 = fmul float %63, %63
  %67 = fmul float %64, %64
  %68 = fadd float %65, %66
  %69 = fadd float %68, %67
  %70 = call float @llvm.sqrt.f32(float %69)
  store float 0.000000e+00, ptr %6, align 4
  %71 = fcmp ole float %70, 0x3FA47AE140000000
  %72 = sext i1 %71 to i32
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %true_block, label %false_block

for_loop_inc:                                     ; preds = %after_if
  %75 = load i32, ptr %5, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %5, align 4
  br label %for_loop_test

after_for:                                        ; preds = %for_loop_test
  %77 = load float, ptr %4, align 4
  store float %77, ptr %13, align 4
  %78 = fmul float %77, 0x3F50624DE0000000
  %79 = fsub float %78, 1.000000e+00
  %80 = call float @llvm.maxnum.f32(float %79, float 0.000000e+00)
  %81 = fmul float %80, 1.000000e+04
  %82 = call i64 @RuntimeContext_get_args(ptr %0, i32 2)
  %83 = inttoptr i64 %82 to ptr
  %84 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %85 = mul i32 0, %84
  %86 = add i32 %85, %7
  %87 = getelementptr float, ptr %83, i32 %86
  store float %81, ptr %87, align 4
  br label %final

for_loop_test:                                    ; preds = %for_loop_inc, %function_body
  %88 = load i32, ptr %5, align 4
  %89 = icmp slt i32 %88, %36
  br i1 %89, label %for_loop_body, label %after_for

true_block:                                       ; preds = %for_loop_body
  %90 = fmul float %70, %70
  %91 = fsub float 0x3F5A36E2E0000000, %90
  %92 = fmul float %91, 0x4295BDF8A0000000
  %93 = fmul float %92, %91
  %94 = fmul float %93, %91
  store float %94, ptr %6, align 4
  br label %after_if

false_block:                                      ; preds = %for_loop_body
  br label %after_if

after_if:                                         ; preds = %false_block, %true_block
  %95 = load float, ptr %6, align 4
  %96 = fmul float %95, 0x3F7A36E2E0000000
  %97 = load float, ptr %4, align 4
  %98 = fadd float %97, %96
  store float %98, ptr %4, align 4
  br label %for_loop_inc
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #0

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i64 @RuntimeContext_get_args(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.RuntimeContext, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [64 x i64], ptr %6, i64 0, i64 %8
  %10 = load i64, ptr %9, align 8
  ret i64 %10
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal ptr @RuntimeContext_get_runtime(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.RuntimeContext, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @RuntimeContext_get_extra_args(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.RuntimeContext, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [32 x [12 x i32]], ptr %8, i64 0, i64 %10
  %12 = load i32, ptr %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [12 x i32], ptr %11, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  ret i32 %15
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal ptr @get_temporary_pointer(ptr noundef %0, i64 noundef %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.LLVMRuntime, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  ret ptr %9
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @cpu_parallel_range_for(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9) #1 {
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.range_task_helper_context, align 8
  %22 = alloca ptr, align 8
  store ptr %0, ptr %11, align 8
  store i32 %1, ptr %12, align 4
  store i32 %2, ptr %13, align 4
  store i32 %3, ptr %14, align 4
  store i32 %4, ptr %15, align 4
  store i32 %5, ptr %16, align 4
  store ptr %6, ptr %17, align 8
  store ptr %7, ptr %18, align 8
  store ptr %8, ptr %19, align 8
  store i64 %9, ptr %20, align 8
  call void @_ZN25range_task_helper_contextC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %21) #6
  %23 = load ptr, ptr %11, align 8
  %24 = getelementptr inbounds %struct.range_task_helper_context, ptr %21, i32 0, i32 0
  store ptr %23, ptr %24, align 8
  %25 = load ptr, ptr %17, align 8
  %26 = getelementptr inbounds %struct.range_task_helper_context, ptr %21, i32 0, i32 1
  store ptr %25, ptr %26, align 8
  %27 = load i64, ptr %20, align 8
  %28 = getelementptr inbounds %struct.range_task_helper_context, ptr %21, i32 0, i32 4
  store i64 %27, ptr %28, align 8
  %29 = load ptr, ptr %18, align 8
  %30 = getelementptr inbounds %struct.range_task_helper_context, ptr %21, i32 0, i32 2
  store ptr %29, ptr %30, align 8
  %31 = load ptr, ptr %19, align 8
  %32 = getelementptr inbounds %struct.range_task_helper_context, ptr %21, i32 0, i32 3
  store ptr %31, ptr %32, align 8
  %33 = load i32, ptr %13, align 4
  %34 = getelementptr inbounds %struct.range_task_helper_context, ptr %21, i32 0, i32 5
  store i32 %33, ptr %34, align 8
  %35 = load i32, ptr %14, align 4
  %36 = getelementptr inbounds %struct.range_task_helper_context, ptr %21, i32 0, i32 6
  store i32 %35, ptr %36, align 4
  %37 = load i32, ptr %15, align 4
  %38 = getelementptr inbounds %struct.range_task_helper_context, ptr %21, i32 0, i32 8
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %15, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %10
  %42 = load i32, ptr %15, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load ptr, ptr %11, align 8
  %46 = getelementptr inbounds %struct.RuntimeContext, ptr %45, i32 0, i32 0
  %47 = load ptr, ptr %46, align 8
  call void @_Z13taichi_printfIJRiEEvP11LLVMRuntimePKcDpOT_(ptr noundef %47, ptr noundef @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %15)
  call void @exit(i32 noundef -1) #7
  unreachable

48:                                               ; preds = %41, %10
  %49 = load i32, ptr %16, align 4
  %50 = getelementptr inbounds %struct.range_task_helper_context, ptr %21, i32 0, i32 7
  store i32 %49, ptr %50, align 8
  %51 = load ptr, ptr %11, align 8
  %52 = getelementptr inbounds %struct.RuntimeContext, ptr %51, i32 0, i32 0
  %53 = load ptr, ptr %52, align 8
  store ptr %53, ptr %22, align 8
  %54 = load ptr, ptr %22, align 8
  %55 = getelementptr inbounds %struct.LLVMRuntime, ptr %54, i32 0, i32 12
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr %22, align 8
  %58 = getelementptr inbounds %struct.LLVMRuntime, ptr %57, i32 0, i32 11
  %59 = load ptr, ptr %58, align 8
  %60 = load i32, ptr %14, align 4
  %61 = load i32, ptr %13, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, ptr %16, align 4
  %64 = add nsw i32 %62, %63
  %65 = sub nsw i32 %64, 1
  %66 = load i32, ptr %16, align 4
  %67 = sdiv i32 %65, %66
  %68 = load i32, ptr %12, align 4
  call void %56(ptr noundef %59, i32 noundef %67, i32 noundef %68, ptr noundef %21, ptr noundef @cpu_parallel_range_for_task)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_ZN25range_task_helper_contextC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.range_task_helper_context, ptr %3, i32 0, i32 1
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %struct.range_task_helper_context, ptr %3, i32 0, i32 2
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %struct.range_task_helper_context, ptr %3, i32 0, i32 3
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %struct.range_task_helper_context, ptr %3, i32 0, i32 4
  store i64 1, ptr %7, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @_Z13taichi_printfIJRiEEvP11LLVMRuntimePKcDpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.LLVMRuntime, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load i32, ptr %11, align 4
  call void (ptr, ...) %9(ptr noundef %10, i32 noundef %12)
  ret void
}

; Function Attrs: alwaysinline noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @cpu_parallel_range_for_task(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.range_task_helper_context, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.RuntimeContext, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %20 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %20, i64 56, i1 false)
  %21 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 4
  %22 = load i64, ptr %21, align 8
  %23 = call ptr @llvm.stacksave()
  store ptr %23, ptr %8, align 8
  %24 = alloca i8, i64 %22, align 8
  store i64 %22, ptr %9, align 8
  %25 = getelementptr inbounds i8, ptr %24, i64 0
  store ptr %25, ptr %10, align 8
  %26 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = icmp ne ptr %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 0
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %10, align 8
  call void %31(ptr noundef %33, ptr noundef %34)
  br label %35

35:                                               ; preds = %29, %3
  %36 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %37, i64 3232, i1 false)
  %38 = load i32, ptr %5, align 4
  %39 = getelementptr inbounds %struct.RuntimeContext, ptr %11, i32 0, i32 4
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %72

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = load i32, ptr %6, align 4
  %47 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 7
  %48 = load i32, ptr %47, align 8
  %49 = mul nsw i32 %46, %48
  %50 = add nsw i32 %45, %49
  store i32 %50, ptr %12, align 4
  %51 = load i32, ptr %12, align 4
  %52 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 7
  %53 = load i32, ptr %52, align 8
  %54 = add nsw i32 %51, %53
  store i32 %54, ptr %14, align 4
  %55 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 6
  %56 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %14, ptr noundef nonnull align 4 dereferenceable(4) %55)
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %13, align 4
  %58 = load i32, ptr %12, align 4
  store i32 %58, ptr %15, align 4
  br label %59

59:                                               ; preds = %68, %43
  %60 = load i32, ptr %15, align 4
  %61 = load i32, ptr %13, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = load ptr, ptr %10, align 8
  %67 = load i32, ptr %15, align 4
  call void %65(ptr noundef %11, ptr noundef %66, i32 noundef %67)
  br label %68

68:                                               ; preds = %63
  %69 = load i32, ptr %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %15, align 4
  br label %59, !llvm.loop !6

71:                                               ; preds = %59
  br label %107

72:                                               ; preds = %35
  %73 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 8
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %106

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = load i32, ptr %6, align 4
  %80 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 7
  %81 = load i32, ptr %80, align 8
  %82 = mul nsw i32 %79, %81
  %83 = sub nsw i32 %78, %82
  store i32 %83, ptr %16, align 4
  %84 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 5
  %85 = load i32, ptr %16, align 4
  %86 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 7
  %87 = load i32, ptr %86, align 8
  %88 = mul nsw i32 %85, %87
  store i32 %88, ptr %18, align 4
  %89 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %84, ptr noundef nonnull align 4 dereferenceable(4) %18)
  %90 = load i32, ptr %89, align 4
  store i32 %90, ptr %17, align 4
  %91 = load i32, ptr %16, align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, ptr %19, align 4
  br label %93

93:                                               ; preds = %102, %76
  %94 = load i32, ptr %19, align 4
  %95 = load i32, ptr %17, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  %100 = load ptr, ptr %10, align 8
  %101 = load i32, ptr %19, align 4
  call void %99(ptr noundef %11, ptr noundef %100, i32 noundef %101)
  br label %102

102:                                              ; preds = %97
  %103 = load i32, ptr %19, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, ptr %19, align 4
  br label %93, !llvm.loop !8

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %72
  br label %107

107:                                              ; preds = %106, %71
  %108 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 3
  %109 = load ptr, ptr %108, align 8
  %110 = icmp ne ptr %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 3
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.range_task_helper_context, ptr %7, i32 0, i32 0
  %115 = load ptr, ptr %114, align 8
  %116 = load ptr, ptr %10, align 8
  call void %113(ptr noundef %115, ptr noundef %116)
  br label %117

117:                                              ; preds = %111, %107
  %118 = load ptr, ptr %8, align 8
  call void @llvm.stackrestore(ptr %118)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #5

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  store ptr %12, ptr %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  store ptr %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8
  ret ptr %16
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  store ptr %12, ptr %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  store ptr %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %3, align 8
  ret ptr %16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #5

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { alwaysinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5}

!0 = !{!"Ubuntu clang version 15.0.6"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
