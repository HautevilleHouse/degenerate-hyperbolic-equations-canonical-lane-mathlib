import canonicalLaneMathlib.AdmissibleClass
import DegenerateHyperbolicEquationsCanonicalLaneLean.HardyWeinbergEquilibrium
import DegenerateHyperbolicEquationsCanonicalLaneLean.LinkageAnalysis
import DegenerateHyperbolicEquationsCanonicalLaneLean.SequenceAlignment
import DegenerateHyperbolicEquationsCanonicalLaneLean.Phylogenetics

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure AdmissibleClass where
  object : DegenerateHyperbolicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DegenerateHyperbolicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedDegenerateHyperbolicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_degenerate_hyperbolic_endgame (A : AdmissibleClass) :
    ConstrainedDegenerateHyperbolicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse