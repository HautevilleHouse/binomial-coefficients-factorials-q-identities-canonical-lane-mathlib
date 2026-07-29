import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Algebra.GroupPower.Basic

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

structure FactorialPackage where
  n : ℕ
  factorialValue : ℕ
  factorialProperty : fact (n.factorial = factorialValue)

structure BinomialCoefficientPackage where
  n k : ℕ
  value : ℕ
  binomialProperty : (Nat.choose n k = value)

structure BinomialIdentityBasePackage where
  identity : Prop
  proofTerm : identity

def BinomialWitnessClosed (O : BinomialAdmittedObject) : Prop :=
  O.identityBase.identity

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse