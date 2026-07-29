import BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean.AdmissibleClass

/-!
# Factorial and Binomial Coefficient Package
-/

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

structure FactorialBinomialPackage where
  factorial : ℕ → ℕ
  binomial : ℕ → ℕ → ℕ
  qFactorial : ℕ → ℚ → ℚ
  qBinomial : ℕ → ℕ → ℚ → ℚ
  factorialRecurrence : ∀ n, factorial (n+1) = (n+1) * factorial n
  binomialDefinition : ∀ n k, binomial n k = factorial n / (factorial k * factorial (n-k))
  qFactorialRecurrence : ∀ n q, qFactorial (n+1) q = (1 - q^(n+1)) / (1 - q) * qFactorial n q
  qBinomialDefinition : ∀ n k q, qBinomial n k q = qFactorial n q / (qFactorial k q * qFactorial (n-k) q)

structure FactorialBinomialEvidence (F : FactorialBinomialPackage) where
  factorialRecurrenceClosed : ∀ n, F.factorial (n+1) = (n+1) * F.factorial n
  binomialDefinitionClosed : ∀ n k, F.binomial n k = F.factorial n / (F.factorial k * F.factorial (n-k))
  qFactorialRecurrenceClosed : ∀ n q, F.qFactorial (n+1) q = (1 - q^(n+1)) / (1 - q) * F.qFactorial n q
  qBinomialDefinitionClosed : ∀ n k q, F.qBinomial n k q = F.qFactorial n q / (F.qFactorial k q * F.qFactorial (n-k) q)

def FactorialBinomialClosed (F : FactorialBinomialPackage) : Prop :=
  (∀ n, F.factorial (n+1) = (n+1) * F.factorial n) ∧
  (∀ n k, F.binomial n k = F.factorial n / (F.factorial k * F.factorial (n-k))) ∧
  (∀ n q, F.qFactorial (n+1) q = (1 - q^(n+1)) / (1 - q) * F.qFactorial n q) ∧
  (∀ n k q, F.qBinomial n k q = F.qFactorial n q / (F.qFactorial k q * F.qFactorial (n-k) q))

theorem factorial_binomial_closed_from_evidence (F : FactorialBinomialPackage)
    (E : FactorialBinomialEvidence F) : FactorialBinomialClosed F := by
  exact And.intro E.factorialRecurrenceClosed
    (And.intro E.binomialDefinitionClosed
      (And.intro E.qFactorialRecurrenceClosed E.qBinomialDefinitionClosed))

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse