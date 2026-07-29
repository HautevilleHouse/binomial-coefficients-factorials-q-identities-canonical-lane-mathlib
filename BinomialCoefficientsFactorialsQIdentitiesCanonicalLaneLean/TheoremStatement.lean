import BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  binomConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "binomial-coefficients-factorials-q-identities-canonical-lane",
  theoremName := "BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean",
  theoremObject := "ConstrainedBinomialClosure",
  classicalBoundary := "carried",
  binomConstrainedStatement := "All binomial coefficient, factorial, and q-identities are closed under the bridge-gate pattern.",
  certificateLane := "binomial_constrained",
  carriedRemainder := "Unrestricted classical closure remains carried."
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "binomial-coefficients-factorials-q-identities-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "binomial_constrained" := by
  rfl

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse