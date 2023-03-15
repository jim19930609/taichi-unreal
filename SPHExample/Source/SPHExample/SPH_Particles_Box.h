#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "Components/InstancedStaticMeshComponent.h"
#include "SPH_Particles_Box.generated.h"

UCLASS()
class SPHEXAMPLE_API ASPH_Particles_Box : public AActor
{
	GENERATED_BODY()
	
public:
	// Sets default values for this actor's properties
	ASPH_Particles_Box();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

	void Update(const std::vector<float> &positions);
public:

	UPROPERTY()
	USceneComponent* Root;

	UPROPERTY(VisibleAnywhere)
	UInstancedStaticMeshComponent* InstancedMesh;
};