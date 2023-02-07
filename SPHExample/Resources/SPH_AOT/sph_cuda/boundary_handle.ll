; ModuleID = 'kernel'
source_filename = "kernel"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext.136 = type { %struct.LLVMRuntime.135*, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], i64* }
%struct.LLVMRuntime.135 = type { i8, i64, i8*, i8*, i8* (i8*, i64, i64)*, void (i8*)*, void (i8*, ...)*, i32 (i8*, i64, i8*, %struct.__va_list_tag.129*)*, i8*, [512 x i8*], [512 x i64], i8*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, [1024 x %struct.ListManager.130*], [1024 x %struct.NodeManager.131*], %struct.NodeManager.131*, [1024 x i8*], i8*, %struct.RandState.132*, %struct.MemRequestQueue.134*, i8*, void (i8*, i8*)*, void (i8*)*, [2048 x i8], [32 x i64], i32, i64, i8*, i32, i32, i64, i8* }
%struct.__va_list_tag.129 = type { i32, i32, i8*, i8* }
%struct.ListManager.130 = type { [131072 x i8*], i64, i64, i32, i32, i32, %struct.LLVMRuntime.135* }
%struct.NodeManager.131 = type <{ %struct.LLVMRuntime.135*, i32, i32, i32, i32, %struct.ListManager.130*, %struct.ListManager.130*, %struct.ListManager.130*, i32, [4 x i8] }>
%struct.RandState.132 = type { i32, i32, i32, i32, i32 }
%struct.MemRequestQueue.134 = type { [65536 x %struct.MemRequest.133], i32, i32 }
%struct.MemRequest.133 = type { i64, i64, i8*, i64 }

define void @boundary_handle_c84_0_kernel_0_serial(%struct.RuntimeContext.136* byval(%struct.RuntimeContext.136) %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %context, i32 0, i32 0)
  %1 = call %struct.LLVMRuntime.135* @RuntimeContext_get_runtime(%struct.RuntimeContext.136* %context)
  %2 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.135* %1, i64 0)
  %3 = bitcast i8* %2 to i32*
  store i32 %0, i32* %3, align 4
  br label %final
}

define void @boundary_handle_c84_0_kernel_1_range_for(%struct.RuntimeContext.136* byval(%struct.RuntimeContext.136) %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call %struct.LLVMRuntime.135* @RuntimeContext_get_runtime(%struct.RuntimeContext.136* %context)
  %1 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.135* %0, i64 0)
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  call void @gpu_parallel_range_for(%struct.RuntimeContext.136* %context, i32 0, i32 %3, void (%struct.RuntimeContext.136*, i8*)* null, void (%struct.RuntimeContext.136*, i8*, i32)* @function_body, void (%struct.RuntimeContext.136*, i8*)* null, i64 1)
  br label %final
}

define internal void @function_body(%struct.RuntimeContext.136* %0, i8* %1, i32 %2) {
allocs:
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  br label %entry

final:                                            ; preds = %after_if18
  ret void

entry:                                            ; preds = %allocs
  br label %function_body

function_body:                                    ; preds = %entry
  store i32 %2, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  store float 0.000000e+00, float* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  %8 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.136* %0, i32 0)
  %9 = inttoptr i64 %8 to float*
  %10 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 0, i32 0)
  %11 = mul i32 0, %10
  %12 = add i32 %11, %7
  %13 = mul i32 %12, 3
  %14 = add i32 %13, 0
  %15 = getelementptr float, float* %9, i32 %14
  %16 = load float, float* %15, align 4
  %17 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.136* %0, i32 2)
  %18 = inttoptr i64 %17 to float*
  %19 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 2, i32 0)
  %20 = mul i32 0, %19
  %21 = add i32 %20, 0
  %22 = mul i32 %21, 3
  %23 = add i32 %22, 0
  %24 = getelementptr float, float* %18, i32 %23
  %25 = load float, float* %24, align 4
  %26 = fcmp olt float %16, %25
  %27 = sext i1 %26 to i32
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %true_block, label %false_block

true_block:                                       ; preds = %function_body
  %30 = load float, float* %24, align 4
  store float %30, float* %15, align 4
  store float -1.000000e+00, float* %4, align 4
  br label %after_if

false_block:                                      ; preds = %function_body
  br label %after_if

after_if:                                         ; preds = %false_block, %true_block
  %31 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 0, i32 0)
  %32 = mul i32 0, %31
  %33 = add i32 %32, %7
  %34 = mul i32 %33, 3
  %35 = add i32 %34, 1
  %36 = getelementptr float, float* %9, i32 %35
  %37 = load float, float* %36, align 4
  %38 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 2, i32 0)
  %39 = mul i32 0, %38
  %40 = add i32 %39, 0
  %41 = mul i32 %40, 3
  %42 = add i32 %41, 1
  %43 = getelementptr float, float* %18, i32 %42
  %44 = load float, float* %43, align 4
  %45 = fcmp olt float %37, %44
  %46 = sext i1 %45 to i32
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %true_block1, label %false_block2

true_block1:                                      ; preds = %after_if
  %49 = load float, float* %43, align 4
  store float %49, float* %36, align 4
  store float -1.000000e+00, float* %5, align 4
  br label %after_if3

false_block2:                                     ; preds = %after_if
  br label %after_if3

after_if3:                                        ; preds = %false_block2, %true_block1
  %50 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 0, i32 0)
  %51 = mul i32 0, %50
  %52 = add i32 %51, %7
  %53 = mul i32 %52, 3
  %54 = add i32 %53, 2
  %55 = getelementptr float, float* %9, i32 %54
  %56 = load float, float* %55, align 4
  %57 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 2, i32 0)
  %58 = mul i32 0, %57
  %59 = add i32 %58, 0
  %60 = mul i32 %59, 3
  %61 = add i32 %60, 2
  %62 = getelementptr float, float* %18, i32 %61
  %63 = load float, float* %62, align 4
  %64 = fcmp olt float %56, %63
  %65 = sext i1 %64 to i32
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %true_block4, label %false_block5

true_block4:                                      ; preds = %after_if3
  %68 = load float, float* %62, align 4
  store float %68, float* %55, align 4
  store float -1.000000e+00, float* %6, align 4
  br label %after_if6

false_block5:                                     ; preds = %after_if3
  br label %after_if6

after_if6:                                        ; preds = %false_block5, %true_block4
  %69 = load float, float* %15, align 4
  %70 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 2, i32 0)
  %71 = mul i32 0, %70
  %72 = add i32 %71, 1
  %73 = mul i32 %72, 3
  %74 = add i32 %73, 0
  %75 = getelementptr float, float* %18, i32 %74
  %76 = load float, float* %75, align 4
  %77 = fcmp ogt float %69, %76
  %78 = sext i1 %77 to i32
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %true_block7, label %false_block8

true_block7:                                      ; preds = %after_if6
  %81 = load float, float* %75, align 4
  store float %81, float* %15, align 4
  %82 = load float, float* %4, align 4
  %83 = fadd float %82, 1.000000e+00
  store float %83, float* %4, align 4
  br label %after_if9

false_block8:                                     ; preds = %after_if6
  br label %after_if9

after_if9:                                        ; preds = %false_block8, %true_block7
  %84 = load float, float* %36, align 4
  %85 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 2, i32 0)
  %86 = mul i32 0, %85
  %87 = add i32 %86, 1
  %88 = mul i32 %87, 3
  %89 = add i32 %88, 1
  %90 = getelementptr float, float* %18, i32 %89
  %91 = load float, float* %90, align 4
  %92 = fcmp ogt float %84, %91
  %93 = sext i1 %92 to i32
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %true_block10, label %false_block11

true_block10:                                     ; preds = %after_if9
  %96 = load float, float* %90, align 4
  store float %96, float* %36, align 4
  %97 = load float, float* %5, align 4
  %98 = fadd float %97, 1.000000e+00
  store float %98, float* %5, align 4
  br label %after_if12

false_block11:                                    ; preds = %after_if9
  br label %after_if12

after_if12:                                       ; preds = %false_block11, %true_block10
  %99 = load float, float* %55, align 4
  %100 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 2, i32 0)
  %101 = mul i32 0, %100
  %102 = add i32 %101, 1
  %103 = mul i32 %102, 3
  %104 = add i32 %103, 2
  %105 = getelementptr float, float* %18, i32 %104
  %106 = load float, float* %105, align 4
  %107 = fcmp ogt float %99, %106
  %108 = sext i1 %107 to i32
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %true_block13, label %false_block14

true_block13:                                     ; preds = %after_if12
  %111 = load float, float* %105, align 4
  store float %111, float* %55, align 4
  %112 = load float, float* %6, align 4
  %113 = fadd float %112, 1.000000e+00
  store float %113, float* %6, align 4
  br label %after_if15

false_block14:                                    ; preds = %after_if12
  br label %after_if15

after_if15:                                       ; preds = %false_block14, %true_block13
  %114 = load float, float* %4, align 4
  %115 = load float, float* %5, align 4
  %116 = load float, float* %6, align 4
  %117 = fmul float %114, %114
  %118 = fmul float %115, %115
  %119 = fmul float %116, %116
  %120 = fadd float %117, %118
  %121 = fadd float %120, %119
  %122 = call float @__nv_sqrtf(float %121)
  %123 = fcmp ogt float %122, 0x3EB0C6F7A0000000
  %124 = sext i1 %123 to i32
  %125 = and i32 %124, 1
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %true_block16, label %false_block17

true_block16:                                     ; preds = %after_if15
  %127 = load float, float* %4, align 4
  %128 = load float, float* %5, align 4
  %129 = load float, float* %6, align 4
  %130 = fdiv float %127, %122
  %131 = fdiv float %128, %122
  %132 = fdiv float %129, %122
  %133 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.136* %0, i32 1)
  %134 = inttoptr i64 %133 to float*
  %135 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 1, i32 0)
  %136 = mul i32 0, %135
  %137 = add i32 %136, %7
  %138 = mul i32 %137, 3
  %139 = add i32 %138, 0
  %140 = getelementptr float, float* %134, i32 %139
  %141 = load float, float* %140, align 4
  %142 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 1, i32 0)
  %143 = mul i32 0, %142
  %144 = add i32 %143, %7
  %145 = mul i32 %144, 3
  %146 = add i32 %145, 1
  %147 = getelementptr float, float* %134, i32 %146
  %148 = load float, float* %147, align 4
  %149 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 1, i32 0)
  %150 = mul i32 0, %149
  %151 = add i32 %150, %7
  %152 = mul i32 %151, 3
  %153 = add i32 %152, 2
  %154 = getelementptr float, float* %134, i32 %153
  %155 = load float, float* %154, align 4
  %156 = fmul float %130, %141
  %157 = fmul float %131, %148
  %158 = fmul float %132, %155
  %159 = fadd float %156, %157
  %160 = fadd float %159, %158
  %161 = fmul float %160, 1.500000e+00
  %162 = fmul float %161, %130
  %163 = fmul float %161, %131
  %164 = fmul float %161, %132
  %neg = fneg float %162
  %neg19 = fneg float %163
  %neg20 = fneg float %164
  %165 = fadd float %141, %neg
  store float %165, float* %140, align 4
  %166 = fadd float %148, %neg19
  store float %166, float* %147, align 4
  %167 = fadd float %155, %neg20
  store float %167, float* %154, align 4
  br label %after_if18

false_block17:                                    ; preds = %after_if15
  br label %after_if18

after_if18:                                       ; preds = %false_block17, %true_block16
  br label %final
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @RuntimeContext_get_args(%struct.RuntimeContext.136* %0, i32 %1) #0 {
  %3 = alloca %struct.RuntimeContext.136*, align 8
  %4 = alloca i32, align 4
  store %struct.RuntimeContext.136* %0, %struct.RuntimeContext.136** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.RuntimeContext.136*, %struct.RuntimeContext.136** %3, align 8
  %6 = getelementptr inbounds %struct.RuntimeContext.136, %struct.RuntimeContext.136* %5, i32 0, i32 1
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [64 x i64], [64 x i64]* %6, i64 0, i64 %8
  %10 = load i64, i64* %9, align 8
  ret i64 %10
}

; Function Attrs: alwaysinline nounwind uwtable
define internal %struct.LLVMRuntime.135* @RuntimeContext_get_runtime(%struct.RuntimeContext.136* %0) #0 {
  %2 = alloca %struct.RuntimeContext.136*, align 8
  store %struct.RuntimeContext.136* %0, %struct.RuntimeContext.136** %2, align 8
  %3 = load %struct.RuntimeContext.136*, %struct.RuntimeContext.136** %2, align 8
  %4 = getelementptr inbounds %struct.RuntimeContext.136, %struct.RuntimeContext.136* %3, i32 0, i32 0
  %5 = load %struct.LLVMRuntime.135*, %struct.LLVMRuntime.135** %4, align 8
  ret %struct.LLVMRuntime.135* %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.RuntimeContext.136*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.RuntimeContext.136* %0, %struct.RuntimeContext.136** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.RuntimeContext.136*, %struct.RuntimeContext.136** %4, align 8
  %8 = getelementptr inbounds %struct.RuntimeContext.136, %struct.RuntimeContext.136* %7, i32 0, i32 3
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
define internal i8* @get_temporary_pointer(%struct.LLVMRuntime.135* %0, i64 %1) #0 {
  %3 = alloca %struct.LLVMRuntime.135*, align 8
  %4 = alloca i64, align 8
  store %struct.LLVMRuntime.135* %0, %struct.LLVMRuntime.135** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.LLVMRuntime.135*, %struct.LLVMRuntime.135** %3, align 8
  %6 = getelementptr inbounds %struct.LLVMRuntime.135, %struct.LLVMRuntime.135* %5, i32 0, i32 17
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  ret i8* %9
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @gpu_parallel_range_for(%struct.RuntimeContext.136* %0, i32 %1, i32 %2, void (%struct.RuntimeContext.136*, i8*)* %3, void (%struct.RuntimeContext.136*, i8*, i32)* %4, void (%struct.RuntimeContext.136*, i8*)* %5, i64 %6) #0 {
  %8 = alloca %struct.RuntimeContext.136*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.RuntimeContext.136*, i8*)*, align 8
  %12 = alloca void (%struct.RuntimeContext.136*, i8*, i32)*, align 8
  %13 = alloca void (%struct.RuntimeContext.136*, i8*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.RuntimeContext.136* %0, %struct.RuntimeContext.136** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store void (%struct.RuntimeContext.136*, i8*)* %3, void (%struct.RuntimeContext.136*, i8*)** %11, align 8
  store void (%struct.RuntimeContext.136*, i8*, i32)* %4, void (%struct.RuntimeContext.136*, i8*, i32)** %12, align 8
  store void (%struct.RuntimeContext.136*, i8*)* %5, void (%struct.RuntimeContext.136*, i8*)** %13, align 8
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
  %30 = load void (%struct.RuntimeContext.136*, i8*)*, void (%struct.RuntimeContext.136*, i8*)** %11, align 8
  %31 = icmp ne void (%struct.RuntimeContext.136*, i8*)* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = load void (%struct.RuntimeContext.136*, i8*)*, void (%struct.RuntimeContext.136*, i8*)** %11, align 8
  %34 = load %struct.RuntimeContext.136*, %struct.RuntimeContext.136** %8, align 8
  %35 = load i8*, i8** %18, align 8
  call void %33(%struct.RuntimeContext.136* %34, i8* %35)
  br label %36

36:                                               ; preds = %32, %7
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load void (%struct.RuntimeContext.136*, i8*, i32)*, void (%struct.RuntimeContext.136*, i8*, i32)** %12, align 8
  %43 = load %struct.RuntimeContext.136*, %struct.RuntimeContext.136** %8, align 8
  %44 = load i8*, i8** %18, align 8
  %45 = load i32, i32* %15, align 4
  call void %42(%struct.RuntimeContext.136* %43, i8* %44, i32 %45)
  %46 = call i32 @block_dim()
  %47 = call i32 @grid_dim()
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %15, align 4
  br label %37

51:                                               ; preds = %37
  %52 = load void (%struct.RuntimeContext.136*, i8*)*, void (%struct.RuntimeContext.136*, i8*)** %13, align 8
  %53 = icmp ne void (%struct.RuntimeContext.136*, i8*)* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load void (%struct.RuntimeContext.136*, i8*)*, void (%struct.RuntimeContext.136*, i8*)** %13, align 8
  %56 = load %struct.RuntimeContext.136*, %struct.RuntimeContext.136** %8, align 8
  %57 = load i8*, i8** %18, align 8
  call void %55(%struct.RuntimeContext.136* %56, i8* %57)
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

; Function Attrs: alwaysinline inlinehint
define internal float @__nv_sqrtf(float %x) #3 {
  %1 = call float @llvm.nvvm.sqrt.f(float %x)
  ret float %1
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare float @llvm.nvvm.sqrt.f(float) #4

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { alwaysinline inlinehint }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }

!nvvm.annotations = !{!0, !1, !2, !3, !4, !5, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8}
!llvm.ident = !{!10}
!nvvmir.version = !{!11}
!llvm.module.flags = !{!12}

!0 = !{void (%struct.RuntimeContext.136*)* @boundary_handle_c84_0_kernel_0_serial, !"kernel", i32 1}
!1 = !{void (%struct.RuntimeContext.136*)* @boundary_handle_c84_0_kernel_0_serial, !"maxntidx", i32 1}
!2 = !{void (%struct.RuntimeContext.136*)* @boundary_handle_c84_0_kernel_0_serial, !"minctasm", i32 2}
!3 = !{void (%struct.RuntimeContext.136*)* @boundary_handle_c84_0_kernel_1_range_for, !"kernel", i32 1}
!4 = !{void (%struct.RuntimeContext.136*)* @boundary_handle_c84_0_kernel_1_range_for, !"maxntidx", i32 128}
!5 = !{void (%struct.RuntimeContext.136*)* @boundary_handle_c84_0_kernel_1_range_for, !"minctasm", i32 2}
!6 = !{null, !"align", i32 8}
!7 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!8 = !{null, !"align", i32 16}
!9 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!10 = !{!"Ubuntu clang version 11.1.0-6"}
!11 = !{i32 1, i32 4}
!12 = !{i32 1, !"wchar_size", i32 4}
