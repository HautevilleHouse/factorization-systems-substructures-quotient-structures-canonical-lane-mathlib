import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure FactorizationSystem (X : Type u) where
  E : X → X → Prop
  M : X → X → Prop
  EClosure : ∀ x y, E x y → Prop
  MClosure : ∀ x y, M x y → Prop

structure FactorizationSystemEvidence (FS : FactorizationSystem X) where
  EClosed : ∀ x y, FS.EClosure x y
  MClosed : ∀ x y, FS.MClosure x y

def FactorizationSystemClosed (FS : FactorizationSystem X) : Prop :=
  ∀ x y, FS.EClosure x y ∧ FS.MClosure x y

theorem factorization_system_closed_from_evidence (FS : FactorizationSystem X) (E : FactorizationSystemEvidence FS) : FactorizationSystemClosed FS := by
  intro x y
  exact And.intro (E.EClosed x y) (E.MClosed x y)

end FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse