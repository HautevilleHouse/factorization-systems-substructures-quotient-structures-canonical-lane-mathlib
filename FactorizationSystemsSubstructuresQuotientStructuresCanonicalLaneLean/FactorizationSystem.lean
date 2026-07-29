import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure FactorizationSystem (C : Type u) [Category C] where
  E : MorphismProperty C
  M : MorphismProperty C
  existsFactorisation : ∀ (f : Arrow C), ∃ (e : E.arrows) (m : M.arrows), f = m ∘ e
  uniqueness : ∀ (f : Arrow C) (e1 : E.arrows) (m1 : M.arrows) (e2 : E.arrows) (m2 : M.arrows), f = m1 ∘ e1 → f = m2 ∘ e2 → (∃ (iso : IsIso (someArrow)), ... )
  closureUnderComposition : E.closedUnderComposition ∧ M.closedUnderComposition
  containsIsos : E.containsIsomorphisms ∧ M.containsIsomorphisms

end FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse