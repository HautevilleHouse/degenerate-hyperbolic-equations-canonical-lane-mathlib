import canonicalLaneMathlib.AdmissibleClass
import DegenerateHyperbolicEquationsCanonicalLaneLean.BridgeLemmas
import DegenerateHyperbolicEquationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure HardyWeinbergClosure where
  locus : GeneticLocus
  equilibriumClosed : Prop
  bridgeClosed : Prop
  gateClosed : Prop

def constrainedHardyWeinbergClosure (H : HardyWeinbergClosure) : Prop :=
  H.equilibriumClosed ∧ H.bridgeClosed ∧ H.gateClosed

theorem hardy_weinberg_admissible_endgame (A : AdmissibleClass) :
    bridgeClosed A ∧ gateClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse