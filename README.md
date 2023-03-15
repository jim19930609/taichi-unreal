# Taichi AOT Plugin for UE5
Requires Unreal Engine 5.0.3 or above

Supports Linux & Windows

## SPH AOT Example
This is the ultimate example with AOT Plugin integrated, which demonstrates SPH AOT runs in an UE5 project.

C++ class `Source/SPHExample/SPH_Particles_Box` contains the major AOT implementation.

Taichi C-API were packaged into UE Plugin located at `Plugins/AOTPlugin`

SPH_AOT files were generated using:
```
git@github.com:taichi-dev/taichi-aot-demo.git
commit: d1a4842 [misc] Remove usage of deprecated kwarg in rw_texture type annotation (#111)
```

C-API library was generated using:
```
git@github.com:taichi-dev/taichi.git
commit: 0559411ae [bug] Fix crashing on printing FrontendFuncCallStmt with no return value
```

## Steps to generate Taichi AOT Plugin from scratch
1. Generate Taichi C-API library
- Have `-DTI_WITH_C_API=ON` in your `TAICHI_CMAKE_ARGS`
- Add target backends to your `TAICHI_CMAKE_ARGS`, `-DTI_WITH_CUDA=ON -DTI_WITH_LLVM=ON` suggested
- Clone and compile Taichi following this guide: https://docs.taichi-lang.org/docs/dev_install

You'll find C-API library in: `{TAICHI_REPO}/_skbuild/{OS_NAME}/cmake-install/c_api`

2. Update C-API library for UE project `TaichiAOTPlugin`
- Replace `C_API_LINUX` or `C_API_WINDOWS` under `TaichiAOTPlugin/Plugins/AOTPlugin/Source/AOTPlugin/Public/`
- Regenerate `taichi_unreal.hpp` if neccessary. (`taichi_unreal.hpp` is generated from `taichi.hpp` by replacing all function calls to C-API with a macro `CALL_C_API_FUNC`, which wraps the original direct function calls with `dlopen` & `dlsym`. TODO: Automatically generate `taichi_unreal.hpp` from `taichi.hpp`)

4. Generate Taichi AOT Plugin
- UE interface: `Edit->Plugins->AOTPlugin->Package`

5. Import Plugin in your project
- Take SPHExample project as an example, put the generated `AOTPlugin` under `SPHExample/Plugins/`

6. Generate SPH AOT files
- To avoid file mismatch, use the python-taichi you just compiled
- Generate SPH AOT files: https://github.com/taichi-dev/taichi-aot-demo/tree/master/5_sph/assets/sph.py
- Tutorials & examples: https://github.com/taichi-dev/taichi-aot-demo
