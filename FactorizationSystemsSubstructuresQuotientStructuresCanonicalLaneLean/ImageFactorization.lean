import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure ImageFactorization (X Y : Type u) (f : X → Y) where
  intermediateObject : Type u
  epimorphism : X → intermediateObject
  monomorphism : intermediateObject → Y
  factorizationProperty : f = monomorphism ∘ epimorphism
  imageClosed : Prop
  coimageClosed : Prop

structure ImageFactorizationEvidence (X Y : Type u) (f : X → Y) (IF : ImageFactorization X Y f) where
  imageClosedClosed : IF.imageClosed
  coimageClosedClosed : IF.coimageClosed

def ImageFactorizationClosed (X Y : Type u) (f : X → Y) (IF : ImageFactorization X Y f) : Prop :=
  IF.imageClosed ∧ IF.coimageClosed

theorem image_factorization_closed_from_evidence (X Y : Type u) (f : X → Y) (IF : ImageFactorization X Y f) (E : ImageFactorizationEvidence X Y f IF) : ImageFactorizationClosed X Y f IF := by
  exact And.intro E.imageClosedClosed E.coimageClosedClosed

end FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse