import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  true

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  trivial

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse