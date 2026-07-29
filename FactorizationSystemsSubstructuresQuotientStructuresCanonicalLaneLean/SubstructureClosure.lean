import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure SubstructurePackage where
  carrier : Type u
  closedUnderOperations : Prop
  inclusionMap : Prop
  substructureProperty : Prop
  closedUnderOperationsTerm : closedUnderOperations
  inclusionMapTerm : inclusionMap
  substructurePropertyTerm : substructureProperty

structure SubstructureEvidence (S : SubstructurePackage) where
  closedUnderOperationsClosed : S.closedUnderOperations
  inclusionMapClosed : S.inclusionMap
  substructurePropertyClosed : S.substructureProperty

def SubstructureClosed (S : SubstructurePackage) : Prop :=
  S.closedUnderOperations ∧ S.inclusionMap ∧ S.substructureProperty

theorem substructure_closed_from_evidence (S : SubstructurePackage) (E : SubstructureEvidence S) : SubstructureClosed S := by
  exact And.intro E.closedUnderOperationsClosed (And.intro E.inclusionMapClosed E.substructurePropertyClosed)

end FactorSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse
