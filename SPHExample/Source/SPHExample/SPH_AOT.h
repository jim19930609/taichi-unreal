#pragma once

#include "taichi_unreal.hpp"
	
// Taichi AOT Members
class SPH_AOT {
 public:
	static const uint32_t NR_PARTICLES = 2000;
	static const uint32_t SUBSTEPS = 1;

	SPH_AOT();

	void Initialize();
	void Inference();

	std::vector<float> ExportPositions() { 
		std::vector<float> positions(NR_PARTICLES * 3);
		pos_.read(positions);

		return positions;
	}
 
 private:
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
};
