import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure WeakSolutionExistencePackage where
  weakFormulation : Prop
  compactnessMethod : Prop
  approximationScheme : Prop
  existenceProof : Prop

structure WeakSolutionExistenceEvidence (W : WeakSolutionExistencePackage) where
  weakFormulationClosed : W.weakFormulation
  compactnessMethodClosed : W.compactnessMethod
  approximationSchemeClosed : W.approximationScheme
  existenceProofClosed : W.existenceProof

def WeakSolutionExistenceClosed (W : WeakSolutionExistencePackage) : Prop :=
  W.weakFormulation ∧ W.compactnessMethod ∧ W.approximationScheme ∧ W.existenceProof

theorem weak_solution_existence_closed_from_evidence
    (W : WeakSolutionExistencePackage) (E : WeakSolutionExistenceEvidence W) :
    WeakSolutionExistenceClosed W := by
  exact And.intro E.weakFormulationClosed
    (And.intro E.compactnessMethodClosed
      (And.intro E.approximationSchemeClosed E.existenceProofClosed))

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse
