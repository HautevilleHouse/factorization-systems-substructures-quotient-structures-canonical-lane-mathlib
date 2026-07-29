import canonicalLaneMathlib.AdmissibleClass
import FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FactorisationClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.factorisationClosed

end FactorisationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse