import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DegenerateHyperbolicEquationsCanonicalLaneLean

structure HyperbolicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DegenerateHyperbolicAdmittedObject where
  space : HyperbolicSpace
  degenerateMetric : Prop
  hyperbolicityCondition : Prop
  smoothStructure : Prop
  conclusion : degenerateMetric ∧ hyperbolicityCondition ∧ smoothStructure

structure DegenerateHyperbolicEndgameState where
  object : DegenerateHyperbolicAdmittedObject

def DegenerateHyperbolicWitnessClosed (O : DegenerateHyperbolicAdmittedObject) : Prop :=
  O.conclusion

end DegenerateHyperbolicEquationsCanonicalLaneLean
end HautevilleHouse