import DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RandomIsingSystem where
  carrier : Type
  topology : TopologicalSpace carrier
  disorderDistribution : carrier → ℝ
  spinConfiguration : carrier → { -1, 1 }
  hamiltonian : carrier → ℝ

structure AdmittedObject where
  system : RandomIsingSystem
  disorderFinite : Prop
  spinSpaceCompact : Prop
  magnetizationDefined : Prop
  phaseTransitionExists : Prop
  conclusion : phaseTransitionExists

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ThermodynamicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def ThermodynamicWitnessClosed (O : AdmittedObject) : Prop :=
  O.phaseTransitionExists

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse