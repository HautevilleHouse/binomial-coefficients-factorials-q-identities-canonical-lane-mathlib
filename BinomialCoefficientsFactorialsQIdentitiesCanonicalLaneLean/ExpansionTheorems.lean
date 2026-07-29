import BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean.QIdentities

/-!
# Binomial Theorem and q-Binomial Theorem Package
-/

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

structure ExpansionTheoremsPackage {F : FactorialBinomialPackage}
    {S : StandardIdentitiesPackage F} {Q : QIdentitiesPackage S} where
  binomialTheorem : Prop
  qBinomialTheorem : Prop

structure ExpansionTheoremsEvidence {F : FactorialBinomialPackage}
    {S : StandardIdentitiesPackage F} {Q : QIdentitiesPackage S}
    (E : ExpansionTheoremsPackage Q) where
  binomialTheoremClosed : E.binomialTheorem
  qBinomialTheoremClosed : E.qBinomialTheorem

def ExpansionTheoremsClosed {F : FactorialBinomialPackage}
    {S : StandardIdentitiesPackage F} {Q : QIdentitiesPackage S}
    (E : ExpansionTheoremsPackage Q) : Prop :=
  E.binomialTheorem ∧ E.qBinomialTheorem

theorem expansion_theorems_closed_from_evidence {F : FactorialBinomialPackage}
    {S : StandardIdentitiesPackage F} {Q : QIdentitiesPackage S}
    (E : ExpansionTheoremsPackage Q) (Ev : ExpansionTheoremsEvidence E) :
    ExpansionTheoremsClosed E := by
  exact And.intro Ev.binomialTheoremClosed Ev.qBinomialTheoremClosed

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse