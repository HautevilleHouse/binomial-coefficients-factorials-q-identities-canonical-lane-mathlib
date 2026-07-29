import BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Nat.Choose.Basic

namespace HautevilleHouse
namespace BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BinomialSpace where
  carrier : Type
  q : ℕ
  qFactorial : ℕ → ℕ
  qBinomial : ℕ → ℕ → ℕ

structure BinomialAdmittedObject where
  space : BinomialSpace
  identityHolds : Prop
  qBinomialSymmetry : space.qBinomial n k = space.qBinomial (n - k) k
  conclusion : qBinomialSymmetry
  n : ℕ
  k : ℕ

structure BinomialEndgameState where
  object : BinomialAdmittedObject

def BinomialWitnessClosed (O : BinomialAdmittedObject) : Prop :=
  O.qBinomialSymmetry

end BinomialCoefficientsFactorialsQIdentitiesCanonicalLaneLean
end HautevilleHouse