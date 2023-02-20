// Copyright Epic Games, Inc. All Rights Reserved.

#include "AOTPlugin.h"
#include "Core.h"
#include "Modules/ModuleManager.h"
#include "Interfaces/IPluginManager.h"

#define LOCTEXT_NAMESPACE "FAOTPluginModule"

void FAOTPluginModule::StartupModule()
{
	// This code will execute after your module is loaded into memory; the exact timing is specified in the .uplugin file per-module
	// This code will execute after your module is loaded into memory; the exact timing is specified in the .uplugin file per-module

	// Get the base directory of this plugin
	FString BaseDir = IPluginManager::Get().FindPlugin("AOTPlugin")->GetBaseDir();
	FString LibraryPath;
	FString RuntimeDir;

	// Add on the relative location of the third party dll and load it
#if PLATFORM_WINDOWS
	LibraryPath = FPaths::Combine(*BaseDir, TEXT("Source/AOTPlugin/Public/C_API_WINDOWS/bin/taichi_c_api.dll"));
	RuntimeDir = FPaths::Combine(*BaseDir, TEXT("Source/AOTPlugin/Public/C_API_WINDOWS/runtime"));
	_putenv_s("TI_LIB_DIR", TCHAR_TO_ANSI(*RuntimeDir));
#elif PLATFORM_MAC
    //LibraryPath = FPaths::Combine(*BaseDir, TEXT("Source/ThirdParty/TaichiLibrary/Mac/Release/libExampleLibrary.dylib"));
	UE_LOG(LogTemp, Fatal, TEXT("Taichi C-API on MacOS not supported yet!"));
#elif PLATFORM_LINUX
	LibraryPath = FPaths::Combine(*BaseDir, TEXT("Source/AOTPlugin/Public/C_API_LINUX/lib/libtaichi_c_api.so"));
	RuntimeDir = FPaths::Combine(*BaseDir, TEXT("Source/AOTPlugin/Public/C_API_LINUX/runtime"));
	setenv("TI_LIB_DIR", TCHAR_TO_ANSI(*RuntimeDir), 1);
#endif // PLATFORM_WINDOWS

	LibraryHandle = !LibraryPath.IsEmpty() ? FPlatformProcess::GetDllHandle(*LibraryPath) : nullptr;
	if (LibraryHandle)
	{
		UE_LOG(LogTemp, Log, TEXT("Taichi C-API loaded successfully!"));
	}
	else
	{
		UE_LOG(LogTemp, Fatal, TEXT("Taichi C-API failed to load!"));
	}
}

void FAOTPluginModule::ShutdownModule()
{
	// This function may be called during shutdown to clean up your module.  For modules that support dynamic reloading,
	// we call this function before unloading the module.

	// Free the dll handle
	FPlatformProcess::FreeDllHandle(LibraryHandle);
	LibraryHandle = nullptr;
}

#undef LOCTEXT_NAMESPACE
	
IMPLEMENT_MODULE(FAOTPluginModule, AOTPlugin)