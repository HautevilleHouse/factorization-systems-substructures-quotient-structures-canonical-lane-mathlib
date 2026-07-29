import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure QuotientStabilityPackage where
  domain : Type u
  equivalenceRelation : Prop
  quotientMap : Prop
  universalProperty : Prop
  equivalenceRelationTerm : equivalenceRelation
  quotientMapTerm : quotientMap
  universalPropertyTerm : universalProperty

structure QuotientStabilityEvidence (Q : QuotientStabilityPackage) where
  equivalenceRelationClosed : Q.equivalenceRelation
  quotientMapClosed : Q.quotientMap
  universalPropertyClosed : Q.universalProperty

def QuotientStabilityClosed (Q : QuotientStabilityPackage) : Prop :=
  Q.equivalenceRelation ∧ Q.quotientMap ∧ Q.universalProperty

theorem quotient_stability_closed_from_evidence (Q : QuotientStabilityPackage) (E : QuotientStabilityEvidence Q) : QuotientStabilityClosed Q := by
  exact And.intro E.equivalenceRelationClosed (And.intro E.quotientMapClosed E.universalPropertyClosed)

end FactorSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse
