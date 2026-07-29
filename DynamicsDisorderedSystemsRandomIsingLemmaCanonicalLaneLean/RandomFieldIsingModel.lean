import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure RandomFieldIsingModel where
  lattice : Type u
  spinSpace : Type v
  randomField : lattice → ℝ
  couplingConstant : Prop
  partitionFunction : Prop
  freeEnergy : Prop
  groundState : Prop
  phaseTransitionParams : Prop

structure RandomFieldIsingModelEvidence (R : RandomFieldIsingModel) where
  randomFieldDefined : R.randomField ≠ fun _ => 0
  couplingConstantBounded : R.couplingConstant
  partitionFunctionFinite : R.partitionFunction
  freeEnergyDefined : R.freeEnergy
  groundStateExists : R.groundState
  phaseTransitionControlled : R.phaseTransitionParams

def RandomFieldIsingModelClosed (R : RandomFieldIsingModel) : Prop :=
  (R.randomField ≠ fun _ => 0) ∧
  R.couplingConstant ∧
  R.partitionFunction ∧
  R.freeEnergy ∧
  R.groundState ∧
  R.phaseTransitionParams

theorem random_field_ising_model_closed_from_evidence
    (R : RandomFieldIsingModel) (E : RandomFieldIsingModelEvidence R) :
    RandomFieldIsingModelClosed R := by
  exact And.intro E.randomFieldDefined
    (And.intro E.couplingConstantBounded
      (And.intro E.partitionFunctionFinite
        (And.intro E.freeEnergyDefined
          (And.intro E.groundStateExists E.phaseTransitionControlled))))

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse