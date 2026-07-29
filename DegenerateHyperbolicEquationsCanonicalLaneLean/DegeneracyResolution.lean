import canonicalLaneMathlib.AdmissibleClass
import DegenerateHyperbolicEquationsCanonicalLaneLean.WellposednessPackage

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure DegeneracyResolutionPackage {D : DegenerateHyperbolicOperator} (W : WellposednessPackage D) where
  blowupMethod : Type u
  resolutionRegularity : Prop
  resolvedOperator : DegenerateHyperbolicOperator
  convergenceRate : Prop
  blowupMethodDefined : blowupMethod
  resolutionRegularityClosed : resolutionRegularity
  resolvedOperatorDefined : resolvedOperator
  convergenceRateClosed : convergenceRate

structure DegeneracyResolutionEvidence {D : DegenerateHyperbolicOperator} {W : WellposednessPackage D}
    (R : DegeneracyResolutionPackage W) where
  resolutionRegularityClosed : R.resolutionRegularity
  convergenceRateClosed : R.convergenceRate

def DegeneracyResolutionClosed {D : DegenerateHyperbolicOperator} {W : WellposednessPackage D}
    (R : DegeneracyResolutionPackage W) : Prop :=
  R.resolutionRegularity ∧ R.convergenceRate

theorem degeneracy_resolution_closed_from_evidence
    {D : DegenerateHyperbolicOperator} {W : WellposednessPackage D}
    (R : DegeneracyResolutionPackage W) (E : DegeneracyResolutionEvidence R) :
    DegeneracyResolutionClosed R := by
  exact And.intro E.resolutionRegularityClosed E.convergenceRateClosed

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse
