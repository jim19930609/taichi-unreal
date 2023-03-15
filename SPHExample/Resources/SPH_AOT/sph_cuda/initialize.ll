; ModuleID = 'kernel'
source_filename = "kernel"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext.0 = type { ptr, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], ptr, i64 }

define void @initialize_c74_0_kernel_0_serial(ptr byval(%struct.RuntimeContext.0) %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call i64 @RuntimeContext_get_args(ptr %context, i32 0)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %3 = mul i32 0, %2
  %4 = add i32 %3, 0
  %5 = mul i32 %4, 3
  %6 = add i32 %5, 0
  %7 = getelementptr float, ptr %1, i32 %6
  store float 0.000000e+00, ptr %7, align 4
  %8 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %9 = mul i32 0, %8
  %10 = add i32 %9, 0
  %11 = mul i32 %10, 3
  %12 = add i32 %11, 1
  %13 = getelementptr float, ptr %1, i32 %12
  store float 0.000000e+00, ptr %13, align 4
  %14 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %15 = mul i32 0, %14
  %16 = add i32 %15, 0
  %17 = mul i32 %16, 3
  %18 = add i32 %17, 2
  %19 = getelementptr float, ptr %1, i32 %18
  store float 0.000000e+00, ptr %19, align 4
  %20 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %21 = mul i32 0, %20
  %22 = add i32 %21, 1
  %23 = mul i32 %22, 3
  %24 = add i32 %23, 0
  %25 = getelementptr float, ptr %1, i32 %24
  store float 1.000000e+00, ptr %25, align 4
  %26 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %27 = mul i32 0, %26
  %28 = add i32 %27, 1
  %29 = mul i32 %28, 3
  %30 = add i32 %29, 1
  %31 = getelementptr float, ptr %1, i32 %30
  store float 1.000000e+00, ptr %31, align 4
  %32 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 0, i32 0)
  %33 = mul i32 0, %32
  %34 = add i32 %33, 1
  %35 = mul i32 %34, 3
  %36 = add i32 %35, 2
  %37 = getelementptr float, ptr %1, i32 %36
  store float 1.000000e+00, ptr %37, align 4
  %38 = call i64 @RuntimeContext_get_args(ptr %context, i32 1)
  %39 = inttoptr i64 %38 to ptr
  %40 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 1, i32 0)
  %41 = mul i32 0, %40
  %42 = add i32 %41, 0
  %43 = mul i32 %42, 3
  %44 = add i32 %43, 0
  %45 = getelementptr float, ptr %39, i32 %44
  store float 0x3FD3333340000000, ptr %45, align 4
  %46 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 1, i32 0)
  %47 = mul i32 0, %46
  %48 = add i32 %47, 0
  %49 = mul i32 %48, 3
  %50 = add i32 %49, 1
  %51 = getelementptr float, ptr %39, i32 %50
  store float 0x3FD3333340000000, ptr %51, align 4
  %52 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 1, i32 0)
  %53 = mul i32 0, %52
  %54 = add i32 %53, 0
  %55 = mul i32 %54, 3
  %56 = add i32 %55, 2
  %57 = getelementptr float, ptr %39, i32 %56
  store float 0x3FD3333340000000, ptr %57, align 4
  %58 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 1, i32 0)
  %59 = mul i32 0, %58
  %60 = add i32 %59, 1
  %61 = mul i32 %60, 3
  %62 = add i32 %61, 0
  %63 = getelementptr float, ptr %39, i32 %62
  store float 0x3FE6666660000000, ptr %63, align 4
  %64 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 1, i32 0)
  %65 = mul i32 0, %64
  %66 = add i32 %65, 1
  %67 = mul i32 %66, 3
  %68 = add i32 %67, 1
  %69 = getelementptr float, ptr %39, i32 %68
  store float 0x3FE6666660000000, ptr %69, align 4
  %70 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 1, i32 0)
  %71 = mul i32 0, %70
  %72 = add i32 %71, 1
  %73 = mul i32 %72, 3
  %74 = add i32 %73, 2
  %75 = getelementptr float, ptr %39, i32 %74
  store float 0x3FE6666660000000, ptr %75, align 4
  %76 = call i64 @RuntimeContext_get_args(ptr %context, i32 2)
  %77 = inttoptr i64 %76 to ptr
  %78 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 2, i32 0)
  %79 = mul i32 0, %78
  %80 = add i32 %79, 0
  %81 = getelementptr i32, ptr %77, i32 %80
  store i32 20, ptr %81, align 4
  %82 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 2, i32 0)
  %83 = mul i32 0, %82
  %84 = add i32 %83, 1
  %85 = getelementptr i32, ptr %77, i32 %84
  store i32 20, ptr %85, align 4
  %86 = call i32 @RuntimeContext_get_extra_args(ptr %context, i32 2, i32 0)
  %87 = mul i32 0, %86
  %88 = add i32 %87, 2
  %89 = getelementptr i32, ptr %77, i32 %88
  store i32 20, ptr %89, align 4
  br label %final
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define internal i64 @RuntimeContext_get_args(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.RuntimeContext.0, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [64 x i64], ptr %6, i64 0, i64 %8
  %10 = load i64, ptr %9, align 8
  ret i64 %10
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
  %8 = getelementptr inbounds %struct.RuntimeContext.0, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [32 x [12 x i32]], ptr %8, i64 0, i64 %10
  %12 = load i32, ptr %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [12 x i32], ptr %11, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  ret i32 %15
}

attributes #0 = { alwaysinline mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!nvvm.annotations = !{!0, !1, !2, !3, !4, !3, !5, !5, !5, !5, !6, !6, !5}
!llvm.ident = !{!7, !7}
!nvvmir.version = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14}

!0 = !{ptr @initialize_c74_0_kernel_0_serial, !"kernel", i32 1}
!1 = !{ptr @initialize_c74_0_kernel_0_serial, !"maxntidx", i32 1}
!2 = !{ptr @initialize_c74_0_kernel_0_serial, !"minctasm", i32 2}
!3 = !{null, !"align", i32 8}
!4 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!5 = !{null, !"align", i32 16}
!6 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!7 = !{!"Ubuntu clang version 15.0.6"}
!8 = !{i32 1, i32 4}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
