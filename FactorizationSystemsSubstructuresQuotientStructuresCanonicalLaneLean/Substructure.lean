import canonicalLaneMathlib.AdmissibleClass
import FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean.FactorisationSystem

namespace HautevilleHouse
namespace FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure Subobject {C : Type u} [Category.{v} C] (X : C) where
  subobject : C
  monomorphism : subobject ⟶ X
  mono : Mono monomorphism

structure SubobjectLattice {C : Type u} [Category.{v} C] (X : C) where
  subobjects : Set (Subobject X)
  intersection : Subobject X → Subobject X → Subobject X
  union : Subobject X → Subobject X → Subobject X
  latticeProperties : Prop

structure SubobjectLatticeEvidence {C : Type u} [Category.{v} C] {X : C} (L : SubobjectLattice X) where
  latticeClosed : L.latticeProperties

def SubobjectLatticeClosed {C : Type u} [Category.{v} C] {X : C} (L : SubobjectLattice X) : Prop :=
  L.latticeProperties

theorem subobject_lattice_closed_from_evidence {C : Type u} [Category.{v} C] {X : C}
    (L : SubobjectLattice X) (E : SubobjectLatticeEvidence L) : SubobjectLatticeClosed L := by
  exact E.latticeClosed

end FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse