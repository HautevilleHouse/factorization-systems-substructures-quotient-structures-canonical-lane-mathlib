import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure OrthogonalityClosurePackage where
  leftMorphismClass : Prop
  rightMorphismClass : Prop
  orthogonalityCondition : Prop
  liftingProperty : Prop
  leftMorphismClassTerm : leftMorphismClass
  rightMorphismClassTerm : rightMorphismClass
  orthogonalityConditionTerm : orthogonalityCondition
  liftingPropertyTerm : liftingProperty

structure OrthogonalityClosureEvidence (O : OrthogonalityClosurePackage) where
  leftMorphismClassClosed : O.leftMorphismClass
  rightMorphismClassClosed : O.rightMorphismClass
  orthogonalityConditionClosed : O.orthogonalityCondition
  liftingPropertyClosed : O.liftingProperty

def OrthogonalityClosureClosed (O : OrthogonalityClosurePackage) : Prop :=
  O.leftMorphismClass ∧ O.rightMorphismClass ∧ O.orthogonalityCondition ∧ O.liftingProperty

theorem orthogonality_closure_closed_from_evidence (O : OrthogonalityClosurePackage) (E : OrthogonalityClosureEvidence O) : OrthogonalityClosureClosed O := by
  exact And.intro E.leftMorphismClassClosed (And.intro E.rightMorphismClassClosed (And.intro E.orthogonalityConditionClosed E.liftingPropertyClosed))

end FactorSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse
