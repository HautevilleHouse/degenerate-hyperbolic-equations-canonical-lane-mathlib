import canonicalLaneMathlib.AdmissibleClass
import DegenerateHyperbolicEquationsCanonicalLaneLean.GeneticAdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

def bridgeClosed (A : GeneticAdmissibleClass) : Prop :=
  A.object.hardyWeinbergEquilibrium ∧ A.object.linkageAnalysisValid ∧
  A.object.sequenceAlignmentComplete ∧ A.object.phylogeneticsTreeBuilt

theorem bridge_from_admissible_class (A : GeneticAdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.hardyWeinbergEquilibriumClosed
    (And.intro A.object.linkageAnalysisValidClosed
      (And.intro A.object.sequenceAlignmentCompleteClosed A.object.phylogeneticsTreeBuiltClosed))

def gateClosed (A : GeneticAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GeneticAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse
