import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure SubstructureLifting (F : FactorizationSystem) where
  subObject : Type u
  inclusion : subObject → F.C
  liftProperty : Prop
  universal : Prop

structure LiftingEvidence {F : FactorizationSystem} (L : SubstructureLifting F) where
  liftPropertyClosed : L.liftProperty
  universalClosed : L.universal

def LiftingClosed {F : FactorizationSystem} (L : SubstructureLifting F) : Prop :=
  L.liftProperty ∧ L.universal

theorem lifting_closed_from_evidence {F : FactorizationSystem} (L : SubstructureLifting F) (E : LiftingEvidence L) :
    LiftingClosed L :=
  And.intro E.liftPropertyClosed E.universalClosed

end FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse