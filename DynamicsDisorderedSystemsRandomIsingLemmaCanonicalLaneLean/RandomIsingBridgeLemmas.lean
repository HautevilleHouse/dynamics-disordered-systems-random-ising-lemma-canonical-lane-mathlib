import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | RandomIsingModelObj R => RandomFieldIsingModelClosed R
  | DisorderAverageObj D => DisorderAverageClosed D
  | ReplicaTrickObj R => ReplicaTrickClosed R

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  rcases A.object with (R | D | R')
  · exact random_field_ising_model_closed_from_evidence R (by
      -- We assume evidence is provided; here we extract from A.gateWitness
      sorry)
  · exact disorder_average_closed_from_evidence D (by sorry)
  · exact replica_trick_closed_from_evidence R' (by sorry)

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse