import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

structure BinomialCoefficientPackage where
  pascalRule : Prop
  symmetry : Prop
  absorption : Prop
  upperSummation : Prop
  factorialIdentity : Prop
  qPascalRule : Prop
  qSymmetry : Prop
  qBinomialTheorem : Prop
  qFactorialIdentity : Prop

structure BinomialCoefficientEvidence (P : BinomialCoefficientPackage) where
  pascalRuleClosed : P.pascalRule
  symmetryClosed : P.symmetry
  absorptionClosed : P.absorption
  upperSummationClosed : P.upperSummation
  factorialIdentityClosed : P.factorialIdentity
  qPascalRuleClosed : P.qPascalRule
  qSymmetryClosed : P.qSymmetry
  qBinomialTheoremClosed : P.qBinomialTheorem
  qFactorialIdentityClosed : P.qFactorialIdentity

def BinomialCoefficientPackageClosed (P : BinomialCoefficientPackage) : Prop :=
  P.pascalRule ∧ P.symmetry ∧ P.absorption ∧ P.upperSummation ∧
  P.factorialIdentity ∧ P.qPascalRule ∧ P.qSymmetry ∧
  P.qBinomialTheorem ∧ P.qFactorialIdentity

theorem binomial_coefficient_package_closed_from_evidence
    (P : BinomialCoefficientPackage) (E : BinomialCoefficientEvidence P) :
    BinomialCoefficientPackageClosed P := by
  exact And.intro E.pascalRuleClosed
    (And.intro E.symmetryClosed
      (And.intro E.absorptionClosed
        (And.intro E.upperSummationClosed
          (And.intro E.factorialIdentityClosed
            (And.intro E.qPascalRuleClosed
              (And.intro E.qSymmetryClosed
                (And.intro E.qBinomialTheoremClosed
                  E.qFactorialIdentityClosed))))))))

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse