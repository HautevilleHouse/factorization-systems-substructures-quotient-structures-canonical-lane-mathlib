import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure SubobjectLattice (X : Type u) where
  subobjects : Set (Set X)
  meets : Set X → Set X → Set X
  joins : Set X → Set X → Set X
  inclusionOrder : Prop
  latticeLaws : Prop

structure SubobjectLatticeEvidence (SL : SubobjectLattice X) where
  inclusionOrderClosed : SL.inclusionOrder
  latticeLawsClosed : SL.latticeLaws

def SubobjectLatticeClosed (SL : SubobjectLattice X) : Prop :=
  SL.inclusionOrder ∧ SL.latticeLaws

theorem subobject_lattice_closed_from_evidence (SL : SubobjectLattice X) (E : SubobjectLatticeEvidence SL) : SubobjectLatticeClosed SL := by
  exact And.intro E.inclusionOrderClosed E.latticeLawsClosed

end FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse