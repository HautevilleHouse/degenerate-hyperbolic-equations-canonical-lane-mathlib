import canonicalLaneMathlib.AdmissibleClass
import DegenerateHyperbolicEquationsCanonicalLaneLean.DegenerateHyperbolicStatement

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure LinkagePackage where
  loci : List GeneticLocus
  recombinationFractions : List ℝ
  linkageEquilibrium : Prop
  hyperbolicSystem : Prop

structure LinkageEvidence (L : LinkagePackage) where
  linkageEquilibriumClosed : L.linkageEquilibrium
  hyperbolicSystemClosed : L.hyperbolicSystem

def LinkageClosed (L : LinkagePackage) : Prop :=
  L.linkageEquilibrium ∧ L.hyperbolicSystem

theorem linkage_closed_from_evidence (L : LinkagePackage) (E : LinkageEvidence L) :
    LinkageClosed L := by
  exact And.intro E.linkageEquilibriumClosed E.hyperbolicSystemClosed

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse