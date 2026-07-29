import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure Monad where
  category : Type u
  endofunctor : Type u → Type u
  unit : Type u → Type u
  multiplication : Type u → Type u
  associativity : Prop
  unitLaws : Prop

structure EilenbergMooreAlgebra where
  monad : Monad
  carrier : Type v
  action : monad.endofunctor carrier → carrier
  associativity : Prop
  unitCondition : Prop

structure EilenbergMooreEvidence (A : EilenbergMooreAlgebra) where
  associativityClosed : A.associativity
  unitConditionClosed : A.unitCondition

def EilenbergMooreAlgebraClosed (A : EilenbergMooreAlgebra) : Prop :=
  A.associativity ∧ A.unitCondition

theorem eilenberg_moore_algebra_closed_from_evidence (A : EilenbergMooreAlgebra) (E : EilenbergMooreEvidence A) :
    EilenbergMooreAlgebraClosed A := by
  exact And.intro E.associativityClosed E.unitConditionClosed

end FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse