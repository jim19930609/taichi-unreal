; ModuleID = 'kernel'
source_filename = "kernel"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext.40 = type { %struct.LLVMRuntime.39*, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], i64* }
%struct.LLVMRuntime.39 = type { i8, i64, i8*, i8*, i8* (i8*, i64, i64)*, void (i8*)*, void (i8*, ...)*, i32 (i8*, i64, i8*, %struct.__va_list_tag.33*)*, i8*, [512 x i8*], [512 x i64], i8*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, [1024 x %struct.ListManager.34*], [1024 x %struct.NodeManager.35*], %struct.NodeManager.35*, [1024 x i8*], i8*, %struct.RandState.36*, %struct.MemRequestQueue.38*, i8*, void (i8*, i8*)*, void (i8*)*, [2048 x i8], [32 x i64], i32, i64, i8*, i32, i32, i64, i8* }
%struct.__va_list_tag.33 = type { i32, i32, i8*, i8* }
%struct.ListManager.34 = type { [131072 x i8*], i64, i64, i32, i32, i32, %struct.LLVMRuntime.39* }
%struct.NodeManager.35 = type <{ %struct.LLVMRuntime.39*, i32, i32, i32, i32, %struct.ListManager.34*, %struct.ListManager.34*, %struct.ListManager.34*, i32, [4 x i8] }>
%struct.RandState.36 = type { i32, i32, i32, i32, i32 }
%struct.MemRequestQueue.38 = type { [65536 x %struct.MemRequest.37], i32, i32 }
%struct.MemRequest.37 = type { i64, i64, i8*, i64 }

define void @update_density_c78_0_kernel_1_serial(%struct.RuntimeContext.40* byval(%struct.RuntimeContext.40) %context) {
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

define void @update_density_c78_0_kernel_0_range_for(%struct.RuntimeContext.40* byval(%struct.RuntimeContext.40) %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call %struct.LLVMRuntime.39* @RuntimeContext_get_runtime(%struct.RuntimeContext.40* %context)
  %1 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.39* %0, i64 0)
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  call void @gpu_parallel_range_for(%struct.RuntimeContext.40* %context, i32 0, i32 %3, void (%struct.RuntimeContext.40*, i8*)* null, void (%struct.RuntimeContext.40*, i8*, i32)* @function_body, void (%struct.RuntimeContext.40*, i8*)* null, i64 1)
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
  %71 = call float @__nv_sqrtf(float %70)
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
define internal void @gpu_parallel_range_for(%struct.RuntimeContext.40* %0, i32 %1, i32 %2, void (%struct.RuntimeContext.40*, i8*)* %3, void (%struct.RuntimeContext.40*, i8*, i32)* %4, void (%struct.RuntimeContext.40*, i8*)* %5, i64 %6) #1 {
  %8 = alloca %struct.RuntimeContext.40*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.RuntimeContext.40*, i8*)*, align 8
  %12 = alloca void (%struct.RuntimeContext.40*, i8*, i32)*, align 8
  %13 = alloca void (%struct.RuntimeContext.40*, i8*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.RuntimeContext.40* %0, %struct.RuntimeContext.40** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store void (%struct.RuntimeContext.40*, i8*)* %3, void (%struct.RuntimeContext.40*, i8*)** %11, align 8
  store void (%struct.RuntimeContext.40*, i8*, i32)* %4, void (%struct.RuntimeContext.40*, i8*, i32)** %12, align 8
  store void (%struct.RuntimeContext.40*, i8*)* %5, void (%struct.RuntimeContext.40*, i8*)** %13, align 8
  store i64 %6, i64* %14, align 8
  %19 = call i32 @thread_idx()
  %20 = call i32 @block_dim()
  %21 = call i32 @block_idx()
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %19, %22
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %15, align 4
  %26 = load i64, i64* %14, align 8
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %16, align 8
  %28 = alloca i8, i64 %26, align 8
  store i64 %26, i64* %17, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8* %29, i8** %18, align 8
  %30 = load void (%struct.RuntimeContext.40*, i8*)*, void (%struct.RuntimeContext.40*, i8*)** %11, align 8
  %31 = icmp ne void (%struct.RuntimeContext.40*, i8*)* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = load void (%struct.RuntimeContext.40*, i8*)*, void (%struct.RuntimeContext.40*, i8*)** %11, align 8
  %34 = load %struct.RuntimeContext.40*, %struct.RuntimeContext.40** %8, align 8
  %35 = load i8*, i8** %18, align 8
  call void %33(%struct.RuntimeContext.40* %34, i8* %35)
  br label %36

36:                                               ; preds = %32, %7
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load void (%struct.RuntimeContext.40*, i8*, i32)*, void (%struct.RuntimeContext.40*, i8*, i32)** %12, align 8
  %43 = load %struct.RuntimeContext.40*, %struct.RuntimeContext.40** %8, align 8
  %44 = load i8*, i8** %18, align 8
  %45 = load i32, i32* %15, align 4
  call void %42(%struct.RuntimeContext.40* %43, i8* %44, i32 %45)
  %46 = call i32 @block_dim()
  %47 = call i32 @grid_dim()
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %15, align 4
  br label %37

51:                                               ; preds = %37
  %52 = load void (%struct.RuntimeContext.40*, i8*)*, void (%struct.RuntimeContext.40*, i8*)** %13, align 8
  %53 = icmp ne void (%struct.RuntimeContext.40*, i8*)* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load void (%struct.RuntimeContext.40*, i8*)*, void (%struct.RuntimeContext.40*, i8*)** %13, align 8
  %56 = load %struct.RuntimeContext.40*, %struct.RuntimeContext.40** %8, align 8
  %57 = load i8*, i8** %18, align 8
  call void %55(%struct.RuntimeContext.40* %56, i8* %57)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @thread_idx() #1 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @block_dim() #1 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @block_idx() #1 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @grid_dim() #1 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x()
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #0

; Function Attrs: alwaysinline inlinehint
define internal float @__nv_sqrtf(float %x) #3 {
  %1 = call float @llvm.nvvm.sqrt.f(float %x)
  ret float %1
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare float @llvm.nvvm.sqrt.f(float) #4

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { alwaysinline inlinehint }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }

!nvvm.annotations = !{!0, !1, !2, !3, !4, !5, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8}
!llvm.ident = !{!10}
!nvvmir.version = !{!11}
!llvm.module.flags = !{!12}

!0 = !{void (%struct.RuntimeContext.40*)* @update_density_c78_0_kernel_1_serial, !"kernel", i32 1}
!1 = !{void (%struct.RuntimeContext.40*)* @update_density_c78_0_kernel_1_serial, !"maxntidx", i32 1}
!2 = !{void (%struct.RuntimeContext.40*)* @update_density_c78_0_kernel_1_serial, !"minctasm", i32 2}
!3 = !{void (%struct.RuntimeContext.40*)* @update_density_c78_0_kernel_0_range_for, !"kernel", i32 1}
!4 = !{void (%struct.RuntimeContext.40*)* @update_density_c78_0_kernel_0_range_for, !"maxntidx", i32 128}
!5 = !{void (%struct.RuntimeContext.40*)* @update_density_c78_0_kernel_0_range_for, !"minctasm", i32 2}
!6 = !{null, !"align", i32 8}
!7 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!8 = !{null, !"align", i32 16}
!9 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!10 = !{!"Ubuntu clang version 11.1.0-6"}
!11 = !{i32 1, i32 4}
!12 = !{i32 1, !"wchar_size", i32 4}
