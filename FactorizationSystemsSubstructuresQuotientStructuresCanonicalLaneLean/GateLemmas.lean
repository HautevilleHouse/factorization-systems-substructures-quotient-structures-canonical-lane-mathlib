import canonicalLaneMathlib.AdmissibleClass
import FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.factorisationClosed ∨ A.substructureRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.quotientWitness

end FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse