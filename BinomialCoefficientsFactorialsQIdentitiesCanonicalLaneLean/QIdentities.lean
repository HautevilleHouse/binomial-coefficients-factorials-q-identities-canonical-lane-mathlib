import BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean.StandardIdentities

/-!
# q-Binomial Identities Package
-/

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

structure QIdentitiesPackage {F : FactorialBinomialPackage}
    (S : StandardIdentitiesPackage F) where
  qPascalRule : Prop
  qChuVandermonde : Prop
  qBinomialTheorem : Prop
  qSymmetry : Prop

structure QIdentitiesEvidence {F : FactorialBinomialPackage}
    {S : StandardIdentitiesPackage F} (Q : QIdentitiesPackage S) where
  qPascalRuleClosed : Q.qPascalRule
  qChuVandermondeClosed : Q.qChuVandermonde
  qBinomialTheoremClosed : Q.qBinomialTheorem
  qSymmetryClosed : Q.qSymmetry

def QIdentitiesClosed {F : FactorialBinomialPackage}
    {S : StandardIdentitiesPackage F} (Q : QIdentitiesPackage S) : Prop :=
  Q.qPascalRule ∧ Q.qChuVandermonde ∧ Q.qBinomialTheorem ∧ Q.qSymmetry

theorem q_identities_closed_from_evidence {F : FactorialBinomialPackage}
    {S : StandardIdentitiesPackage F} (Q : QIdentitiesPackage S)
    (E : QIdentitiesEvidence Q) : QIdentitiesClosed Q := by
  exact And.intro E.qPascalRuleClosed
    (And.intro E.qChuVandermondeClosed
      (And.intro E.qBinomialTheoremClosed E.qSymmetryClosed))

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse