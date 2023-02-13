#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "taichi_unreal.hpp"
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

	void Update();

public:
	// Taichi AOT Members
	static const uint32_t NR_PARTICLES = 2000;
	static const uint32_t SUBSTEPS = 1;

	TiArch arch_;
	ti::Runtime runtime_;
	ti::AotModule module_;

	ti::Kernel k_initialize_;
	ti::Kernel k_initialize_particle_;
	ti::Kernel k_update_density_;
	ti::Kernel k_update_force_;
	ti::Kernel k_advance_;
	ti::Kernel k_boundary_handle_;

	ti::NdArray<int> N_; 
	ti::NdArray<float> den_;
	ti::NdArray<float> pre_;
	ti::NdArray<float> vel_;
	ti::NdArray<float> acc_;
	ti::NdArray<float> boundary_box_;
	ti::NdArray<float> spawn_box_;
	ti::NdArray<float> gravity_;
	ti::NdArray<float> pos_;

	UPROPERTY()
	USceneComponent* Root;

	UPROPERTY(VisibleAnywhere)
	UInstancedStaticMeshComponent* InstancedMesh;
};