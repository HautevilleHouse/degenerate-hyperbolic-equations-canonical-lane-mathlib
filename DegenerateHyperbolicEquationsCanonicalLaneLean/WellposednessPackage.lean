import canonicalLaneMathlib.AdmissibleClass
import DegenerateHyperbolicEquationsCanonicalLaneLean.DegenerateHyperbolicOperator

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure WellposednessPackage (D : DegenerateHyperbolicOperator) where
  energyEstimates : Prop
  existenceInterval : Prop
  uniqueness : Prop
  continuousDependence : Prop
  energyEstimatesClosed : energyEstimates
  existenceIntervalClosed : existenceInterval
  uniquenessClosed : uniqueness
  continuousDependenceClosed : continuousDependence

structure WellposednessEvidence {D : DegenerateHyperbolicOperator} (W : WellposednessPackage D) where
  energyEstimatesClosed : W.energyEstimates
  existenceIntervalClosed : W.existenceInterval
  uniquenessClosed : W.uniqueness
  continuousDependenceClosed : W.continuousDependence

def WellposednessClosed {D : DegenerateHyperbolicOperator} (W : WellposednessPackage D) : Prop :=
  W.energyEstimates ∧ W.existenceInterval ∧ W.uniqueness ∧ W.continuousDependence

theorem wellposedness_closed_from_evidence
    {D : DegenerateHyperbolicOperator} (W : WellposednessPackage D) (E : WellposednessEvidence W) :
    WellposednessClosed W := by
  exact And.intro E.energyEstimatesClosed (And.intro E.existenceIntervalClosed (And.intro E.uniquenessClosed E.continuousDependenceClosed))

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse
