import BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean.MathlibObjects

/-!
# Binomial Identity Package
-/

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

structure BinomialIdentityPackage where
  identityType : Prop
  proofMethod : Prop
  qAnalogueExists : Prop
  generatingFunction : Prop

structure BinomialIdentityEvidence (B : BinomialIdentityPackage) where
  identityTypeClosed : B.identityType
  proofMethodClosed : B.proofMethod
  qAnalogueExistsClosed : B.qAnalogueExists
  generatingFunctionClosed : B.generatingFunction

def BinomialIdentityClosed (B : BinomialIdentityPackage) : Prop :=
  B.identityType ∧ B.proofMethod ∧ B.qAnalogueExists ∧ B.generatingFunction

theorem binomial_identity_closed_from_evidence (B : BinomialIdentityPackage)
    (E : BinomialIdentityEvidence B) : BinomialIdentityClosed B := by
  exact And.intro E.identityTypeClosed
    (And.intro E.proofMethodClosed
      (And.intro E.qAnalogueExistsClosed E.generatingFunctionClosed))

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse