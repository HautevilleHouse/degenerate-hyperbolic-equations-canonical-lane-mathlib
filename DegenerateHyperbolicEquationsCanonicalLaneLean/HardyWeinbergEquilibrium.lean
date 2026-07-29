import canonicalLaneMathlib.AdmissibleClass
import DegenerateHyperbolicEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure HardyWeinbergPackage where
  locusType : Type u
  alleleFrequencies : Prop
  genotypeFrequencies : Prop
  equilibriumCondition : locusType → Prop
  observedCounts : locusType → Nat
  expectedCounts : locusType → Nat
  deviation : Prop

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.equilibriumCondition H.locusType ∧ H.deviation = False

theorem hardy_weinberg_closed (H : HardyWeinbergPackage) : HardyWeinbergClosed H := by
  sorry

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse