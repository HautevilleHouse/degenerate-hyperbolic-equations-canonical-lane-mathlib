import canonicalLaneMathlib.AdmissibleClass
import DegenerateHyperbolicEquationsCanonicalLaneLean.DegenerateHyperbolicStatement

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure SequenceAlignment where
  sequences : List String
  homologyScore : ℝ
  alignmentAlgorithm : String

structure PhylogeneticTree where
  topology : String
  branchLengths : List ℝ
  evolutionaryModel : String

structure PhylogeneticModel where
  alignment : SequenceAlignment
  tree : PhylogeneticTree
  hyperbolicConstraint : Prop
  likelihood : ℝ

structure PhylogeneticEvidence (P : PhylogeneticModel) where
  alignmentClosed : P.alignment.homologyScore > 0
  treeClosed : P.tree.branchLengths.length > 0
  hyperbolicConstraintClosed : P.hyperbolicConstraint

def PhylogeneticModelClosed (P : PhylogeneticModel) : Prop :=
  P.alignment.homologyScore > 0 ∧ P.hyperbolicConstraint

theorem phylogenetic_model_closed_from_evidence (P : PhylogeneticModel) (E : PhylogeneticEvidence P) :
    PhylogeneticModelClosed P := by
  exact And.intro E.alignmentClosed E.hyperbolicConstraintClosed

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse