import canonicalLaneMathlib.AdmissibleClass
import DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean.BridgeLemmas
import DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

def ConstrainedRandomIsingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_random_ising_endgame (A : AdmissibleClass) :
    ConstrainedRandomIsingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse