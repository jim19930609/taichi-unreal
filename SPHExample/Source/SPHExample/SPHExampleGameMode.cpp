// Copyright Epic Games, Inc. All Rights Reserved.

#include "SPHExampleGameMode.h"
#include "SPHExampleCharacter.h"
#include "UObject/ConstructorHelpers.h"

ASPHExampleGameMode::ASPHExampleGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPerson/Blueprints/BP_ThirdPersonCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
}
