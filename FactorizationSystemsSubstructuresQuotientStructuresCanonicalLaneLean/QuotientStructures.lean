import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure QuotientStructure (F : FactorizationSystem) where
  quotientObject : Type u
  projection : F.C → quotientObject
  quotientProperty : Prop
  universalProperty : Prop

structure QuotientEvidence {F : FactorizationSystem} (Q : QuotientStructure F) where
  quotientPropertyClosed : Q.quotientProperty
  universalPropertyClosed : Q.universalProperty

def QuotientClosed {F : FactorizationSystem} (Q : QuotientStructure F) : Prop :=
  Q.quotientProperty ∧ Q.universalProperty

theorem quotient_closed_from_evidence {F : FactorizationSystem} (Q : QuotientStructure F) (E : QuotientEvidence Q) :
    QuotientClosed Q :=
  And.intro E.quotientPropertyClosed E.universalPropertyClosed

end FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse