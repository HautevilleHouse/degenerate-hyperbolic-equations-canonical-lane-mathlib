import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure EntropySolutionsPackage where
  entropyFluxPair : Prop
  entropyCondition : Prop
  uniquenessWeakSolution : Prop
  stabilityUnderApproximation : Prop

structure EntropySolutionsEvidence (E : EntropySolutionsPackage) where
  entropyFluxPairClosed : E.entropyFluxPair
  entropyConditionClosed : E.entropyCondition
  uniquenessWeakSolutionClosed : E.uniquenessWeakSolution
  stabilityUnderApproximationClosed : E.stabilityUnderApproximation

def EntropySolutionsClosed (E : EntropySolutionsPackage) : Prop :=
  E.entropyFluxPair ∧ E.entropyCondition ∧ E.uniquenessWeakSolution ∧ E.stabilityUnderApproximation

theorem entropy_solutions_closed_from_evidence (E : EntropySolutionsPackage)
    (Ev : EntropySolutionsEvidence E) : EntropySolutionsClosed E := by
  exact And.intro Ev.entropyFluxPairClosed
    (And.intro Ev.entropyConditionClosed
      (And.intro Ev.uniquenessWeakSolutionClosed Ev.stabilityUnderApproximationClosed))

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse
