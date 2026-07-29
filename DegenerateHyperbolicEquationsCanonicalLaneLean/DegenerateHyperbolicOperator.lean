import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure DegenerateHyperbolicOperator where
  principalSymbol : Type u
  lowerOrderTerms : Type v
  degeneracyLocus : Prop
  effectiveHyperbolicity : Prop
  symbolPositivityOutsideLocus : Prop
  principalSymbolDefined : principalSymbol
  lowerOrderTermsDefined : lowerOrderTerms
  degeneracyLocusClosed : degeneracyLocus
  effectiveHyperbolicityClosed : effectiveHyperbolicity
  symbolPositivityOutsideLocusClosed : symbolPositivityOutsideLocus

structure DegenerateHyperbolicOperatorEvidence (D : DegenerateHyperbolicOperator) where
  degeneracyLocusClosed : D.degeneracyLocus
  effectiveHyperbolicityClosed : D.effectiveHyperbolicity
  symbolPositivityOutsideLocusClosed : D.symbolPositivityOutsideLocus

def DegenerateHyperbolicOperatorClosed (D : DegenerateHyperbolicOperator) : Prop :=
  D.degeneracyLocus ∧ D.effectiveHyperbolicity ∧ D.symbolPositivityOutsideLocus

theorem degenerate_hyperbolic_operator_closed_from_evidence
    (D : DegenerateHyperbolicOperator) (E : DegenerateHyperbolicOperatorEvidence D) :
    DegenerateHyperbolicOperatorClosed D := by
  exact And.intro E.degeneracyLocusClosed (And.intro E.effectiveHyperbolicityClosed E.symbolPositivityOutsideLocusClosed)

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse
