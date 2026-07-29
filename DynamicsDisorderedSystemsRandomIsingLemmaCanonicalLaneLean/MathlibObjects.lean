import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RandomIsingSpinConfig where
  spins : Type
  sigma : spins → ℤ
  sigmaSquared : (sigma s)^2 = 1 for all s

def RandomIsingWitnessClosed (O : RandomIsingSpinConfig) : Prop :=
  ∀ s : O.spins, O.sigmaSquared s

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse