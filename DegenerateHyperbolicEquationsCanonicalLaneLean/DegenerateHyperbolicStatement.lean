import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure GeneticLocus where
  chromosome : String
  position : Nat

structure HardyWeinbergEquilibrium where
  locus : GeneticLocus
  alleleFrequencies : List ℝ
  expectedGenotypeFrequencies : List ℝ
  equilibriumHolds : Prop

structure DegenerateHyperbolicAdmittedObject where
  locus : GeneticLocus
  equilibrium : HardyWeinbergEquilibrium
  linkageMap : Type u
  recombinationFraction : ℝ
  hyperbolicModel : Prop
  conclusion : equilibrium.equilibriumHolds

def DegenerateHyperbolicWitnessClosed (O : DegenerateHyperbolicAdmittedObject) : Prop :=
  O.equilibrium.equilibriumHolds

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse