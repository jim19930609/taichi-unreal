// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;
using System.IO;

public class AOTPlugin : ModuleRules
{
	public AOTPlugin(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = ModuleRules.PCHUsageMode.UseExplicitOrSharedPCHs;
		
		PublicDefinitions.Add("TI_WITH_CUDA=1");
		PublicDefinitions.Add("TI_WITH_CPU=1");

		string libIncludePath = ModuleDirectory;
		if (Target.Platform == UnrealTargetPlatform.Linux) {
			libIncludePath = Path.Combine(libIncludePath, "Public/C_API_LINUX/include");
		}

		PublicIncludePaths.AddRange(
			new string[] {
				libIncludePath,
				Path.Combine(ModuleDirectory, "Public")
				// ... add public include paths required here ...
			}
			);
				
		
		PrivateIncludePaths.AddRange(
			new string[] {
				// ... add other private include paths required here ...
			}
			);
			
		
		PublicDependencyModuleNames.AddRange(
			new string[]
			{
				"Core",
				"Projects"
				// ... add other public dependencies that you statically link with here ...
			}
			);
			
		
		PrivateDependencyModuleNames.AddRange(
			new string[]
			{
				// ... add private dependencies that you statically link with here ...	
			}
			);
		
		
		DynamicallyLoadedModuleNames.AddRange(
			new string[]
			{
				// ... add any modules that your module loads dynamically here ...
			}
			);
	}
}
