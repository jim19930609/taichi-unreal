; ModuleID = 'kernel'
source_filename = "kernel"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RuntimeContext = type { ptr, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], ptr, i64 }
%struct.LLVMRuntime = type { i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [512 x ptr], [512 x i64], ptr, ptr, [1024 x ptr], [1024 x ptr], ptr, [1024 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, [2048 x i8], [32 x i64], i32, i64, ptr, i32, i32, i64, ptr }
%struct.range_task_helper_context = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32 }

@.str.2 = private unnamed_addr constant [21 x i8] c"step must not be %d\0A\00", align 1

define void @boundary_handle_c84_0_kernel_0_serial(ptr %context) {
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

define void @boundary_handle_c84_0_kernel_1_range_for(ptr %context) {
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
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  br label %entry

final:                                            ; preds = %after_if18
  ret void

entry:                                            ; preds = %allocs
  br label %function_body

function_body:                                    ; preds = %entry
  store i32 %2, ptr %3, align 4
  %7 = load i32, ptr %3, align 4
  store float 0.000000e+00, ptr %4, align 4
  store float 0.000000e+00, ptr %5, align 4
  store float 0.000000e+00, ptr %6, align 4
  %8 = call i64 @RuntimeContext_get_args(ptr %0, i32 0)
  %9 = inttoptr i64 %8 to ptr
  %10 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %11 = mul i32 0, %10
  %12 = add i32 %11, %7
  %13 = mul i32 %12, 3
  %14 = add i32 %13, 0
  %15 = getelementptr float, ptr %9, i32 %14
  %16 = load float, ptr %15, align 4
  %17 = call i64 @RuntimeContext_get_args(ptr %0, i32 2)
  %18 = inttoptr i64 %17 to ptr
  %19 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %20 = mul i32 0, %19
  %21 = add i32 %20, 0
  %22 = mul i32 %21, 3
  %23 = add i32 %22, 0
  %24 = getelementptr float, ptr %18, i32 %23
  %25 = load float, ptr %24, align 4
  %26 = fcmp olt float %16, %25
  %27 = sext i1 %26 to i32
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %true_block, label %false_block

true_block:                                       ; preds = %function_body
  %30 = load float, ptr %24, align 4
  store float %30, ptr %15, align 4
  store float -1.000000e+00, ptr %4, align 4
  br label %after_if

false_block:                                      ; preds = %function_body
  br label %after_if

after_if:                                         ; preds = %false_block, %true_block
  %31 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %32 = mul i32 0, %31
  %33 = add i32 %32, %7
  %34 = mul i32 %33, 3
  %35 = add i32 %34, 1
  %36 = getelementptr float, ptr %9, i32 %35
  %37 = load float, ptr %36, align 4
  %38 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %39 = mul i32 0, %38
  %40 = add i32 %39, 0
  %41 = mul i32 %40, 3
  %42 = add i32 %41, 1
  %43 = getelementptr float, ptr %18, i32 %42
  %44 = load float, ptr %43, align 4
  %45 = fcmp olt float %37, %44
  %46 = sext i1 %45 to i32
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %true_block1, label %false_block2

true_block1:                                      ; preds = %after_if
  %49 = load float, ptr %43, align 4
  store float %49, ptr %36, align 4
  store float -1.000000e+00, ptr %5, align 4
  br label %after_if3

false_block2:                                     ; preds = %after_if
  br label %after_if3

after_if3:                                        ; preds = %false_block2, %true_block1
  %50 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 0, i32 0)
  %51 = mul i32 0, %50
  %52 = add i32 %51, %7
  %53 = mul i32 %52, 3
  %54 = add i32 %53, 2
  %55 = getelementptr float, ptr %9, i32 %54
  %56 = load float, ptr %55, align 4
  %57 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %58 = mul i32 0, %57
  %59 = add i32 %58, 0
  %60 = mul i32 %59, 3
  %61 = add i32 %60, 2
  %62 = getelementptr float, ptr %18, i32 %61
  %63 = load float, ptr %62, align 4
  %64 = fcmp olt float %56, %63
  %65 = sext i1 %64 to i32
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %true_block4, label %false_block5

true_block4:                                      ; preds = %after_if3
  %68 = load float, ptr %62, align 4
  store float %68, ptr %55, align 4
  store float -1.000000e+00, ptr %6, align 4
  br label %after_if6

false_block5:                                     ; preds = %after_if3
  br label %after_if6

after_if6:                                        ; preds = %false_block5, %true_block4
  %69 = load float, ptr %15, align 4
  %70 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %71 = mul i32 0, %70
  %72 = add i32 %71, 1
  %73 = mul i32 %72, 3
  %74 = add i32 %73, 0
  %75 = getelementptr float, ptr %18, i32 %74
  %76 = load float, ptr %75, align 4
  %77 = fcmp ogt float %69, %76
  %78 = sext i1 %77 to i32
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %true_block7, label %false_block8

true_block7:                                      ; preds = %after_if6
  %81 = load float, ptr %75, align 4
  store float %81, ptr %15, align 4
  %82 = load float, ptr %4, align 4
  %83 = fadd float %82, 1.000000e+00
  store float %83, ptr %4, align 4
  br label %after_if9

false_block8:                                     ; preds = %after_if6
  br label %after_if9

after_if9:                                        ; preds = %false_block8, %true_block7
  %84 = load float, ptr %36, align 4
  %85 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %86 = mul i32 0, %85
  %87 = add i32 %86, 1
  %88 = mul i32 %87, 3
  %89 = add i32 %88, 1
  %90 = getelementptr float, ptr %18, i32 %89
  %91 = load float, ptr %90, align 4
  %92 = fcmp ogt float %84, %91
  %93 = sext i1 %92 to i32
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %true_block10, label %false_block11

true_block10:                                     ; preds = %after_if9
  %96 = load float, ptr %90, align 4
  store float %96, ptr %36, align 4
  %97 = load float, ptr %5, align 4
  %98 = fadd float %97, 1.000000e+00
  store float %98, ptr %5, align 4
  br label %after_if12

false_block11:                                    ; preds = %after_if9
  br label %after_if12

after_if12:                                       ; preds = %false_block11, %true_block10
  %99 = load float, ptr %55, align 4
  %100 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 2, i32 0)
  %101 = mul i32 0, %100
  %102 = add i32 %101, 1
  %103 = mul i32 %102, 3
  %104 = add i32 %103, 2
  %105 = getelementptr float, ptr %18, i32 %104
  %106 = load float, ptr %105, align 4
  %107 = fcmp ogt float %99, %106
  %108 = sext i1 %107 to i32
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %true_block13, label %false_block14

true_block13:                                     ; preds = %after_if12
  %111 = load float, ptr %105, align 4
  store float %111, ptr %55, align 4
  %112 = load float, ptr %6, align 4
  %113 = fadd float %112, 1.000000e+00
  store float %113, ptr %6, align 4
  br label %after_if15

false_block14:                                    ; preds = %after_if12
  br label %after_if15

after_if15:                                       ; preds = %false_block14, %true_block13
  %114 = load float, ptr %4, align 4
  %115 = load float, ptr %5, align 4
  %116 = load float, ptr %6, align 4
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
  %127 = load float, ptr %4, align 4
  %128 = load float, ptr %5, align 4
  %129 = load float, ptr %6, align 4
  %130 = fdiv float %127, %122
  %131 = fdiv float %128, %122
  %132 = fdiv float %129, %122
  %133 = call i64 @RuntimeContext_get_args(ptr %0, i32 1)
  %134 = inttoptr i64 %133 to ptr
  %135 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %136 = mul i32 0, %135
  %137 = add i32 %136, %7
  %138 = mul i32 %137, 3
  %139 = add i32 %138, 0
  %140 = getelementptr float, ptr %134, i32 %139
  %141 = load float, ptr %140, align 4
  %142 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %143 = mul i32 0, %142
  %144 = add i32 %143, %7
  %145 = mul i32 %144, 3
  %146 = add i32 %145, 1
  %147 = getelementptr float, ptr %134, i32 %146
  %148 = load float, ptr %147, align 4
  %149 = call i32 @RuntimeContext_get_extra_args(ptr %0, i32 1, i32 0)
  %150 = mul i32 0, %149
  %151 = add i32 %150, %7
  %152 = mul i32 %151, 3
  %153 = add i32 %152, 2
  %154 = getelementptr float, ptr %134, i32 %153
  %155 = load float, ptr %154, align 4
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
  store float %165, ptr %140, align 4
  %166 = fadd float %148, %neg19
  store float %166, ptr %147, align 4
  %167 = fadd float %155, %neg20
  store float %167, ptr %154, align 4
  br label %after_if18

false_block17:                                    ; preds = %after_if15
  br label %after_if18

after_if18:                                       ; preds = %false_block17, %true_block16
  br label %final
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #0

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
