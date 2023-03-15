// Fill out your copyright notice in the Description page of Project Settings.
#include "SPH_Particles_Box.h"
#include "SPH_AOT.h"
#include "Modules/ModuleManager.h"

static SPH_AOT sph_aot;

// Sets default values
ASPH_Particles_Box::ASPH_Particles_Box()
{
	
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	Root = CreateDefaultSubobject<USceneComponent>(TEXT("Root"));
	RootComponent = Root;

	InstancedMesh = CreateDefaultSubobject<UInstancedStaticMeshComponent>(TEXT("InstancedStaticMesh"));
	InstancedMesh->SetMobility(EComponentMobility::Static);
	InstancedMesh->SetCollisionEnabled(ECollisionEnabled::PhysicsOnly);
    InstancedMesh->SetGenerateOverlapEvents(false);

    InstancedMesh->SetupAttachment(RootComponent);
	InstancedMesh->RegisterComponent();

    InstancedMesh->ClearInstances();
    for (int i = 0; i < SPH_AOT::NR_PARTICLES; i++)
    {
        InstancedMesh->AddInstance(FTransform(FVector(0.f, 0.f, 0.f)), false);
    }
}

// Called when the game starts or when spawned
void ASPH_Particles_Box::BeginPlay()
{
	Super::BeginPlay();
    sph_aot.Initialize();
    Update(sph_aot.ExportPositions());
}

// Called every frame
void ASPH_Particles_Box::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
    sph_aot.Inference();

    Update(sph_aot.ExportPositions());
}

void ASPH_Particles_Box::Update(const std::vector<float> &positions) {
    float scale = 5000;
    for (size_t i = 0; i < SPH_AOT::NR_PARTICLES; i++) {
        FVector NewLocation = FVector(positions[i * 3], positions[i * 3 + 2], positions[i * 3 + 1]) * scale;
        FTransform NewTransform = FTransform(NewLocation);
        InstancedMesh->UpdateInstanceTransform(i, NewTransform, false, true, true);
    }
    InstancedMesh->MarkRenderStateDirty();
}