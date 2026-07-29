import canonicalLaneMathlib.AdmissibleClass
import FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean.FactorisationSystem

namespace HautevilleHouse
namespace FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure QuotientObject {C : Type u} [Category.{v} C] (X : C) where
  relation : X → X → Prop
  quotientSpace : C
  projection : X ⟶ quotientSpace
  epi : Epi projection
  universalProperty : ∀ (Y : C) (f : X ⟶ Y), (∀ a b, relation a b → f a = f b) → ∃! g : quotientSpace ⟶ Y, projection ≫ g = f

structure QuotientStructure {C : Type u} [Category.{v} C] (X : C) where
  quotients : Set (QuotientObject X)
  factorisationCompatible : Prop

structure QuotientStructureEvidence {C : Type u} [Category.{v} C] {X : C} (Q : QuotientStructure X) where
  factorisationCompatibleClosed : Q.factorisationCompatible

def QuotientStructureClosed {C : Type u} [Category.{v} C] {X : C} (Q : QuotientStructure X) : Prop :=
  Q.factorisationCompatible

theorem quotient_structure_closed_from_evidence {C : Type u} [Category.{v} C] {X : C}
    (Q : QuotientStructure X) (E : QuotientStructureEvidence Q) : QuotientStructureClosed Q := by
  exact E.factorisationCompatibleClosed

end FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse