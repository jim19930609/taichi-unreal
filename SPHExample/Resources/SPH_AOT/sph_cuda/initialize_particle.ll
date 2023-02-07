; ModuleID = 'kernel'
source_filename = "kernel"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext = type { %struct.LLVMRuntime*, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], i64* }
%struct.LLVMRuntime = type { i8, i64, i8*, i8*, i8* (i8*, i64, i64)*, void (i8*)*, void (i8*, ...)*, i32 (i8*, i64, i8*, %struct.__va_list_tag*)*, i8*, [512 x i8*], [512 x i64], i8*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, [1024 x %struct.ListManager*], [1024 x %struct.NodeManager*], %struct.NodeManager*, [1024 x i8*], i8*, %struct.RandState*, %struct.MemRequestQueue*, i8*, void (i8*, i8*)*, void (i8*)*, [2048 x i8], [32 x i64], i32, i64, i8*, i32, i32, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ListManager = type { [131072 x i8*], i64, i64, i32, i32, i32, %struct.LLVMRuntime* }
%struct.NodeManager = type <{ %struct.LLVMRuntime*, i32, i32, i32, i32, %struct.ListManager*, %struct.ListManager*, %struct.ListManager*, i32, [4 x i8] }>
%struct.RandState = type { i32, i32, i32, i32, i32 }
%struct.MemRequestQueue = type { [65536 x %struct.MemRequest], i32, i32 }
%struct.MemRequest = type { i64, i64, i8*, i64 }

define void @initialize_particle_c76_0_kernel_0_serial(%struct.RuntimeContext* byval(%struct.RuntimeContext) %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext* %context, i32 4)
  %1 = inttoptr i64 %0 to float*
  %2 = getelementptr float, float* %1, i32 0
  store float 0.000000e+00, float* %2, align 4
  %3 = getelementptr float, float* %1, i32 1
  store float 0xC0239999A0000000, float* %3, align 4
  %4 = getelementptr float, float* %1, i32 2
  store float 0.000000e+00, float* %4, align 4
  %5 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %context, i32 0, i32 0)
  %6 = call %struct.LLVMRuntime* @RuntimeContext_get_runtime(%struct.RuntimeContext* %context)
  %7 = call i8* @get_temporary_pointer(%struct.LLVMRuntime* %6, i64 0)
  %8 = bitcast i8* %7 to i32*
  store i32 %5, i32* %8, align 4
  br label %final
}

define void @initialize_particle_c76_0_kernel_1_range_for(%struct.RuntimeContext* byval(%struct.RuntimeContext) %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call %struct.LLVMRuntime* @RuntimeContext_get_runtime(%struct.RuntimeContext* %context)
  %1 = call i8* @get_temporary_pointer(%struct.LLVMRuntime* %0, i64 0)
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  call void @gpu_parallel_range_for(%struct.RuntimeContext* %context, i32 0, i32 %3, void (%struct.RuntimeContext*, i8*)* null, void (%struct.RuntimeContext*, i8*, i32)* @function_body, void (%struct.RuntimeContext*, i8*)* null, i64 1)
  br label %final
}

define internal void @function_body(%struct.RuntimeContext* %0, i8* %1, i32 %2) {
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
  %5 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext* %0, i32 3)
  %6 = inttoptr i64 %5 to i32*
  %7 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %0, i32 3, i32 0)
  %8 = mul i32 0, %7
  %9 = add i32 %8, 0
  %10 = getelementptr i32, i32* %6, i32 %9
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %4, %11
  %13 = icmp slt i32 %4, 0
  %14 = sext i1 %13 to i32
  %15 = icmp slt i32 %11, 0
  %16 = sext i1 %15 to i32
  %17 = mul i32 %11, %12
  %18 = icmp ne i32 %14, %16
  %19 = sext i1 %18 to i32
  %20 = icmp ne i32 %4, 0
  %21 = sext i1 %20 to i32
  %22 = icmp ne i32 %17, %4
  %23 = sext i1 %22 to i32
  %24 = and i32 %19, %21
  %25 = and i32 %24, %23
  %26 = add i32 %12, %25
  %27 = mul i32 %11, %26
  %28 = sub i32 %4, %27
  %29 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %0, i32 3, i32 0)
  %30 = mul i32 0, %29
  %31 = add i32 %30, 1
  %32 = getelementptr i32, i32* %6, i32 %31
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %26, %33
  %35 = icmp slt i32 %26, 0
  %36 = sext i1 %35 to i32
  %37 = icmp slt i32 %33, 0
  %38 = sext i1 %37 to i32
  %39 = mul i32 %33, %34
  %40 = icmp ne i32 %36, %38
  %41 = sext i1 %40 to i32
  %42 = icmp ne i32 %26, 0
  %43 = sext i1 %42 to i32
  %44 = icmp ne i32 %39, %26
  %45 = sext i1 %44 to i32
  %46 = and i32 %41, %43
  %47 = and i32 %46, %45
  %48 = add i32 %34, %47
  %49 = mul i32 %33, %48
  %50 = sub i32 %26, %49
  %51 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %0, i32 3, i32 0)
  %52 = mul i32 0, %51
  %53 = add i32 %52, 2
  %54 = getelementptr i32, i32* %6, i32 %53
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %48, %55
  %57 = icmp slt i32 %48, 0
  %58 = sext i1 %57 to i32
  %59 = icmp slt i32 %55, 0
  %60 = sext i1 %59 to i32
  %61 = mul i32 %55, %56
  %62 = icmp ne i32 %58, %60
  %63 = sext i1 %62 to i32
  %64 = icmp ne i32 %48, 0
  %65 = sext i1 %64 to i32
  %66 = icmp ne i32 %61, %48
  %67 = sext i1 %66 to i32
  %68 = and i32 %63, %65
  %69 = and i32 %68, %67
  %70 = add i32 %56, %69
  %71 = mul i32 %55, %70
  %72 = sub i32 %48, %71
  %73 = sitofp i32 %28 to float
  %74 = fmul float %73, 0x3F947AE140000000
  %75 = sitofp i32 %50 to float
  %76 = fmul float %75, 0x3F947AE140000000
  %77 = sitofp i32 %72 to float
  %78 = fmul float %77, 0x3F947AE140000000
  %79 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext* %0, i32 2)
  %80 = inttoptr i64 %79 to float*
  %81 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %0, i32 2, i32 0)
  %82 = mul i32 0, %81
  %83 = add i32 %82, 0
  %84 = mul i32 %83, 3
  %85 = add i32 %84, 0
  %86 = getelementptr float, float* %80, i32 %85
  %87 = load float, float* %86, align 4
  %88 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %0, i32 2, i32 0)
  %89 = mul i32 0, %88
  %90 = add i32 %89, 0
  %91 = mul i32 %90, 3
  %92 = add i32 %91, 1
  %93 = getelementptr float, float* %80, i32 %92
  %94 = load float, float* %93, align 4
  %95 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %0, i32 2, i32 0)
  %96 = mul i32 0, %95
  %97 = add i32 %96, 0
  %98 = mul i32 %97, 3
  %99 = add i32 %98, 2
  %100 = getelementptr float, float* %80, i32 %99
  %101 = load float, float* %100, align 4
  %102 = fadd float %74, %87
  %103 = fadd float %76, %94
  %104 = fadd float %78, %101
  %105 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext* %0, i32 0)
  %106 = inttoptr i64 %105 to float*
  %107 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %0, i32 0, i32 0)
  %108 = mul i32 0, %107
  %109 = add i32 %108, %4
  %110 = mul i32 %109, 3
  %111 = add i32 %110, 0
  %112 = getelementptr float, float* %106, i32 %111
  store float %102, float* %112, align 4
  %113 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %0, i32 0, i32 0)
  %114 = mul i32 0, %113
  %115 = add i32 %114, %4
  %116 = mul i32 %115, 3
  %117 = add i32 %116, 1
  %118 = getelementptr float, float* %106, i32 %117
  store float %103, float* %118, align 4
  %119 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %0, i32 0, i32 0)
  %120 = mul i32 0, %119
  %121 = add i32 %120, %4
  %122 = mul i32 %121, 3
  %123 = add i32 %122, 2
  %124 = getelementptr float, float* %106, i32 %123
  store float %104, float* %124, align 4
  %125 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext* %0, i32 1)
  %126 = inttoptr i64 %125 to float*
  %127 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %0, i32 1, i32 0)
  %128 = mul i32 0, %127
  %129 = add i32 %128, %4
  %130 = mul i32 %129, 3
  %131 = add i32 %130, 0
  %132 = getelementptr float, float* %126, i32 %131
  store float 0.000000e+00, float* %132, align 4
  %133 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %0, i32 1, i32 0)
  %134 = mul i32 0, %133
  %135 = add i32 %134, %4
  %136 = mul i32 %135, 3
  %137 = add i32 %136, 1
  %138 = getelementptr float, float* %126, i32 %137
  store float 0.000000e+00, float* %138, align 4
  %139 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %0, i32 1, i32 0)
  %140 = mul i32 0, %139
  %141 = add i32 %140, %4
  %142 = mul i32 %141, 3
  %143 = add i32 %142, 2
  %144 = getelementptr float, float* %126, i32 %143
  store float 0.000000e+00, float* %144, align 4
  br label %final
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @RuntimeContext_get_args(%struct.RuntimeContext* %0, i32 %1) #0 {
  %3 = alloca %struct.RuntimeContext*, align 8
  %4 = alloca i32, align 4
  store %struct.RuntimeContext* %0, %struct.RuntimeContext** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.RuntimeContext*, %struct.RuntimeContext** %3, align 8
  %6 = getelementptr inbounds %struct.RuntimeContext, %struct.RuntimeContext* %5, i32 0, i32 1
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [64 x i64], [64 x i64]* %6, i64 0, i64 %8
  %10 = load i64, i64* %9, align 8
  ret i64 %10
}

; Function Attrs: alwaysinline nounwind uwtable
define internal %struct.LLVMRuntime* @RuntimeContext_get_runtime(%struct.RuntimeContext* %0) #0 {
  %2 = alloca %struct.RuntimeContext*, align 8
  store %struct.RuntimeContext* %0, %struct.RuntimeContext** %2, align 8
  %3 = load %struct.RuntimeContext*, %struct.RuntimeContext** %2, align 8
  %4 = getelementptr inbounds %struct.RuntimeContext, %struct.RuntimeContext* %3, i32 0, i32 0
  %5 = load %struct.LLVMRuntime*, %struct.LLVMRuntime** %4, align 8
  ret %struct.LLVMRuntime* %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.RuntimeContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.RuntimeContext* %0, %struct.RuntimeContext** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.RuntimeContext*, %struct.RuntimeContext** %4, align 8
  %8 = getelementptr inbounds %struct.RuntimeContext, %struct.RuntimeContext* %7, i32 0, i32 3
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
define internal i8* @get_temporary_pointer(%struct.LLVMRuntime* %0, i64 %1) #0 {
  %3 = alloca %struct.LLVMRuntime*, align 8
  %4 = alloca i64, align 8
  store %struct.LLVMRuntime* %0, %struct.LLVMRuntime** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.LLVMRuntime*, %struct.LLVMRuntime** %3, align 8
  %6 = getelementptr inbounds %struct.LLVMRuntime, %struct.LLVMRuntime* %5, i32 0, i32 17
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  ret i8* %9
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @gpu_parallel_range_for(%struct.RuntimeContext* %0, i32 %1, i32 %2, void (%struct.RuntimeContext*, i8*)* %3, void (%struct.RuntimeContext*, i8*, i32)* %4, void (%struct.RuntimeContext*, i8*)* %5, i64 %6) #0 {
  %8 = alloca %struct.RuntimeContext*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.RuntimeContext*, i8*)*, align 8
  %12 = alloca void (%struct.RuntimeContext*, i8*, i32)*, align 8
  %13 = alloca void (%struct.RuntimeContext*, i8*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.RuntimeContext* %0, %struct.RuntimeContext** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store void (%struct.RuntimeContext*, i8*)* %3, void (%struct.RuntimeContext*, i8*)** %11, align 8
  store void (%struct.RuntimeContext*, i8*, i32)* %4, void (%struct.RuntimeContext*, i8*, i32)** %12, align 8
  store void (%struct.RuntimeContext*, i8*)* %5, void (%struct.RuntimeContext*, i8*)** %13, align 8
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
  %30 = load void (%struct.RuntimeContext*, i8*)*, void (%struct.RuntimeContext*, i8*)** %11, align 8
  %31 = icmp ne void (%struct.RuntimeContext*, i8*)* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = load void (%struct.RuntimeContext*, i8*)*, void (%struct.RuntimeContext*, i8*)** %11, align 8
  %34 = load %struct.RuntimeContext*, %struct.RuntimeContext** %8, align 8
  %35 = load i8*, i8** %18, align 8
  call void %33(%struct.RuntimeContext* %34, i8* %35)
  br label %36

36:                                               ; preds = %32, %7
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load void (%struct.RuntimeContext*, i8*, i32)*, void (%struct.RuntimeContext*, i8*, i32)** %12, align 8
  %43 = load %struct.RuntimeContext*, %struct.RuntimeContext** %8, align 8
  %44 = load i8*, i8** %18, align 8
  %45 = load i32, i32* %15, align 4
  call void %42(%struct.RuntimeContext* %43, i8* %44, i32 %45)
  %46 = call i32 @block_dim()
  %47 = call i32 @grid_dim()
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %15, align 4
  br label %37

51:                                               ; preds = %37
  %52 = load void (%struct.RuntimeContext*, i8*)*, void (%struct.RuntimeContext*, i8*)** %13, align 8
  %53 = icmp ne void (%struct.RuntimeContext*, i8*)* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load void (%struct.RuntimeContext*, i8*)*, void (%struct.RuntimeContext*, i8*)** %13, align 8
  %56 = load %struct.RuntimeContext*, %struct.RuntimeContext** %8, align 8
  %57 = load i8*, i8** %18, align 8
  call void %55(%struct.RuntimeContext* %56, i8* %57)
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

!0 = !{void (%struct.RuntimeContext*)* @initialize_particle_c76_0_kernel_0_serial, !"kernel", i32 1}
!1 = !{void (%struct.RuntimeContext*)* @initialize_particle_c76_0_kernel_0_serial, !"maxntidx", i32 1}
!2 = !{void (%struct.RuntimeContext*)* @initialize_particle_c76_0_kernel_0_serial, !"minctasm", i32 2}
!3 = !{void (%struct.RuntimeContext*)* @initialize_particle_c76_0_kernel_1_range_for, !"kernel", i32 1}
!4 = !{void (%struct.RuntimeContext*)* @initialize_particle_c76_0_kernel_1_range_for, !"maxntidx", i32 128}
!5 = !{void (%struct.RuntimeContext*)* @initialize_particle_c76_0_kernel_1_range_for, !"minctasm", i32 2}
!6 = !{null, !"align", i32 8}
!7 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!8 = !{null, !"align", i32 16}
!9 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!10 = !{!"Ubuntu clang version 11.1.0-6"}
!11 = !{i32 1, i32 4}
!12 = !{i32 1, !"wchar_size", i32 4}
