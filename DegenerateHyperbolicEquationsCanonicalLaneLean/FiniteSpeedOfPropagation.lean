import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure FiniteSpeedOfPropagationPackage where
  characteristicSpeeds : Prop
  coneOfInfluence : Prop
  waveFrontSet : Prop
  domainOfDependence : Prop

structure FiniteSpeedOfPropagationEvidence (F : FiniteSpeedOfPropagationPackage) where
  characteristicSpeedsClosed : F.characteristicSpeeds
  coneOfInfluenceClosed : F.coneOfInfluence
  waveFrontSetClosed : F.waveFrontSet
  domainOfDependenceClosed : F.domainOfDependence

def FiniteSpeedOfPropagationClosed (F : FiniteSpeedOfPropagationPackage) : Prop :=
  F.characteristicSpeeds ∧ F.coneOfInfluence ∧ F.waveFrontSet ∧ F.domainOfDependence

theorem finite_speed_of_propagation_closed_from_evidence
    (F : FiniteSpeedOfPropagationPackage) (E : FiniteSpeedOfPropagationEvidence F) :
    FiniteSpeedOfPropagationClosed F := by
  exact And.intro E.characteristicSpeedsClosed
    (And.intro E.coneOfInfluenceClosed
      (And.intro E.waveFrontSetClosed E.domainOfDependenceClosed))

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse
