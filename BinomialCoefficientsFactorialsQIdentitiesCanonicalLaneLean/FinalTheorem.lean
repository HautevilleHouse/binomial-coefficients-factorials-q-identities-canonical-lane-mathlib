import BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

def ConstrainedBinomialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_binomial_endgame (A : AdmissibleClass) :
    ConstrainedBinomialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse