; ModuleID = 'kernel'
source_filename = "kernel"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RuntimeContext = type { ptr, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], ptr, i64 }
%struct.LLVMRuntime = type { i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [512 x ptr], [512 x i64], ptr, ptr, [1024 x ptr], [1024 x ptr], ptr, [1024 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, [2048 x i8], [32 x i64], i32, i64, ptr, i32, i32, i64, ptr }
%struct.range_task_helper_context = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32 }

@.str.2 = private unnamed_addr constant [21 x i8] c"step must not be %d\0A\00", align 1

define void @advance_c82_0_kernel_0_serial(ptr %context) {
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

define void @advance_c82_0_kernel_1_range_for(ptr %context) {
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
  br label %entry

final:                                            ; preds = %function_body
  ret void

entry:                                            ; preds = %allocs
  br label %function_body

function_body:                                    ; preds = %entry
  store i32 %2, ptr %3, align 4
  %4 = load i32, ptr %3, align 4
  %5 = call i64 @RuntimeContext_get_args(ptr %0, i32 2)
  %6 = inttoptr i64 %5 to ptr
  %7 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %8 = mul i32 0, %7
  %9 = add i32 %8, %4
  %10 = mul i32 %9, 3
  %11 = add i32 %10, 0
  %12 = getelementptr float, ptr %6, i32 %11
  %13 = load float, ptr %12, align 4
  %14 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %15 = mul i32 0, %14
  %16 = add i32 %15, %4
  %17 = mul i32 %16, 3
  %18 = add i32 %17, 1
  %19 = getelementptr float, ptr %6, i32 %18
  %20 = load float, ptr %19, align 4
  %21 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %22 = mul i32 0, %21
  %23 = add i32 %22, %4
  %24 = mul i32 %23, 3
  %25 = add i32 %24, 2
  %26 = getelementptr float, ptr %6, i32 %25
  %27 = load float, ptr %26, align 4
  %28 = fmul float %13, 0x3F6A36E2E0000000
  %29 = fmul float %20, 0x3F6A36E2E0000000
  %30 = fmul float %27, 0x3F6A36E2E0000000
  %31 = call i64 @RuntimeContext_get_args(ptr %0, i32 1)
  %32 = inttoptr i64 %31 to ptr
  %33 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %34 = mul i32 0, %33
  %35 = add i32 %34, %4
  %36 = mul i32 %35, 3
  %37 = add i32 %36, 0
  %38 = getelementptr float, ptr %32, i32 %37
  %39 = load float, ptr %38, align 4
  %40 = fadd float %39, %28
  store float %40, ptr %38, align 4
  %41 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %42 = mul i32 0, %41
  %43 = add i32 %42, %4
  %44 = mul i32 %43, 3
  %45 = add i32 %44, 1
  %46 = getelementptr float, ptr %32, i32 %45
  %47 = load float, ptr %46, align 4
  %48 = fadd float %47, %29
  store float %48, ptr %46, align 4
  %49 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %50 = mul i32 0, %49
  %51 = add i32 %50, %4
  %52 = mul i32 %51, 3
  %53 = add i32 %52, 2
  %54 = getelementptr float, ptr %32, i32 %53
  %55 = load float, ptr %54, align 4
  %56 = fadd float %55, %30
  store float %56, ptr %54, align 4
  %57 = fmul float %40, 0x3F6A36E2E0000000
  %58 = fmul float %48, 0x3F6A36E2E0000000
  %59 = fmul float %56, 0x3F6A36E2E0000000
  %60 = call i64 @RuntimeContext_get_args(ptr %0, i32 0)
  %61 = inttoptr i64 %60 to ptr
  %62 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %63 = mul i32 0, %62
  %64 = add i32 %63, %4
  %65 = mul i32 %64, 3
  %66 = add i32 %65, 0
  %67 = getelementptr float, ptr %61, i32 %66
  %68 = load float, ptr %67, align 4
  %69 = fadd float %68, %57
  store float %69, ptr %67, align 4
  %70 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %71 = mul i32 0, %70
  %72 = add i32 %71, %4
  %73 = mul i32 %72, 3
  %74 = add i32 %73, 1
  %75 = getelementptr float, ptr %61, i32 %74
  %76 = load float, ptr %75, align 4
  %77 = fadd float %76, %58
  store float %77, ptr %75, align 4
  %78 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %79 = mul i32 0, %78
  %80 = add i32 %79, %4
  %81 = mul i32 %80, 3
  %82 = add i32 %81, 2
  %83 = getelementptr float, ptr %61, i32 %82
  %84 = load float, ptr %83, align 4
  %85 = fadd float %84, %59
  store float %85, ptr %83, align 4
  br label %final
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i64 @RuntimeContext_get_args(ptr noundef %0, i32 noundef %1) #0 {
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
define internal ptr @RuntimeContext_get_runtime(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.RuntimeContext, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @RuntimeContext_get_extra_args(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
define internal ptr @get_temporary_pointer(ptr noundef %0, i64 noundef %1) #0 {
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
define internal void @cpu_parallel_range_for(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9) #0 {
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
  call void @_ZN25range_task_helper_contextC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %21) #5
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
  call void @exit(i32 noundef -1) #6
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
define internal void @_ZN25range_task_helper_contextC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 {
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
define internal void @_Z13taichi_printfIJRiEEvP11LLVMRuntimePKcDpOT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #0 {
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
declare void @exit(i32 noundef) #2

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal void @cpu_parallel_range_for_task(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #4

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 {
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
define internal noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3maxIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 {
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
declare void @llvm.stackrestore(ptr) #4

attributes #0 = { alwaysinline mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { alwaysinline noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
