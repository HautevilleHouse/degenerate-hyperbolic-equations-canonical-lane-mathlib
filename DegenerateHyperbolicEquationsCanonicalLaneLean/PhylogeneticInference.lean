import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure PhylogeneticInferencePackage where
  sequenceAlignment : Prop
  treeBuilding : Prop
  ancestralReconstruction : Prop
  likelihoodComputation : Prop

structure PhylogeneticInferenceEvidence (P : PhylogeneticInferencePackage) where
  sequenceAlignmentClosed : P.sequenceAlignment
  treeBuildingClosed : P.treeBuilding
  ancestralReconstructionClosed : P.ancestralReconstruction
  likelihoodComputationClosed : P.likelihoodComputation

def PhylogeneticInferenceClosed (P : PhylogeneticInferencePackage) : Prop :=
  P.sequenceAlignment ∧ P.treeBuilding ∧ P.ancestralReconstruction ∧ P.likelihoodComputation

theorem phylogenetic_inference_closed_from_evidence
    (P : PhylogeneticInferencePackage) (E : PhylogeneticInferenceEvidence P) :
    PhylogeneticInferenceClosed P := by
  exact And.intro E.sequenceAlignmentClosed
    (And.intro E.treeBuildingClosed
      (And.intro E.ancestralReconstructionClosed E.likelihoodComputationClosed))

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse
