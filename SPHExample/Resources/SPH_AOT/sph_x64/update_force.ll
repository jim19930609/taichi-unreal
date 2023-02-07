; ModuleID = 'kernel'
source_filename = "kernel"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type { %struct.RuntimeContext.96*, void (%struct.RuntimeContext.96*, i8*)*, void (%struct.RuntimeContext.96*, i8*, i32)*, void (%struct.RuntimeContext.96*, i8*)*, i64, i32, i32, i32, i32 }
%struct.RuntimeContext.96 = type { %struct.LLVMRuntime.95*, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], i64* }
%struct.LLVMRuntime.95 = type { i8, i64, i8*, i8*, i8* (i8*, i64, i64)*, void (i8*)*, void (i8*, ...)*, i32 (i8*, i64, i8*, %struct.__va_list_tag.89*)*, i8*, [512 x i8*], [512 x i64], i8*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, [1024 x %struct.ListManager.90*], [1024 x %struct.NodeManager.91*], %struct.NodeManager.91*, [1024 x i8*], i8*, %struct.RandState.92*, %struct.MemRequestQueue.94*, i8*, void (i8*, i8*)*, void (i8*)*, [2048 x i8], [32 x i64], i32, i64, i8*, i32, i32, i64, i8* }
%struct.__va_list_tag.89 = type { i32, i32, i8*, i8* }
%struct.ListManager.90 = type { [131072 x i8*], i64, i64, i32, i32, i32, %struct.LLVMRuntime.95* }
%struct.NodeManager.91 = type <{ %struct.LLVMRuntime.95*, i32, i32, i32, i32, %struct.ListManager.90*, %struct.ListManager.90*, %struct.ListManager.90*, i32, [4 x i8] }>
%struct.RandState.92 = type { i32, i32, i32, i32, i32 }
%struct.MemRequestQueue.94 = type { [65536 x %struct.MemRequest.93], i32, i32 }
%struct.MemRequest.93 = type { i64, i64, i8*, i64 }

@.str.2 = private unnamed_addr constant [21 x i8] c"step must not be %d\0A\00", align 1

define void @update_force_c80_0_kernel_0_serial(%struct.RuntimeContext.96* %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %context, i32 0, i32 0)
  %1 = call %struct.LLVMRuntime.95* @RuntimeContext_get_runtime(%struct.RuntimeContext.96* %context)
  %2 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.95* %1, i64 0)
  %3 = bitcast i8* %2 to i32*
  store i32 %0, i32* %3, align 4
  br label %final
}

define void @update_force_c80_0_kernel_1_range_for(%struct.RuntimeContext.96* %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call %struct.LLVMRuntime.95* @RuntimeContext_get_runtime(%struct.RuntimeContext.96* %context)
  %1 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.95* %0, i64 0)
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  call void @cpu_parallel_range_for(%struct.RuntimeContext.96* %context, i32 16, i32 0, i32 %3, i32 1, i32 512, void (%struct.RuntimeContext.96*, i8*)* null, void (%struct.RuntimeContext.96*, i8*, i32)* @function_body, void (%struct.RuntimeContext.96*, i8*)* null, i64 1)
  br label %final
}

define internal void @function_body(%struct.RuntimeContext.96* %0, i8* %1, i32 %2) {
allocs:
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  br label %entry

final:                                            ; preds = %after_for
  ret void

entry:                                            ; preds = %allocs
  br label %function_body

function_body:                                    ; preds = %entry
  store i32 %2, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.96* %0, i32 5)
  %17 = inttoptr i64 %16 to float*
  %18 = getelementptr float, float* %17, i32 0
  %19 = load float, float* %18, align 4
  %20 = getelementptr float, float* %17, i32 1
  %21 = load float, float* %20, align 4
  %22 = getelementptr float, float* %17, i32 2
  %23 = load float, float* %22, align 4
  %24 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.96* %0, i32 4)
  %25 = inttoptr i64 %24 to float*
  %26 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 4, i32 0)
  %27 = mul i32 0, %26
  %28 = add i32 %27, %15
  %29 = mul i32 %28, 3
  %30 = add i32 %29, 0
  %31 = getelementptr float, float* %25, i32 %30
  %32 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 4, i32 0)
  %33 = mul i32 0, %32
  %34 = add i32 %33, %15
  %35 = mul i32 %34, 3
  %36 = add i32 %35, 1
  %37 = getelementptr float, float* %25, i32 %36
  %38 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 4, i32 0)
  %39 = mul i32 0, %38
  %40 = add i32 %39, %15
  %41 = mul i32 %40, 3
  %42 = add i32 %41, 2
  %43 = getelementptr float, float* %25, i32 %42
  %44 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.96* %0, i32 0)
  %45 = inttoptr i64 %44 to float*
  %46 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.96* %0, i32 3)
  %47 = inttoptr i64 %46 to float*
  %48 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.96* %0, i32 2)
  %49 = inttoptr i64 %48 to float*
  %50 = call i64 @RuntimeContext_get_args(%struct.RuntimeContext.96* %0, i32 1)
  %51 = inttoptr i64 %50 to float*
  %52 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 0, i32 0)
  %53 = mul i32 0, %52
  %54 = add i32 %53, %15
  %55 = mul i32 %54, 3
  %56 = add i32 %55, 0
  %57 = getelementptr float, float* %45, i32 %56
  %58 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 0, i32 0)
  %59 = mul i32 0, %58
  %60 = add i32 %59, %15
  %61 = mul i32 %60, 3
  %62 = add i32 %61, 1
  %63 = getelementptr float, float* %45, i32 %62
  %64 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 0, i32 0)
  %65 = mul i32 0, %64
  %66 = add i32 %65, %15
  %67 = mul i32 %66, 3
  %68 = add i32 %67, 2
  %69 = getelementptr float, float* %45, i32 %68
  %70 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 3, i32 0)
  %71 = mul i32 0, %70
  %72 = add i32 %71, %15
  %73 = getelementptr float, float* %47, i32 %72
  %74 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 2, i32 0)
  %75 = mul i32 0, %74
  %76 = add i32 %75, %15
  %77 = getelementptr float, float* %49, i32 %76
  %78 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 1, i32 0)
  %79 = mul i32 0, %78
  %80 = add i32 %79, %15
  %81 = mul i32 %80, 3
  %82 = add i32 %81, 0
  %83 = getelementptr float, float* %51, i32 %82
  %84 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 1, i32 0)
  %85 = mul i32 0, %84
  %86 = add i32 %85, %15
  %87 = mul i32 %86, 3
  %88 = add i32 %87, 1
  %89 = getelementptr float, float* %51, i32 %88
  %90 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 1, i32 0)
  %91 = mul i32 0, %90
  %92 = add i32 %91, %15
  %93 = mul i32 %92, 3
  %94 = add i32 %93, 2
  %95 = getelementptr float, float* %51, i32 %94
  %96 = call %struct.LLVMRuntime.95* @RuntimeContext_get_runtime(%struct.RuntimeContext.96* %0)
  %97 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.95* %96, i64 0)
  %98 = bitcast i8* %97 to i32*
  %99 = load i32, i32* %98, align 4
  store float 0.000000e+00, float* %4, align 4
  store float %19, float* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  store float %21, float* %5, align 4
  store float 0.000000e+00, float* %6, align 4
  store float %23, float* %6, align 4
  store i32 0, i32* %7, align 4
  br label %for_loop_test

for_loop_body:                                    ; preds = %for_loop_test
  %100 = load i32, i32* %7, align 4
  %101 = load float, float* %57, align 4
  %102 = load float, float* %63, align 4
  %103 = load float, float* %69, align 4
  %104 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 0, i32 0)
  %105 = mul i32 0, %104
  %106 = add i32 %105, %100
  %107 = mul i32 %106, 3
  %108 = add i32 %107, 0
  %109 = getelementptr float, float* %45, i32 %108
  %110 = load float, float* %109, align 4
  %111 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 0, i32 0)
  %112 = mul i32 0, %111
  %113 = add i32 %112, %100
  %114 = mul i32 %113, 3
  %115 = add i32 %114, 1
  %116 = getelementptr float, float* %45, i32 %115
  %117 = load float, float* %116, align 4
  %118 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 0, i32 0)
  %119 = mul i32 0, %118
  %120 = add i32 %119, %100
  %121 = mul i32 %120, 3
  %122 = add i32 %121, 2
  %123 = getelementptr float, float* %45, i32 %122
  %124 = load float, float* %123, align 4
  %125 = fsub float %101, %110
  %126 = fsub float %102, %117
  %127 = fsub float %103, %124
  %128 = fmul float %125, %125
  %129 = fmul float %126, %126
  %130 = fmul float %127, %127
  %131 = fadd float %128, %129
  %132 = fadd float %131, %130
  %133 = call float @llvm.sqrt.f32(float %132)
  store float 0.000000e+00, float* %8, align 4
  store float 0.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  %134 = fcmp oeq float %133, 0.000000e+00
  %135 = sext i1 %134 to i32
  %136 = and i32 %135, 1
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %true_block, label %false_block

for_loop_inc:                                     ; preds = %after_if12
  %138 = load i32, i32* %7, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %for_loop_test

after_for:                                        ; preds = %for_loop_test
  %140 = load float, float* %6, align 4
  store float %140, float* %43, align 4
  %141 = load float, float* %5, align 4
  store float %141, float* %37, align 4
  %142 = load float, float* %4, align 4
  store float %142, float* %31, align 4
  br label %final

for_loop_test:                                    ; preds = %for_loop_inc, %function_body
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, %99
  br i1 %144, label %for_loop_body, label %after_for

true_block:                                       ; preds = %for_loop_body
  br label %after_if

false_block:                                      ; preds = %for_loop_body
  %145 = fcmp ole float %133, 0x3FA47AE140000000
  %146 = sext i1 %145 to i32
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %true_block1, label %false_block2

after_if:                                         ; preds = %after_if3, %true_block
  %149 = load float, float* %73, align 4
  %150 = load float, float* %77, align 4
  %151 = fmul float %150, %150
  %152 = fdiv float %149, %151
  %153 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 3, i32 0)
  %154 = mul i32 0, %153
  %155 = add i32 %154, %100
  %156 = getelementptr float, float* %47, i32 %155
  %157 = load float, float* %156, align 4
  %158 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 2, i32 0)
  %159 = mul i32 0, %158
  %160 = add i32 %159, %100
  %161 = getelementptr float, float* %49, i32 %160
  %162 = load float, float* %161, align 4
  %163 = fmul float %162, %162
  %164 = fdiv float %157, %163
  %165 = fadd float %152, %164
  %166 = fmul float %165, 0xBF7A36E2E0000000
  %167 = load float, float* %8, align 4
  %168 = load float, float* %9, align 4
  %169 = load float, float* %10, align 4
  %170 = fmul float %166, %167
  %171 = fmul float %166, %168
  %172 = fmul float %166, %169
  %173 = load float, float* %4, align 4
  %174 = fadd float %173, %170
  %175 = load float, float* %5, align 4
  %176 = fadd float %175, %171
  %177 = load float, float* %6, align 4
  %178 = fadd float %177, %172
  %179 = load float, float* %83, align 4
  %180 = load float, float* %89, align 4
  %181 = load float, float* %95, align 4
  %182 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 1, i32 0)
  %183 = mul i32 0, %182
  %184 = add i32 %183, %100
  %185 = mul i32 %184, 3
  %186 = add i32 %185, 0
  %187 = getelementptr float, float* %51, i32 %186
  %188 = load float, float* %187, align 4
  %189 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 1, i32 0)
  %190 = mul i32 0, %189
  %191 = add i32 %190, %100
  %192 = mul i32 %191, 3
  %193 = add i32 %192, 1
  %194 = getelementptr float, float* %51, i32 %193
  %195 = load float, float* %194, align 4
  %196 = call i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 1, i32 0)
  %197 = mul i32 0, %196
  %198 = add i32 %197, %100
  %199 = mul i32 %198, 3
  %200 = add i32 %199, 2
  %201 = getelementptr float, float* %51, i32 %200
  %202 = load float, float* %201, align 4
  %203 = fsub float %179, %188
  %204 = fsub float %180, %195
  %205 = fsub float %181, %202
  %206 = fmul float %203, %125
  %207 = fmul float %204, %126
  %208 = fmul float %205, %127
  %209 = fadd float %206, %207
  %210 = fadd float %209, %208
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  store float 0.000000e+00, float* %13, align 4
  %211 = icmp ne i32 %136, 0
  br i1 %211, label %true_block4, label %false_block5

true_block1:                                      ; preds = %false_block
  %212 = fsub float 0x3FA47AE140000000, %133
  %213 = fmul float %212, 0xC1EA0E1B40000000
  %214 = fmul float %213, %212
  %215 = fdiv float %125, %133
  %216 = fdiv float %126, %133
  %217 = fdiv float %127, %133
  %218 = fmul float %214, %215
  %219 = fmul float %214, %216
  %220 = fmul float %214, %217
  store float %218, float* %8, align 4
  store float %219, float* %9, align 4
  store float %220, float* %10, align 4
  br label %after_if3

false_block2:                                     ; preds = %false_block
  br label %after_if3

after_if3:                                        ; preds = %false_block2, %true_block1
  br label %after_if

true_block4:                                      ; preds = %after_if
  br label %after_if6

false_block5:                                     ; preds = %after_if
  %221 = fcmp ole float %133, 0x3FA47AE140000000
  %222 = sext i1 %221 to i32
  %223 = and i32 %222, 1
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %true_block7, label %false_block8

after_if6:                                        ; preds = %after_if9, %true_block4
  %225 = fmul float %210, 0x3F5F751040000000
  %226 = fadd float %133, 0x3EF0C6F7A0000000
  %227 = fdiv float %225, %226
  %228 = fdiv float %227, %162
  %229 = load float, float* %11, align 4
  %230 = load float, float* %12, align 4
  %231 = load float, float* %13, align 4
  %232 = fmul float %228, %229
  %233 = fmul float %228, %230
  %234 = fmul float %228, %231
  %235 = fadd float %174, %232
  %236 = fadd float %176, %233
  %237 = fadd float %178, %234
  %238 = fcmp ogt float %132, 0x3F3A36E2E0000000
  %239 = sext i1 %238 to i32
  %240 = and i32 %239, 1
  store float 0.000000e+00, float* %14, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %true_block10, label %false_block11

true_block7:                                      ; preds = %false_block5
  %242 = fsub float 0x3FA47AE140000000, %133
  %243 = fmul float %242, 0xC1EA0E1B40000000
  %244 = fmul float %243, %242
  %245 = fdiv float %125, %133
  %246 = fdiv float %126, %133
  %247 = fdiv float %127, %133
  %248 = fmul float %244, %245
  %249 = fmul float %244, %246
  %250 = fmul float %244, %247
  store float %248, float* %11, align 4
  store float %249, float* %12, align 4
  store float %250, float* %13, align 4
  br label %after_if9

false_block8:                                     ; preds = %false_block5
  br label %after_if9

after_if9:                                        ; preds = %false_block8, %true_block7
  br label %after_if6

true_block10:                                     ; preds = %after_if6
  %251 = fcmp ole float %133, 0x3FA47AE140000000
  %252 = sext i1 %251 to i32
  %253 = and i32 %252, 1
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %true_block13, label %false_block14

false_block11:                                    ; preds = %after_if6
  %255 = fmul float %125, 0xC049D16FC0000000
  %256 = fmul float %126, 0xC049D16FC0000000
  %257 = fmul float %127, 0xC049D16FC0000000
  %258 = fadd float %235, %255
  store float %258, float* %4, align 4
  %259 = fadd float %236, %256
  store float %259, float* %5, align 4
  %260 = fadd float %237, %257
  store float %260, float* %6, align 4
  br label %after_if12

after_if12:                                       ; preds = %after_if15, %false_block11
  br label %for_loop_inc

true_block13:                                     ; preds = %true_block10
  %261 = fmul float %133, %133
  %262 = fsub float 0x3F5A36E2E0000000, %261
  %263 = fmul float %262, 0x4295BDF8A0000000
  %264 = fmul float %263, %262
  %265 = fmul float %264, %262
  store float %265, float* %14, align 4
  br label %after_if15

false_block14:                                    ; preds = %true_block10
  br label %after_if15

after_if15:                                       ; preds = %false_block14, %true_block13
  %266 = fmul float %125, 0xBF747AE140000000
  %267 = fmul float %126, 0xBF747AE140000000
  %268 = fmul float %127, 0xBF747AE140000000
  %269 = load float, float* %14, align 4
  %270 = fmul float %266, %269
  %271 = fmul float %267, %269
  %272 = fmul float %268, %269
  %273 = fadd float %235, %270
  store float %273, float* %4, align 4
  %274 = fadd float %236, %271
  store float %274, float* %5, align 4
  %275 = fadd float %237, %272
  store float %275, float* %6, align 4
  br label %after_if12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @RuntimeContext_get_args(%struct.RuntimeContext.96* %0, i32 %1) #1 {
  %3 = alloca %struct.RuntimeContext.96*, align 8
  %4 = alloca i32, align 4
  store %struct.RuntimeContext.96* %0, %struct.RuntimeContext.96** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.RuntimeContext.96*, %struct.RuntimeContext.96** %3, align 8
  %6 = getelementptr inbounds %struct.RuntimeContext.96, %struct.RuntimeContext.96* %5, i32 0, i32 1
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [64 x i64], [64 x i64]* %6, i64 0, i64 %8
  %10 = load i64, i64* %9, align 8
  ret i64 %10
}

; Function Attrs: alwaysinline nounwind uwtable
define internal %struct.LLVMRuntime.95* @RuntimeContext_get_runtime(%struct.RuntimeContext.96* %0) #1 {
  %2 = alloca %struct.RuntimeContext.96*, align 8
  store %struct.RuntimeContext.96* %0, %struct.RuntimeContext.96** %2, align 8
  %3 = load %struct.RuntimeContext.96*, %struct.RuntimeContext.96** %2, align 8
  %4 = getelementptr inbounds %struct.RuntimeContext.96, %struct.RuntimeContext.96* %3, i32 0, i32 0
  %5 = load %struct.LLVMRuntime.95*, %struct.LLVMRuntime.95** %4, align 8
  ret %struct.LLVMRuntime.95* %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 %1, i32 %2) #1 {
  %4 = alloca %struct.RuntimeContext.96*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.RuntimeContext.96* %0, %struct.RuntimeContext.96** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.RuntimeContext.96*, %struct.RuntimeContext.96** %4, align 8
  %8 = getelementptr inbounds %struct.RuntimeContext.96, %struct.RuntimeContext.96* %7, i32 0, i32 3
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
define internal i8* @get_temporary_pointer(%struct.LLVMRuntime.95* %0, i64 %1) #1 {
  %3 = alloca %struct.LLVMRuntime.95*, align 8
  %4 = alloca i64, align 8
  store %struct.LLVMRuntime.95* %0, %struct.LLVMRuntime.95** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.LLVMRuntime.95*, %struct.LLVMRuntime.95** %3, align 8
  %6 = getelementptr inbounds %struct.LLVMRuntime.95, %struct.LLVMRuntime.95* %5, i32 0, i32 17
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  ret i8* %9
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @cpu_parallel_range_for(%struct.RuntimeContext.96* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, void (%struct.RuntimeContext.96*, i8*)* %6, void (%struct.RuntimeContext.96*, i8*, i32)* %7, void (%struct.RuntimeContext.96*, i8*)* %8, i64 %9) #1 {
  %11 = alloca %struct.RuntimeContext.96*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca void (%struct.RuntimeContext.96*, i8*)*, align 8
  %18 = alloca void (%struct.RuntimeContext.96*, i8*, i32)*, align 8
  %19 = alloca void (%struct.RuntimeContext.96*, i8*)*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %0, align 8
  %22 = alloca %struct.LLVMRuntime.95*, align 8
  store %struct.RuntimeContext.96* %0, %struct.RuntimeContext.96** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store void (%struct.RuntimeContext.96*, i8*)* %6, void (%struct.RuntimeContext.96*, i8*)** %17, align 8
  store void (%struct.RuntimeContext.96*, i8*, i32)* %7, void (%struct.RuntimeContext.96*, i8*, i32)** %18, align 8
  store void (%struct.RuntimeContext.96*, i8*)* %8, void (%struct.RuntimeContext.96*, i8*)** %19, align 8
  store i64 %9, i64* %20, align 8
  call void @_ZN25range_task_helper_contextC2Ev(%0* %21) #5
  %23 = load %struct.RuntimeContext.96*, %struct.RuntimeContext.96** %11, align 8
  %24 = getelementptr inbounds %0, %0* %21, i32 0, i32 0
  store %struct.RuntimeContext.96* %23, %struct.RuntimeContext.96** %24, align 8
  %25 = load void (%struct.RuntimeContext.96*, i8*)*, void (%struct.RuntimeContext.96*, i8*)** %17, align 8
  %26 = getelementptr inbounds %0, %0* %21, i32 0, i32 1
  store void (%struct.RuntimeContext.96*, i8*)* %25, void (%struct.RuntimeContext.96*, i8*)** %26, align 8
  %27 = load i64, i64* %20, align 8
  %28 = getelementptr inbounds %0, %0* %21, i32 0, i32 4
  store i64 %27, i64* %28, align 8
  %29 = load void (%struct.RuntimeContext.96*, i8*, i32)*, void (%struct.RuntimeContext.96*, i8*, i32)** %18, align 8
  %30 = getelementptr inbounds %0, %0* %21, i32 0, i32 2
  store void (%struct.RuntimeContext.96*, i8*, i32)* %29, void (%struct.RuntimeContext.96*, i8*, i32)** %30, align 8
  %31 = load void (%struct.RuntimeContext.96*, i8*)*, void (%struct.RuntimeContext.96*, i8*)** %19, align 8
  %32 = getelementptr inbounds %0, %0* %21, i32 0, i32 3
  store void (%struct.RuntimeContext.96*, i8*)* %31, void (%struct.RuntimeContext.96*, i8*)** %32, align 8
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
  %45 = load %struct.RuntimeContext.96*, %struct.RuntimeContext.96** %11, align 8
  %46 = getelementptr inbounds %struct.RuntimeContext.96, %struct.RuntimeContext.96* %45, i32 0, i32 0
  %47 = load %struct.LLVMRuntime.95*, %struct.LLVMRuntime.95** %46, align 8
  call void @_Z13taichi_printfIJRiEEvP11LLVMRuntimePKcDpOT_(%struct.LLVMRuntime.95* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* nonnull align 4 dereferenceable(4) %15)
  call void @exit(i32 -1) #6
  unreachable

48:                                               ; preds = %41, %10
  %49 = load i32, i32* %16, align 4
  %50 = getelementptr inbounds %0, %0* %21, i32 0, i32 7
  store i32 %49, i32* %50, align 8
  %51 = load %struct.RuntimeContext.96*, %struct.RuntimeContext.96** %11, align 8
  %52 = getelementptr inbounds %struct.RuntimeContext.96, %struct.RuntimeContext.96* %51, i32 0, i32 0
  %53 = load %struct.LLVMRuntime.95*, %struct.LLVMRuntime.95** %52, align 8
  store %struct.LLVMRuntime.95* %53, %struct.LLVMRuntime.95** %22, align 8
  %54 = load %struct.LLVMRuntime.95*, %struct.LLVMRuntime.95** %22, align 8
  %55 = getelementptr inbounds %struct.LLVMRuntime.95, %struct.LLVMRuntime.95* %54, i32 0, i32 12
  %56 = load void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)** %55, align 8
  %57 = load %struct.LLVMRuntime.95*, %struct.LLVMRuntime.95** %22, align 8
  %58 = getelementptr inbounds %struct.LLVMRuntime.95, %struct.LLVMRuntime.95* %57, i32 0, i32 11
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
  store void (%struct.RuntimeContext.96*, i8*)* null, void (%struct.RuntimeContext.96*, i8*)** %4, align 8
  %5 = getelementptr inbounds %0, %0* %3, i32 0, i32 2
  store void (%struct.RuntimeContext.96*, i8*, i32)* null, void (%struct.RuntimeContext.96*, i8*, i32)** %5, align 8
  %6 = getelementptr inbounds %0, %0* %3, i32 0, i32 3
  store void (%struct.RuntimeContext.96*, i8*)* null, void (%struct.RuntimeContext.96*, i8*)** %6, align 8
  %7 = getelementptr inbounds %0, %0* %3, i32 0, i32 4
  store i64 1, i64* %7, align 8
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_Z13taichi_printfIJRiEEvP11LLVMRuntimePKcDpOT_(%struct.LLVMRuntime.95* %0, i8* %1, i32* nonnull align 4 dereferenceable(4) %2) #1 {
  %4 = alloca %struct.LLVMRuntime.95*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.LLVMRuntime.95* %0, %struct.LLVMRuntime.95** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.LLVMRuntime.95*, %struct.LLVMRuntime.95** %4, align 8
  %8 = getelementptr inbounds %struct.LLVMRuntime.95, %struct.LLVMRuntime.95* %7, i32 0, i32 6
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
  %11 = alloca %struct.RuntimeContext.96, align 8
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
  %30 = load void (%struct.RuntimeContext.96*, i8*)*, void (%struct.RuntimeContext.96*, i8*)** %29, align 8
  %31 = icmp ne void (%struct.RuntimeContext.96*, i8*)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = getelementptr inbounds %0, %0* %7, i32 0, i32 1
  %34 = load void (%struct.RuntimeContext.96*, i8*)*, void (%struct.RuntimeContext.96*, i8*)** %33, align 8
  %35 = getelementptr inbounds %0, %0* %7, i32 0, i32 0
  %36 = load %struct.RuntimeContext.96*, %struct.RuntimeContext.96** %35, align 8
  %37 = load i8*, i8** %10, align 8
  call void %34(%struct.RuntimeContext.96* %36, i8* %37)
  br label %38

38:                                               ; preds = %32, %3
  %39 = getelementptr inbounds %0, %0* %7, i32 0, i32 0
  %40 = load %struct.RuntimeContext.96*, %struct.RuntimeContext.96** %39, align 8
  %41 = bitcast %struct.RuntimeContext.96* %11 to i8*
  %42 = bitcast %struct.RuntimeContext.96* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 3224, i1 false)
  %43 = load i32, i32* %5, align 4
  %44 = getelementptr inbounds %struct.RuntimeContext.96, %struct.RuntimeContext.96* %11, i32 0, i32 4
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
  %70 = load void (%struct.RuntimeContext.96*, i8*, i32)*, void (%struct.RuntimeContext.96*, i8*, i32)** %69, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %15, align 4
  call void %70(%struct.RuntimeContext.96* %11, i8* %71, i32 %72)
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
  %104 = load void (%struct.RuntimeContext.96*, i8*, i32)*, void (%struct.RuntimeContext.96*, i8*, i32)** %103, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* %19, align 4
  call void %104(%struct.RuntimeContext.96* %11, i8* %105, i32 %106)
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
  %114 = load void (%struct.RuntimeContext.96*, i8*)*, void (%struct.RuntimeContext.96*, i8*)** %113, align 8
  %115 = icmp ne void (%struct.RuntimeContext.96*, i8*)* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = getelementptr inbounds %0, %0* %7, i32 0, i32 3
  %118 = load void (%struct.RuntimeContext.96*, i8*)*, void (%struct.RuntimeContext.96*, i8*)** %117, align 8
  %119 = getelementptr inbounds %0, %0* %7, i32 0, i32 0
  %120 = load %struct.RuntimeContext.96*, %struct.RuntimeContext.96** %119, align 8
  %121 = load i8*, i8** %10, align 8
  call void %118(%struct.RuntimeContext.96* %120, i8* %121)
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
