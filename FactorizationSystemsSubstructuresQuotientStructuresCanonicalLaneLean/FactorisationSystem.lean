import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure FactorisationSystem where
  sourceCategory : Type u
  targetCategory : Type v
  leftClass : Type w
  rightClass : Type x
  leftClassClosedUnderComposition : Prop
  rightClassClosedUnderComposition : Prop
  factorisationExistence : Prop
  uniqueness : Prop

structure FactorisationSystemEvidence (F : FactorisationSystem) where
  leftClassClosedUnderCompositionClosed : F.leftClassClosedUnderComposition
  rightClassClosedUnderCompositionClosed : F.rightClassClosedUnderComposition
  factorisationExistenceClosed : F.factorisationExistence
  uniquenessClosed : F.uniqueness

def FactorisationSystemClosed (F : FactorisationSystem) : Prop :=
  F.leftClassClosedUnderComposition ∧ F.rightClassClosedUnderComposition ∧
  F.factorisationExistence ∧ F.uniqueness

theorem factorisation_system_closed_from_evidence (F : FactorisationSystem) (E : FactorisationSystemEvidence F) :
    FactorisationSystemClosed F := by
  exact And.intro E.leftClassClosedUnderCompositionClosed
    (And.intro E.rightClassClosedUnderCompositionClosed
      (And.intro E.factorisationExistenceClosed E.uniquenessClosed))

end FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse