import canonicalLaneMathlib.AdmissibleClass
import DegenerateHyperbolicEquationsCanonicalLaneLean.DegeneracyResolution

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure GeneticDegenerateHyperbolicObject where
  populationModel : Type u
  hardyWeinbergEquilibrium : Prop
  linkageAnalysisValid : Prop
  sequenceAlignmentComplete : Prop
  phylogeneticsTreeBuilt : Prop
  hardyWeinbergEquilibriumClosed : hardyWeinbergEquilibrium
  linkageAnalysisValidClosed : linkageAnalysisValid
  sequenceAlignmentCompleteClosed : sequenceAlignmentComplete
  phylogeneticsTreeBuiltClosed : phylogeneticsTreeBuilt

structure GeneticAdmissibleClass where
  object : GeneticDegenerateHyperbolicObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def geneticAdmittedClosure (A : GeneticAdmissibleClass) : Prop :=
  (A.object.hardyWeinbergEquilibrium ∧ A.object.linkageAnalysisValid ∧
   A.object.sequenceAlignmentComplete ∧ A.object.phylogeneticsTreeBuilt) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse
