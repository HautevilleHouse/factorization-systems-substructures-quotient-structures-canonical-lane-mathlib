import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure DecompositionLiftingPackage where
  sourceObject : Type u
  targetObject : Type v
  factoringMap : Type w
  leftFactor : Prop
  rightFactor : Prop
  liftCondition : Prop
  leftFactorTerm : leftFactor
  rightFactorTerm : rightFactor
  liftConditionTerm : liftCondition

structure DecompositionLiftingEvidence (D : DecompositionLiftingPackage) where
  leftFactorClosed : D.leftFactor
  rightFactorClosed : D.rightFactor
  liftConditionClosed : D.liftCondition

def DecompositionLiftingClosed (D : DecompositionLiftingPackage) : Prop :=
  D.leftFactor ∧ D.rightFactor ∧ D.liftCondition

theorem decomposition_lifting_closed_from_evidence (D : DecompositionLiftingPackage) (E : DecompositionLiftingEvidence D) : DecompositionLiftingClosed D := by
  exact And.intro E.leftFactorClosed (And.intro E.rightFactorClosed E.liftConditionClosed)

end FactorSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse
