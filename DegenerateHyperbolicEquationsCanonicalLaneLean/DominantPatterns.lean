import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure DominantPatternsPackage where
  diffusionDominant : Prop
  reactionDominant : Prop
  mixedType : Prop
  boundaryLayerFormation : Prop

structure DominantPatternsEvidence (D : DominantPatternsPackage) where
  diffusionDominantClosed : D.diffusionDominant
  reactionDominantClosed : D.reactionDominant
  mixedTypeClosed : D.mixedType
  boundaryLayerFormationClosed : D.boundaryLayerFormation

def DominantPatternsClosed (D : DominantPatternsPackage) : Prop :=
  D.diffusionDominant ∧ D.reactionDominant ∧ D.mixedType ∧ D.boundaryLayerFormation

theorem dominant_patterns_closed_from_evidence (D : DominantPatternsPackage)
    (E : DominantPatternsEvidence D) : DominantPatternsClosed D := by
  exact And.intro E.diffusionDominantClosed
    (And.intro E.reactionDominantClosed
      (And.intro E.mixedTypeClosed E.boundaryLayerFormationClosed))

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse
