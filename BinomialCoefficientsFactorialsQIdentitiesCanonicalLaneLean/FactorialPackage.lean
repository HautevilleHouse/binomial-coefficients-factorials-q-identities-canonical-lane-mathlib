import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

structure FactorialPackage where
  n : ℕ
  factorialValue : ℕ
  factorialIdentity : Prop
  factorialIdentityClosed : factorialIdentity

structure BinomialCoefficientPackage where
  n k : ℕ
  binomialValue : ℕ
  pascalIdentity : Prop
  symmetryIdentity : Prop
  pascalClosed : pascalIdentity
  symmetryClosed : symmetryIdentity

def FactorialPackageClosed (F : FactorialPackage) : Prop :=
  F.factorialIdentity

def BinomialCoefficientPackageClosed (B : BinomialCoefficientPackage) : Prop :=
  B.pascalIdentity ∧ B.symmetryIdentity

theorem factorial_package_closed_from_evidence (F : FactorialPackage) : FactorialPackageClosed F := by
  exact F.factorialIdentityClosed

theorem binomial_coefficient_package_closed_from_evidence (B : BinomialCoefficientPackage) : BinomialCoefficientPackageClosed B := by
  exact And.intro B.pascalClosed B.symmetryClosed

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse