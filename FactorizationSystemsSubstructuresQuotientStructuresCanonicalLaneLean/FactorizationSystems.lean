import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure FactorizationSystem where
  C : Type u
  E : Type v
  M : Type w
  factor : (f : C) -> (g : C) -> C
  leftProperty : Prop
  rightProperty : Prop
  uniqueness : Prop

structure FactorizationEvidence (F : FactorizationSystem) where
  leftPropertyClosed : F.leftProperty
  rightPropertyClosed : F.rightProperty
  uniquenessClosed : F.uniqueness

def FactorizationClosed (F : FactorizationSystem) : Prop :=
  F.leftProperty ∧ F.rightProperty ∧ F.uniqueness

theorem factorization_closed_from_evidence (F : FactorizationSystem) (E : FactorizationEvidence F) :
    FactorizationClosed F :=
  And.intro E.leftPropertyClosed (And.intro E.rightPropertyClosed E.uniquenessClosed)

end FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse