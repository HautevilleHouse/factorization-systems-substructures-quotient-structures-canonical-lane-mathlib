import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure FactorSystemSubstrate where
  baseObject : Type u
  factorStructure : Prop
  weakFactorization : Prop
  leftClass : Prop
  rightClass : Prop
  factorStructureTerm : factorStructure
  weakFactorizationTerm : weakFactorization
  leftClassTerm : leftClass
  rightClassTerm : rightClass

structure FactorSystemEvidence (S : FactorSystemSubstrate) where
  factorStructureClosed : S.factorStructure
  weakFactorizationClosed : S.weakFactorization
  leftClassClosed : S.leftClass
  rightClassClosed : S.rightClass

def FactorSystemClosed (S : FactorSystemSubstrate) : Prop :=
  S.factorStructure ∧ S.weakFactorization ∧ S.leftClass ∧ S.rightClass

theorem factor_system_closed_from_evidence (S : FactorSystemSubstrate) (E : FactorSystemEvidence S) : FactorSystemClosed S := by
  exact And.intro E.factorStructureClosed (And.intro E.weakFactorizationClosed (And.intro E.leftClassClosed E.rightClassClosed))

end FactorSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse
