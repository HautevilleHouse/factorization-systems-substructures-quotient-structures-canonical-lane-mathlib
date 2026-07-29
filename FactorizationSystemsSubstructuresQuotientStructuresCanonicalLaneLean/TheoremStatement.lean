import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  factorizationConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

default theoremStatement : TheoremStatement := {
  sourceKey := "factorization-systems-substructures-quotient-structures-canonical-lane"
  theoremName := "Factorization Systems Substructures Quotient Structures"
  theoremObject := "QuotientAdmittedObject"
  classicalBoundary := "carried"
  factorizationConstrainedStatement := "Factorization structures are closed under admissible class constraints"
  certificateLane := "factorization_constrained"
  carriedRemainder := "remainder recorded"
}

end FactorizationSystemsSubstructuresQuotientStructuresCanonicalLaneLean
end HautevilleHouse
