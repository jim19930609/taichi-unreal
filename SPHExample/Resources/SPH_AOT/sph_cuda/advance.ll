; ModuleID = 'kernel'
source_filename = "kernel"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext.112 = type { %struct.LLVMRuntime.111*, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], i64* }
%struct.LLVMRuntime.111 = type { i8, i64, i8*, i8*, i8* (i8*, i64, i64)*, void (i8*)*, void (i8*, ...)*, i32 (i8*, i64, i8*, %struct.__va_list_tag.105*)*, i8*, [512 x i8*], [512 x i64], i8*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, [1024 x %struct.ListManager.106*], [1024 x %struct.NodeManager.107*], %struct.NodeManager.107*, [1024 x i8*], i8*, %struct.RandState.108*, %struct.MemRequestQueue.110*, i8*, void (i8*, i8*)*, void (i8*)*, [2048 x i8], [32 x i64], i32, i64, i8*, i32, i32, i64, i8* }
%struct.__va_list_tag.105 = type { i32, i32, i8*, i8* }
%struct.ListManager.106 = type { [131072 x i8*], i64, i64, i32, i32, i32, %struct.LLVMRuntime.111* }
%struct.NodeManager.107 = type <{ %struct.LLVMRuntime.111*, i32, i32, i32, i32, %struct.ListManager.106*, %struct.ListManager.106*, %struct.ListManager.106*, i32, [4 x i8] }>
%struct.RandState.108 = type { i32, i32, i32, i32, i32 }
%struct.MemRequestQueue.110 = type { [65536 x %struct.MemRequest.109], i32, i32 }
%struct.MemRequest.109 = type { i64, i64, i8*, i64 }

define void @advance_c82_0_kernel_0_serial(%struct.RuntimeContext.112* byval(%struct.RuntimeContext.112) %context) {
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

define void @advance_c82_0_kernel_1_range_for(%struct.RuntimeContext.112* byval(%struct.RuntimeContext.112) %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call %struct.LLVMRuntime.111* @RuntimeContext_get_runtime(%struct.RuntimeContext.112* %context)
  %1 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.111* %0, i64 0)
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  call void @gpu_parallel_range_for(%struct.RuntimeContext.112* %context, i32 0, i32 %3, void (%struct.RuntimeContext.112*, i8*)* null, void (%struct.RuntimeContext.112*, i8*, i32)* @function_body, void (%struct.RuntimeContext.112*, i8*)* null, i64 1)
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
define internal void @gpu_parallel_range_for(%struct.RuntimeContext.112* %0, i32 %1, i32 %2, void (%struct.RuntimeContext.112*, i8*)* %3, void (%struct.RuntimeContext.112*, i8*, i32)* %4, void (%struct.RuntimeContext.112*, i8*)* %5, i64 %6) #0 {
  %8 = alloca %struct.RuntimeContext.112*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.RuntimeContext.112*, i8*)*, align 8
  %12 = alloca void (%struct.RuntimeContext.112*, i8*, i32)*, align 8
  %13 = alloca void (%struct.RuntimeContext.112*, i8*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.RuntimeContext.112* %0, %struct.RuntimeContext.112** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store void (%struct.RuntimeContext.112*, i8*)* %3, void (%struct.RuntimeContext.112*, i8*)** %11, align 8
  store void (%struct.RuntimeContext.112*, i8*, i32)* %4, void (%struct.RuntimeContext.112*, i8*, i32)** %12, align 8
  store void (%struct.RuntimeContext.112*, i8*)* %5, void (%struct.RuntimeContext.112*, i8*)** %13, align 8
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
  %30 = load void (%struct.RuntimeContext.112*, i8*)*, void (%struct.RuntimeContext.112*, i8*)** %11, align 8
  %31 = icmp ne void (%struct.RuntimeContext.112*, i8*)* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = load void (%struct.RuntimeContext.112*, i8*)*, void (%struct.RuntimeContext.112*, i8*)** %11, align 8
  %34 = load %struct.RuntimeContext.112*, %struct.RuntimeContext.112** %8, align 8
  %35 = load i8*, i8** %18, align 8
  call void %33(%struct.RuntimeContext.112* %34, i8* %35)
  br label %36

36:                                               ; preds = %32, %7
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load void (%struct.RuntimeContext.112*, i8*, i32)*, void (%struct.RuntimeContext.112*, i8*, i32)** %12, align 8
  %43 = load %struct.RuntimeContext.112*, %struct.RuntimeContext.112** %8, align 8
  %44 = load i8*, i8** %18, align 8
  %45 = load i32, i32* %15, align 4
  call void %42(%struct.RuntimeContext.112* %43, i8* %44, i32 %45)
  %46 = call i32 @block_dim()
  %47 = call i32 @grid_dim()
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %15, align 4
  br label %37

51:                                               ; preds = %37
  %52 = load void (%struct.RuntimeContext.112*, i8*)*, void (%struct.RuntimeContext.112*, i8*)** %13, align 8
  %53 = icmp ne void (%struct.RuntimeContext.112*, i8*)* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load void (%struct.RuntimeContext.112*, i8*)*, void (%struct.RuntimeContext.112*, i8*)** %13, align 8
  %56 = load %struct.RuntimeContext.112*, %struct.RuntimeContext.112** %8, align 8
  %57 = load i8*, i8** %18, align 8
  call void %55(%struct.RuntimeContext.112* %56, i8* %57)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @thread_idx() #0 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @block_dim() #0 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @block_idx() #0 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @grid_dim() #0 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x()
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #2

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!nvvm.annotations = !{!0, !1, !2, !3, !4, !5, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8}
!llvm.ident = !{!10}
!nvvmir.version = !{!11}
!llvm.module.flags = !{!12}

!0 = !{void (%struct.RuntimeContext.112*)* @advance_c82_0_kernel_0_serial, !"kernel", i32 1}
!1 = !{void (%struct.RuntimeContext.112*)* @advance_c82_0_kernel_0_serial, !"maxntidx", i32 1}
!2 = !{void (%struct.RuntimeContext.112*)* @advance_c82_0_kernel_0_serial, !"minctasm", i32 2}
!3 = !{void (%struct.RuntimeContext.112*)* @advance_c82_0_kernel_1_range_for, !"kernel", i32 1}
!4 = !{void (%struct.RuntimeContext.112*)* @advance_c82_0_kernel_1_range_for, !"maxntidx", i32 128}
!5 = !{void (%struct.RuntimeContext.112*)* @advance_c82_0_kernel_1_range_for, !"minctasm", i32 2}
!6 = !{null, !"align", i32 8}
!7 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!8 = !{null, !"align", i32 16}
!9 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!10 = !{!"Ubuntu clang version 11.1.0-6"}
!11 = !{i32 1, i32 4}
!12 = !{i32 1, !"wchar_size", i32 4}
