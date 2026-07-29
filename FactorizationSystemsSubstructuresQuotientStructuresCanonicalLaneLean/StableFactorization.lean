import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure StableFactorization (X Y : Type u) (f : X → Y) where
  leftFactor : X → X
  rightFactor : X → Y
  stabilityProperty : ∀ (g : Y → Z), ∃ (h : X → Z), h = rightFactor ∘ g ∘ leftFactor
  pullbackClosed : Prop
  pushoutClosed : Prop

structure StableFactorizationEvidence (X Y : Type u) (f : X → Y) (SF : StableFactorization X Y f) where
  pullbackClosedClosed : SF.pullbackClosed
  pushoutClosedClosed : SF.pushoutClosed

def StableFactorizationClosed (X Y : Type u) (f : X → Y) (SF : StableFactorization X Y f) : Prop :=
  SF.pullbackClosed ∧ SF.pushoutClosed

theorem stable_factorization_closed_from_evidence (X Y : Type u) (f : X → Y) (SF : StableFactorization X Y f) (E : StableFactorizationEvidence X Y f SF) : StableFactorizationClosed X Y f SF := by
  exact And.intro E.pullbackClosedClosed E.pushoutClosedClosed

end FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse