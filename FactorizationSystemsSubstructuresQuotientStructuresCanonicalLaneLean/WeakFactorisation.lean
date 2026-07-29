import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure LiftingProperty where
  left : Type u → Type v → Prop
  right : Type u → Type v → Prop
  diagonalFill : Prop

structure WeakFactorisationSystem where
  category : Type u
  leftMapClass : LiftingProperty
  rightMapClass : LiftingProperty
  factorisationExists : Prop
  liftingAxioms : Prop
  leftClassClosedUnderPushout : Prop
  rightClassClosedUnderPullback : Prop

structure WeakFactorisationSystemEvidence (W : WeakFactorisationSystem) where
  factorisationExistsClosed : W.factorisationExists
  liftingAxiomsClosed : W.liftingAxioms
  leftClassClosedUnderPushoutClosed : W.leftClassClosedUnderPushout
  rightClassClosedUnderPullbackClosed : W.rightClassClosedUnderPullback

def WeakFactorisationSystemClosed (W : WeakFactorisationSystem) : Prop :=
  W.factorisationExists ∧ W.liftingAxioms ∧
  W.leftClassClosedUnderPushout ∧ W.rightClassClosedUnderPullback

theorem weak_factorisation_system_closed_from_evidence (W : WeakFactorisationSystem) (E : WeakFactorisationSystemEvidence W) :
    WeakFactorisationSystemClosed W := by
  exact And.intro E.factorisationExistsClosed
    (And.intro E.liftingAxiomsClosed
      (And.intro E.leftClassClosedUnderPushoutClosed E.rightClassClosedUnderPullbackClosed))

end FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse