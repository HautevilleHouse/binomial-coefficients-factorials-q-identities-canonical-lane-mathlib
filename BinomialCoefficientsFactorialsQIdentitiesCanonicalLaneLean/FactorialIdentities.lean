import Mathlib.Data.Nat.Factorial

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

theorem factorial_identity (n : ℕ) : n ! * (n+1) = (n+1) ! := by
  exact calc
    n ! * (n+1) = (n+1) * n ! := by ring
    _ = (n+1) ! := by rw [Nat.succ_eq_add_one, Nat.factorial_succ]

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse