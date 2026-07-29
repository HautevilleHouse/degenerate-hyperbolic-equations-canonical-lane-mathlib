import canonicalLaneMathlib.AdmissibleClass
import DegenerateHyperbolicEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure PhylogeneticsPackage where
  taxa : Type u
  distanceMatrix : taxa → taxa → ℝ
  treeTopology : Type v
  branchLengths : treeTopology → ℝ
  likelihood : ℝ
  bootstrapSupport : ℝ

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.likelihood > 0 ∧ P.bootstrapSupport > 0.9

theorem phylogenetics_closed (P : PhylogeneticsPackage) : PhylogeneticsClosed P := by
  sorry

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse