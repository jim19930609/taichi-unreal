; ModuleID = 'kernel'
source_filename = "kernel"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext.13 = type { ptr, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], ptr, i64 }
%struct.LLVMRuntime = type { i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [512 x ptr], [512 x i64], ptr, ptr, [1024 x ptr], [1024 x ptr], ptr, [1024 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, [2048 x i8], [32 x i64], i32, i64, ptr, i32, i32, i64, ptr }

define void @advance_c82_0_kernel_0_serial(ptr byval(%struct.RuntimeContext.13) %context) {
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

define void @advance_c82_0_kernel_1_range_for(ptr byval(%struct.RuntimeContext.13) %context) {
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
  %6 = getelementptr inbounds %struct.RuntimeContext.13, ptr %5, i32 0, i32 1
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
  %4 = getelementptr inbounds %struct.RuntimeContext.13, ptr %3, i32 0, i32 0
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
  %8 = getelementptr inbounds %struct.RuntimeContext.13, ptr %7, i32 0, i32 3
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
define internal void @gpu_parallel_range_for(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) #0 {
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
define internal i32 @thread_idx() #0 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @block_dim() #0 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ntid.x()
  ret i32 %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @block_idx() #0 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x()
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #1

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i32 @grid_dim() #0 {
entry:
  %0 = call i32 @llvm.nvvm.read.ptx.sreg.nctaid.x()
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore(ptr) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.nctaid.x() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #2

attributes #0 = { alwaysinline mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!nvvm.annotations = !{!0, !1, !2, !3, !4, !5, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8}
!llvm.ident = !{!10, !10}
!nvvmir.version = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17}

!0 = !{ptr @advance_c82_0_kernel_0_serial, !"kernel", i32 1}
!1 = !{ptr @advance_c82_0_kernel_0_serial, !"maxntidx", i32 1}
!2 = !{ptr @advance_c82_0_kernel_0_serial, !"minctasm", i32 2}
!3 = !{ptr @advance_c82_0_kernel_1_range_for, !"kernel", i32 1}
!4 = !{ptr @advance_c82_0_kernel_1_range_for, !"maxntidx", i32 128}
!5 = !{ptr @advance_c82_0_kernel_1_range_for, !"minctasm", i32 2}
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
