import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure KleisliCategory where
  monad : Monad
  objects : Type u
  morphisms : Type u → Type u → Type v
  identity : (A : objects) → morphisms A A
  composition : {A B C : objects} → morphisms A B → morphisms B C → morphisms A C
  identityLaws : Prop
  associativity : Prop

structure KleisliEvidence (K : KleisliCategory) where
  identityLawsClosed : K.identityLaws
  associativityClosed : K.associativity

def KleisliCategoryClosed (K : KleisliCategory) : Prop :=
  K.identityLaws ∧ K.associativity

theorem kleisli_category_closed_from_evidence (K : KleisliCategory) (E : KleisliEvidence K) :
    KleisliCategoryClosed K := by
  exact And.intro E.identityLawsClosed E.associativityClosed

end FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse