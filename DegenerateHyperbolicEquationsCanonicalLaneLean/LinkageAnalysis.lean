import canonicalLaneMathlib.AdmissibleClass
import DegenerateHyperbolicEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure LinkageAnalysisPackage where
  markerSet : Type u
  recombinationFraction : markerSet → markerSet → ℝ
  linkageGroup : markerSet → Nat
  lodScore : markerSet → markerSet → ℝ
  significantLod : ℝ
  linkedPairs : List (markerSet × markerSet)

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  ∀ (a b : L.markerSet), L.lodScore a b ≥ L.significantLod → 
    L.linkageGroup a = L.linkageGroup b

theorem linkage_analysis_closed (L : LinkageAnalysisPackage) : LinkageAnalysisClosed L := by
  sorry

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse