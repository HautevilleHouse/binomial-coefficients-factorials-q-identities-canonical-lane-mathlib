import BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BinomialWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse