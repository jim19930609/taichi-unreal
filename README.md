# Taichi AOT Plugin for UE5
Currently only support on Linux platform
TODO: Add C-API library for Windows & MacOS

## SPH AOT Example
This is the ultimate example with AOT Plugin integrated, which demonstrates SPH AOT runs in UE5 project.

C++ class `SPH_Particles_Box` contains the major AOT implementation.

TODO: Use the resulting positions from "SPH AOT" to render some UE5 static meshes.

SPH_AOT files are generated from 
```
git@github.com:taichi-dev/taichi-aot-demo.git
commit: d1a4842 [misc] Remove usage of deprecated kwarg in rw_texture type annotation (#111)
```

C-API library is generated from
```
git@github.com:taichi-dev/taichi.git
commit: 2603e6695 [llvm] Unify the llvm context of host and device (#7249)
```

## How to generate Taichi AOT Plugin
1. Open UE5 project `SPHExample`, update the Taichi C-API library under `Plugins/AOTPlugin/Source/AOTPlugin/Public/c_api` if neccessary.

2. `taichi_unreal.hpp` is generated from `taichi.hpp` by replacing all function calls to C-API with a macro `CALL_C_API_FUNC`, 
which wraps the original direct function calls with `dlopen` & `dlsym`.
TODO: Automatically generate `taichi_unreal.hpp` from `taichi.hpp`

3. UE5: `Edit->Plugins->AOTPlugin->Package` to generate the Taichi AOT Plugin
