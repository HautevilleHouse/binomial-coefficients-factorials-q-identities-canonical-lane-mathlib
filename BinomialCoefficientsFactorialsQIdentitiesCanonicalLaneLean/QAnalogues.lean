import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Algebra.GroupPower.Basic

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

structure QFactorialPackage (q : ℕ) where
  n : ℕ
  value : ℕ
  qFactorialProperty : (∏_{i=1}^{n} (1 + q + ... + q^{i-1}) = value)

structure QBinomialCoefficientPackage (q : ℕ) where
  n k : ℕ
  value : ℕ
  qBinomialProperty : (qBinomial q n k = value)

structure QBinomialIdentityBasePackage (q : ℕ) where
  identity : Prop
  proofTerm : identity

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse