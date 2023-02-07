; ModuleID = 'kernel'
source_filename = "kernel"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type { %struct.RuntimeContext.136*, void (%struct.RuntimeContext.136*, i8*)*, void (%struct.RuntimeContext.136*, i8*, i32)*, void (%struct.RuntimeContext.136*, i8*)*, i64, i32, i32, i32, i32 }
%struct.RuntimeContext.136 = type { %struct.LLVMRuntime.135*, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], i64* }
%struct.LLVMRuntime.135 = type { i8, i64, i8*, i8*, i8* (i8*, i64, i64)*, void (i8*)*, void (i8*, ...)*, i32 (i8*, i64, i8*, %struct.__va_list_tag.129*)*, i8*, [512 x i8*], [512 x i64], i8*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, [1024 x %struct.ListManager.130*], [1024 x %struct.NodeManager.131*], %struct.NodeManager.131*, [1024 x i8*], i8*, %struct.RandState.132*, %struct.MemRequestQueue.134*, i8*, void (i8*, i8*)*, void (i8*)*, [2048 x i8], [32 x i64], i32, i64, i8*, i32, i32, i64, i8* }
%struct.__va_list_tag.129 = type { i32, i32, i8*, i8* }
%struct.ListManager.130 = type { [131072 x i8*], i64, i64, i32, i32, i32, %struct.LLVMRuntime.135* }
%struct.NodeManager.131 = type <{ %struct.LLVMRuntime.135*, i32, i32, i32, i32, %struct.ListManager.130*, %struct.ListManager.130*, %struct.ListManager.130*, i32, [4 x i8] }>
%struct.RandState.132 = type { i32, i32, i32, i32, i32 }
%struct.MemRequestQueue.134 = type { [65536 x %struct.MemRequest.133], i32, i32 }
%struct.MemRequest.133 = type { i64, i64, i8*, i64 }

@.str.2 = private unnamed_addr constant [21 x i8] c"step must not be %d\0A\00", align 1

define void @boundary_handle_c84_0_kernel_0_serial(%struct.RuntimeContext.136* %context) {
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

define void @boundary_handle_c84_0_kernel_1_range_for(%struct.RuntimeContext.136* %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call %struct.LLVMRuntime.135* @RuntimeContext_get_runtime(%struct.RuntimeContext.136* %context)
  %1 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.135* %0, i64 0)
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  call void @cpu_parallel_range_for(%struct.RuntimeContext.136* %context, i32 16, i32 0, i32 %3, i32 1, i32 512, void (%struct.RuntimeContext.136*, i8*)* null, void (%struct.RuntimeContext.136*, i8*, i32)* @function_body, void (%struct.RuntimeContext.136*, i8*)* null, i64 1)
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
  %122 = call float @llvm.sqrt.f32(float %121)
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @RuntimeContext_get_args(%struct.RuntimeContext.136* %0, i32 %1) #1 {
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
define internal %struct.LLVMRuntime.135* @RuntimeContext_get_runtime(%struct.RuntimeContext.136* %0) #1 {
  %2 = alloca %struct.RuntimeContext.136*, align 8
  store %struct.RuntimeContext.136* %0, %struct.RuntimeContext.136** %2, align 8
  %3 = load %struct.RuntimeContext.136*, %struct.RuntimeContext.136** %2, align 8
  %4 = getelementptr inbounds %struct.RuntimeContext.136, %struct.RuntimeContext.136* %3, i32 0, i32 0
  %5 = load %struct.LLVMRuntime.135*, %struct.LLVMRuntime.135** %4, align 8
  ret %struct.LLVMRuntime.135* %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.136* %0, i32 %1, i32 %2) #1 {
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
define internal i8* @get_temporary_pointer(%struct.LLVMRuntime.135* %0, i64 %1) #1 {
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
define internal void @cpu_parallel_range_for(%struct.RuntimeContext.136* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, void (%struct.RuntimeContext.136*, i8*)* %6, void (%struct.RuntimeContext.136*, i8*, i32)* %7, void (%struct.RuntimeContext.136*, i8*)* %8, i64 %9) #1 {
  %11 = alloca %struct.RuntimeContext.136*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca void (%struct.RuntimeContext.136*, i8*)*, align 8
  %18 = alloca void (%struct.RuntimeContext.136*, i8*, i32)*, align 8
  %19 = alloca void (%struct.RuntimeContext.136*, i8*)*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %0, align 8
  %22 = alloca %struct.LLVMRuntime.135*, align 8
  store %struct.RuntimeContext.136* %0, %struct.RuntimeContext.136** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store void (%struct.RuntimeContext.136*, i8*)* %6, void (%struct.RuntimeContext.136*, i8*)** %17, align 8
  store void (%struct.RuntimeContext.136*, i8*, i32)* %7, void (%struct.RuntimeContext.136*, i8*, i32)** %18, align 8
  store void (%struct.RuntimeContext.136*, i8*)* %8, void (%struct.RuntimeContext.136*, i8*)** %19, align 8
  store i64 %9, i64* %20, align 8
  call void @_ZN25range_task_helper_contextC2Ev(%0* %21) #5
  %23 = load %struct.RuntimeContext.136*, %struct.RuntimeContext.136** %11, align 8
  %24 = getelementptr inbounds %0, %0* %21, i32 0, i32 0
  store %struct.RuntimeContext.136* %23, %struct.RuntimeContext.136** %24, align 8
  %25 = load void (%struct.RuntimeContext.136*, i8*)*, void (%struct.RuntimeContext.136*, i8*)** %17, align 8
  %26 = getelementptr inbounds %0, %0* %21, i32 0, i32 1
  store void (%struct.RuntimeContext.136*, i8*)* %25, void (%struct.RuntimeContext.136*, i8*)** %26, align 8
  %27 = load i64, i64* %20, align 8
  %28 = getelementptr inbounds %0, %0* %21, i32 0, i32 4
  store i64 %27, i64* %28, align 8
  %29 = load void (%struct.RuntimeContext.136*, i8*, i32)*, void (%struct.RuntimeContext.136*, i8*, i32)** %18, align 8
  %30 = getelementptr inbounds %0, %0* %21, i32 0, i32 2
  store void (%struct.RuntimeContext.136*, i8*, i32)* %29, void (%struct.RuntimeContext.136*, i8*, i32)** %30, align 8
  %31 = load void (%struct.RuntimeContext.136*, i8*)*, void (%struct.RuntimeContext.136*, i8*)** %19, align 8
  %32 = getelementptr inbounds %0, %0* %21, i32 0, i32 3
  store void (%struct.RuntimeContext.136*, i8*)* %31, void (%struct.RuntimeContext.136*, i8*)** %32, align 8
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
  %45 = load %struct.RuntimeContext.136*, %struct.RuntimeContext.136** %11, align 8
  %46 = getelementptr inbounds %struct.RuntimeContext.136, %struct.RuntimeContext.136* %45, i32 0, i32 0
  %47 = load %struct.LLVMRuntime.135*, %struct.LLVMRuntime.135** %46, align 8
  call void @_Z13taichi_printfIJRiEEvP11LLVMRuntimePKcDpOT_(%struct.LLVMRuntime.135* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* nonnull align 4 dereferenceable(4) %15)
  call void @exit(i32 -1) #6
  unreachable

48:                                               ; preds = %41, %10
  %49 = load i32, i32* %16, align 4
  %50 = getelementptr inbounds %0, %0* %21, i32 0, i32 7
  store i32 %49, i32* %50, align 8
  %51 = load %struct.RuntimeContext.136*, %struct.RuntimeContext.136** %11, align 8
  %52 = getelementptr inbounds %struct.RuntimeContext.136, %struct.RuntimeContext.136* %51, i32 0, i32 0
  %53 = load %struct.LLVMRuntime.135*, %struct.LLVMRuntime.135** %52, align 8
  store %struct.LLVMRuntime.135* %53, %struct.LLVMRuntime.135** %22, align 8
  %54 = load %struct.LLVMRuntime.135*, %struct.LLVMRuntime.135** %22, align 8
  %55 = getelementptr inbounds %struct.LLVMRuntime.135, %struct.LLVMRuntime.135* %54, i32 0, i32 12
  %56 = load void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)** %55, align 8
  %57 = load %struct.LLVMRuntime.135*, %struct.LLVMRuntime.135** %22, align 8
  %58 = getelementptr inbounds %struct.LLVMRuntime.135, %struct.LLVMRuntime.135* %57, i32 0, i32 11
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
  store void (%struct.RuntimeContext.136*, i8*)* null, void (%struct.RuntimeContext.136*, i8*)** %4, align 8
  %5 = getelementptr inbounds %0, %0* %3, i32 0, i32 2
  store void (%struct.RuntimeContext.136*, i8*, i32)* null, void (%struct.RuntimeContext.136*, i8*, i32)** %5, align 8
  %6 = getelementptr inbounds %0, %0* %3, i32 0, i32 3
  store void (%struct.RuntimeContext.136*, i8*)* null, void (%struct.RuntimeContext.136*, i8*)** %6, align 8
  %7 = getelementptr inbounds %0, %0* %3, i32 0, i32 4
  store i64 1, i64* %7, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_Z13taichi_printfIJRiEEvP11LLVMRuntimePKcDpOT_(%struct.LLVMRuntime.135* %0, i8* %1, i32* nonnull align 4 dereferenceable(4) %2) #1 {
  %4 = alloca %struct.LLVMRuntime.135*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.LLVMRuntime.135* %0, %struct.LLVMRuntime.135** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.LLVMRuntime.135*, %struct.LLVMRuntime.135** %4, align 8
  %8 = getelementptr inbounds %struct.LLVMRuntime.135, %struct.LLVMRuntime.135* %7, i32 0, i32 6
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
  %11 = alloca %struct.RuntimeContext.136, align 8
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
  %30 = load void (%struct.RuntimeContext.136*, i8*)*, void (%struct.RuntimeContext.136*, i8*)** %29, align 8
  %31 = icmp ne void (%struct.RuntimeContext.136*, i8*)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = getelementptr inbounds %0, %0* %7, i32 0, i32 1
  %34 = load void (%struct.RuntimeContext.136*, i8*)*, void (%struct.RuntimeContext.136*, i8*)** %33, align 8
  %35 = getelementptr inbounds %0, %0* %7, i32 0, i32 0
  %36 = load %struct.RuntimeContext.136*, %struct.RuntimeContext.136** %35, align 8
  %37 = load i8*, i8** %10, align 8
  call void %34(%struct.RuntimeContext.136* %36, i8* %37)
  br label %38

38:                                               ; preds = %32, %3
  %39 = getelementptr inbounds %0, %0* %7, i32 0, i32 0
  %40 = load %struct.RuntimeContext.136*, %struct.RuntimeContext.136** %39, align 8
  %41 = bitcast %struct.RuntimeContext.136* %11 to i8*
  %42 = bitcast %struct.RuntimeContext.136* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 3224, i1 false)
  %43 = load i32, i32* %5, align 4
  %44 = getelementptr inbounds %struct.RuntimeContext.136, %struct.RuntimeContext.136* %11, i32 0, i32 4
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
  %70 = load void (%struct.RuntimeContext.136*, i8*, i32)*, void (%struct.RuntimeContext.136*, i8*, i32)** %69, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %15, align 4
  call void %70(%struct.RuntimeContext.136* %11, i8* %71, i32 %72)
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
  %104 = load void (%struct.RuntimeContext.136*, i8*, i32)*, void (%struct.RuntimeContext.136*, i8*, i32)** %103, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* %19, align 4
  call void %104(%struct.RuntimeContext.136* %11, i8* %105, i32 %106)
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
  %114 = load void (%struct.RuntimeContext.136*, i8*)*, void (%struct.RuntimeContext.136*, i8*)** %113, align 8
  %115 = icmp ne void (%struct.RuntimeContext.136*, i8*)* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = getelementptr inbounds %0, %0* %7, i32 0, i32 3
  %118 = load void (%struct.RuntimeContext.136*, i8*)*, void (%struct.RuntimeContext.136*, i8*)** %117, align 8
  %119 = getelementptr inbounds %0, %0* %7, i32 0, i32 0
  %120 = load %struct.RuntimeContext.136*, %struct.RuntimeContext.136** %119, align 8
  %121 = load i8*, i8** %10, align 8
  call void %118(%struct.RuntimeContext.136* %120, i8* %121)
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
