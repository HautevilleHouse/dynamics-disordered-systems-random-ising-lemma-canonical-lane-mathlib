import canonicalLaneMathlib.AdmissibleClass
import DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean.RandomIsingSpinSystem

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure RandomIsingAdmissibleClass where
  n : ℕ
  system : RandomIsingSpinSystem n
  disorder : DisorderDistribution n
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def RandomIsingAdmissibleClosure (A : RandomIsingAdmissibleClass) : Prop := 
  bridgeClosed A ∧ gateClosed A

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse