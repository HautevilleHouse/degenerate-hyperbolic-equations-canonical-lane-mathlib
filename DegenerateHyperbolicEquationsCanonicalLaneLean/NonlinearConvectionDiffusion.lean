import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure NonlinearConvectionDiffusionPackage where
  nonlinearDiffusivity : Prop
  convectionTerm : Prop
  degenerateCoefficient : Prop
  regularityEstimate : Prop

structure NonlinearConvectionDiffusionEvidence (N : NonlinearConvectionDiffusionPackage) where
  nonlinearDiffusivityClosed : N.nonlinearDiffusivity
  convectionTermClosed : N.convectionTerm
  degenerateCoefficientClosed : N.degenerateCoefficient
  regularityEstimateClosed : N.regularityEstimate

def NonlinearConvectionDiffusionClosed (N : NonlinearConvectionDiffusionPackage) : Prop :=
  N.nonlinearDiffusivity ∧ N.convectionTerm ∧ N.degenerateCoefficient ∧ N.regularityEstimate

theorem nonlinear_convection_diffusion_closed_from_evidence
    (N : NonlinearConvectionDiffusionPackage) (E : NonlinearConvectionDiffusionEvidence N) :
    NonlinearConvectionDiffusionClosed N := by
  exact And.intro E.nonlinearDiffusivityClosed
    (And.intro E.convectionTermClosed
      (And.intro E.degenerateCoefficientClosed E.regularityEstimateClosed))

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse
