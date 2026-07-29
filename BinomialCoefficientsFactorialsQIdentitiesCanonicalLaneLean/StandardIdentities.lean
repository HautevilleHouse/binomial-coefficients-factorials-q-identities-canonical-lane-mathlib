import BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean.FactorialBinomialDefinitions

/-!
# Standard Binomial Identities Package
-/

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

structure StandardIdentitiesPackage (F : FactorialBinomialPackage) where
  pascalRule : Prop
  chuVandermonde : Prop
  symmetry : Prop
  absorption : Prop

structure StandardIdentitiesEvidence {F : FactorialBinomialPackage}
    (S : StandardIdentitiesPackage F) where
  pascalRuleClosed : S.pascalRule
  chuVandermondeClosed : S.chuVandermonde
  symmetryClosed : S.symmetry
  absorptionClosed : S.absorption

def StandardIdentitiesClosed {F : FactorialBinomialPackage}
    (S : StandardIdentitiesPackage F) : Prop :=
  S.pascalRule ∧ S.chuVandermonde ∧ S.symmetry ∧ S.absorption

theorem standard_identities_closed_from_evidence {F : FactorialBinomialPackage}
    (S : StandardIdentitiesPackage F) (E : StandardIdentitiesEvidence S) :
    StandardIdentitiesClosed S := by
  exact And.intro E.pascalRuleClosed
    (And.intro E.chuVandermondeClosed
      (And.intro E.symmetryClosed E.absorptionClosed))

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse