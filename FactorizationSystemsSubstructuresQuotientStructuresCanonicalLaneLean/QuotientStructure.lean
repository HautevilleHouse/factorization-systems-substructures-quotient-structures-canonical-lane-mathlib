import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure Congruence where
  carrier : Type u
  relation : carrier → carrier → Prop
  reflexive : Prop
  symmetric : Prop
  transitive : Prop
  compatibleWithOperations : Prop

structure QuotientStructure where
  originalObject : Type u
  congruence : Congruence originalObject
  quotientSet : Type v
  projectionMap : originalObject → quotientSet
  universalProperty : Prop

structure QuotientStructureEvidence (Q : QuotientStructure) where
  universalPropertyClosed : Q.universalProperty

def QuotientStructureClosed (Q : QuotientStructure) : Prop :=
  Q.universalProperty

theorem quotient_structure_closed_from_evidence (Q : QuotientStructure) (E : QuotientStructureEvidence Q) :
    QuotientStructureClosed Q := by
  exact E.universalPropertyClosed

end FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse