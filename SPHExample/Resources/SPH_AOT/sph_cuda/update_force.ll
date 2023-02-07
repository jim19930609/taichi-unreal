; ModuleID = 'kernel'
source_filename = "kernel"
target triple = "nvptx64-nvidia-cuda"

%struct.RuntimeContext.96 = type { %struct.LLVMRuntime.95*, [64 x i64], [64 x i64], [32 x [12 x i32]], i32, [64 x i8], [64 x i64], [64 x i8], i64* }
%struct.LLVMRuntime.95 = type { i8, i64, i8*, i8*, i8* (i8*, i64, i64)*, void (i8*)*, void (i8*, ...)*, i32 (i8*, i64, i8*, %struct.__va_list_tag.89*)*, i8*, [512 x i8*], [512 x i64], i8*, void (i8*, i32, i32, i8*, void (i8*, i32, i32)*)*, [1024 x %struct.ListManager.90*], [1024 x %struct.NodeManager.91*], %struct.NodeManager.91*, [1024 x i8*], i8*, %struct.RandState.92*, %struct.MemRequestQueue.94*, i8*, void (i8*, i8*)*, void (i8*)*, [2048 x i8], [32 x i64], i32, i64, i8*, i32, i32, i64, i8* }
%struct.__va_list_tag.89 = type { i32, i32, i8*, i8* }
%struct.ListManager.90 = type { [131072 x i8*], i64, i64, i32, i32, i32, %struct.LLVMRuntime.95* }
%struct.NodeManager.91 = type <{ %struct.LLVMRuntime.95*, i32, i32, i32, i32, %struct.ListManager.90*, %struct.ListManager.90*, %struct.ListManager.90*, i32, [4 x i8] }>
%struct.RandState.92 = type { i32, i32, i32, i32, i32 }
%struct.MemRequestQueue.94 = type { [65536 x %struct.MemRequest.93], i32, i32 }
%struct.MemRequest.93 = type { i64, i64, i8*, i64 }

define void @update_force_c80_0_kernel_0_serial(%struct.RuntimeContext.96* byval(%struct.RuntimeContext.96) %context) {
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

define void @update_force_c80_0_kernel_1_range_for(%struct.RuntimeContext.96* byval(%struct.RuntimeContext.96) %context) {
entry:
  br label %body

final:                                            ; preds = %body
  ret void

body:                                             ; preds = %entry
  %0 = call %struct.LLVMRuntime.95* @RuntimeContext_get_runtime(%struct.RuntimeContext.96* %context)
  %1 = call i8* @get_temporary_pointer(%struct.LLVMRuntime.95* %0, i64 0)
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  call void @gpu_parallel_range_for(%struct.RuntimeContext.96* %context, i32 0, i32 %3, void (%struct.RuntimeContext.96*, i8*)* null, void (%struct.RuntimeContext.96*, i8*, i32)* @function_body, void (%struct.RuntimeContext.96*, i8*)* null, i64 1)
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
  %133 = call float @__nv_sqrtf(float %132)
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
  %213 = fmul float %212, 0xC1EA0E1B60000000
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
  %243 = fmul float %242, 0xC1EA0E1B60000000
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

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @RuntimeContext_get_args(%struct.RuntimeContext.96* %0, i32 %1) #0 {
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
define internal %struct.LLVMRuntime.95* @RuntimeContext_get_runtime(%struct.RuntimeContext.96* %0) #0 {
  %2 = alloca %struct.RuntimeContext.96*, align 8
  store %struct.RuntimeContext.96* %0, %struct.RuntimeContext.96** %2, align 8
  %3 = load %struct.RuntimeContext.96*, %struct.RuntimeContext.96** %2, align 8
  %4 = getelementptr inbounds %struct.RuntimeContext.96, %struct.RuntimeContext.96* %3, i32 0, i32 0
  %5 = load %struct.LLVMRuntime.95*, %struct.LLVMRuntime.95** %4, align 8
  ret %struct.LLVMRuntime.95* %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @RuntimeContext_get_extra_args(%struct.RuntimeContext.96* %0, i32 %1, i32 %2) #0 {
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
define internal i8* @get_temporary_pointer(%struct.LLVMRuntime.95* %0, i64 %1) #0 {
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
define internal void @gpu_parallel_range_for(%struct.RuntimeContext.96* %0, i32 %1, i32 %2, void (%struct.RuntimeContext.96*, i8*)* %3, void (%struct.RuntimeContext.96*, i8*, i32)* %4, void (%struct.RuntimeContext.96*, i8*)* %5, i64 %6) #0 {
  %8 = alloca %struct.RuntimeContext.96*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.RuntimeContext.96*, i8*)*, align 8
  %12 = alloca void (%struct.RuntimeContext.96*, i8*, i32)*, align 8
  %13 = alloca void (%struct.RuntimeContext.96*, i8*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.RuntimeContext.96* %0, %struct.RuntimeContext.96** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store void (%struct.RuntimeContext.96*, i8*)* %3, void (%struct.RuntimeContext.96*, i8*)** %11, align 8
  store void (%struct.RuntimeContext.96*, i8*, i32)* %4, void (%struct.RuntimeContext.96*, i8*, i32)** %12, align 8
  store void (%struct.RuntimeContext.96*, i8*)* %5, void (%struct.RuntimeContext.96*, i8*)** %13, align 8
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
  %30 = load void (%struct.RuntimeContext.96*, i8*)*, void (%struct.RuntimeContext.96*, i8*)** %11, align 8
  %31 = icmp ne void (%struct.RuntimeContext.96*, i8*)* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %7
  %33 = load void (%struct.RuntimeContext.96*, i8*)*, void (%struct.RuntimeContext.96*, i8*)** %11, align 8
  %34 = load %struct.RuntimeContext.96*, %struct.RuntimeContext.96** %8, align 8
  %35 = load i8*, i8** %18, align 8
  call void %33(%struct.RuntimeContext.96* %34, i8* %35)
  br label %36

36:                                               ; preds = %32, %7
  br label %37

37:                                               ; preds = %41, %36
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load void (%struct.RuntimeContext.96*, i8*, i32)*, void (%struct.RuntimeContext.96*, i8*, i32)** %12, align 8
  %43 = load %struct.RuntimeContext.96*, %struct.RuntimeContext.96** %8, align 8
  %44 = load i8*, i8** %18, align 8
  %45 = load i32, i32* %15, align 4
  call void %42(%struct.RuntimeContext.96* %43, i8* %44, i32 %45)
  %46 = call i32 @block_dim()
  %47 = call i32 @grid_dim()
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %15, align 4
  br label %37

51:                                               ; preds = %37
  %52 = load void (%struct.RuntimeContext.96*, i8*)*, void (%struct.RuntimeContext.96*, i8*)** %13, align 8
  %53 = icmp ne void (%struct.RuntimeContext.96*, i8*)* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load void (%struct.RuntimeContext.96*, i8*)*, void (%struct.RuntimeContext.96*, i8*)** %13, align 8
  %56 = load %struct.RuntimeContext.96*, %struct.RuntimeContext.96** %8, align 8
  %57 = load i8*, i8** %18, align 8
  call void %55(%struct.RuntimeContext.96* %56, i8* %57)
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

!0 = !{void (%struct.RuntimeContext.96*)* @update_force_c80_0_kernel_0_serial, !"kernel", i32 1}
!1 = !{void (%struct.RuntimeContext.96*)* @update_force_c80_0_kernel_0_serial, !"maxntidx", i32 1}
!2 = !{void (%struct.RuntimeContext.96*)* @update_force_c80_0_kernel_0_serial, !"minctasm", i32 2}
!3 = !{void (%struct.RuntimeContext.96*)* @update_force_c80_0_kernel_1_range_for, !"kernel", i32 1}
!4 = !{void (%struct.RuntimeContext.96*)* @update_force_c80_0_kernel_1_range_for, !"maxntidx", i32 128}
!5 = !{void (%struct.RuntimeContext.96*)* @update_force_c80_0_kernel_1_range_for, !"minctasm", i32 2}
!6 = !{null, !"align", i32 8}
!7 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!8 = !{null, !"align", i32 16}
!9 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!10 = !{!"Ubuntu clang version 11.1.0-6"}
!11 = !{i32 1, i32 4}
!12 = !{i32 1, !"wchar_size", i32 4}
