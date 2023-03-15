; ModuleID = 'kernel'
source_filename = "kernel"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext.4 = type { ptr, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], ptr, i64 }
%struct.LLVMRuntime = type { i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [512 x ptr], [512 x i64], ptr, ptr, [1024 x ptr], [1024 x ptr], ptr, [1024 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, [2048 x i8], [32 x i64], i32, i64, ptr, i32, i32, i64, ptr }

define void @update_density_c78_0_kernel_0_serial(ptr byval(%struct.RuntimeContext.4) %context) {
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

define void @update_density_c78_0_kernel_1_range_for(ptr byval(%struct.RuntimeContext.4) %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call ptr @RuntimeContext_get_runtime(ptr %context)
  %1 = call ptr @get_temporary_pointer(ptr %0, i64 0)
  %2 = load i32, ptr %1, align 4
  call void @gpu_parallel_range_for(ptr %context, i32 0, i32 %2, ptr null, ptr @function_body, ptr null, i64 1)
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
  %70 = call float @__nv_sqrtf(float %69)
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
declare float @llvm.maxnum.f32(float, float) #0

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i64 @RuntimeContext_get_args(ptr noundef %0, i32 noundef %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.RuntimeContext.4, ptr %5, i32 0, i32 1
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
  %4 = getelementptr inbounds %struct.RuntimeContext.4, ptr %3, i32 0, i32 0
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
  %8 = getelementptr inbounds %struct.RuntimeContext.4, ptr %7, i32 0, i32 3
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
define internal void @gpu_parallel_range_for(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) #1 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  store i32 %1, ptr %9, align 4
  store i32 %2, ptr %10, align 4
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store i64 %6, ptr %14, align 8
  %19 = call i32 @thread_idx()
  %20 = call i32 @block_dim()
  %21 = call i32 @block_idx()
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %19, %22
  %24 = load i32, ptr %9, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, ptr %15, align 4
  %26 = load i64, ptr %14, align 8
  %27 = call ptr @llvm.stacksave()
  store ptr %27, ptr %16, align 8
  %28 = alloca i8, i64 %26, align 8
  store i64 %26, ptr %17, align 8
  %29 = getelementptr inbounds i8, ptr %28, i64 0
  store ptr %29, ptr %18, align 8
  %30 = load ptr, ptr %11, align 8
  %31 = icmp ne ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = load ptr, ptr %11, align 8
  %34 = load ptr, ptr %8, align 8
  %35 = load ptr, ptr %18, align 8
  call void %33(ptr noundef %34, ptr noundef %35)
  br label %36

36:                                               ; preds = %32, %7
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i32, ptr %15, align 4
  %39 = load i32, ptr %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load ptr, ptr %12, align 8
  %43 = load ptr, ptr %8, align 8
  %44 = load ptr, ptr %18, align 8
  %45 = load i32, ptr %15, align 4
  call void %42(ptr noundef %43, ptr noundef %44, i32 noundef %45)
  %46 = call i32 @block_dim()
  %47 = call i32 @grid_dim()
  %48 = mul nsw i32 %46, %47
  %49 = load i32, ptr %15, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, ptr %15, align 4
  br label %37, !llvm.loop !18

51:                                               ; preds = %37
  %52 = load ptr, ptr %13, align 8
  %53 = icmp ne ptr %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load ptr, ptr %13, align 8
  %56 = load ptr, ptr %8, align 8
  %57 = load ptr, ptr %18, align 8
  call void %55(ptr noundef %56, ptr noundef %57)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load ptr, ptr %16, align 8
  call void @llvm.stackrestore(ptr %59)
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @thread_idx() #1 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @block_dim() #1 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @block_idx() #1 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #2

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @grid_dim() #1 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x()
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #2

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
attributes #1 = { alwaysinline mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { alwaysinline inlinehint }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }

!nvvm.annotations = !{!0, !1, !2, !3, !4, !5, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8}
!llvm.ident = !{!10, !10}
!nvvmir.version = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}

!0 = !{ptr @update_density_c78_0_kernel_0_serial, !"kernel", i32 1}
!1 = !{ptr @update_density_c78_0_kernel_0_serial, !"maxntidx", i32 1}
!2 = !{ptr @update_density_c78_0_kernel_0_serial, !"minctasm", i32 2}
!3 = !{ptr @update_density_c78_0_kernel_1_range_for, !"kernel", i32 1}
!4 = !{ptr @update_density_c78_0_kernel_1_range_for, !"maxntidx", i32 128}
!5 = !{ptr @update_density_c78_0_kernel_1_range_for, !"minctasm", i32 2}
!6 = !{null, !"align", i32 8}
!7 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!8 = !{null, !"align", i32 16}
!9 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!10 = !{!"Ubuntu clang version 15.0.6"}
!11 = !{i32 1, i32 4}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
