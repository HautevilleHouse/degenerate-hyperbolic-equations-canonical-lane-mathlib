import canonicalLaneMathlib.AdmissibleClass
import DegenerateHyperbolicEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequenceType : Type u
  substitutionScore : sequenceType → sequenceType → ℝ
  gapPenalty : ℝ
  optimalAlignment : List (sequenceType × sequenceType)
  similarity : ℝ

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.similarity > 0 ∧ S.optimalAlignment ≠ []

theorem sequence_alignment_closed (S : SequenceAlignmentPackage) : SequenceAlignmentClosed S := by
  sorry

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse