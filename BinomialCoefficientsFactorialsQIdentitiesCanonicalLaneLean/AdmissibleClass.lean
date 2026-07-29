import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

structure BinomialIdentityObject where
  identityType : Type u
  identityProp : identityType → Prop
  allIdentitiesHold : ∀ x : identityType, identityProp x

structure AdmissibleClass where
  object : BinomialIdentityObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.allIdentitiesHold

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.allIdentitiesHold

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse