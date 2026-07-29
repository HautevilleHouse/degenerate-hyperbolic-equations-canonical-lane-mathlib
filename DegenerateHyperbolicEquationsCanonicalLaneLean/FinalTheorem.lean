import canonicalLaneMathlib.AdmissibleClass
import DegenerateHyperbolicEquationsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

def ConstrainedDegenerateHyperbolicClosure (A : GeneticAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_degenerate_hyperbolic_endgame (A : GeneticAdmissibleClass) :
    ConstrainedDegenerateHyperbolicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse
