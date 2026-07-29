import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure AdmissibleClass where
  object : FactorisationObject
  factorisationClosed : Prop
  substructureRecorded : Prop
  quotientWitness : factorisationClosed ∨ substructureRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FactorisationClosed A.object ∧ (A.factorisationClosed ∨ A.substructureRecorded)

end FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse