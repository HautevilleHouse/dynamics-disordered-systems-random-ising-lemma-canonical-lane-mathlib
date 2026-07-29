import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure ReplicaTrick where
  replicatedSystem : Type u
  replicaIndex : ℕ
  momentGeneratingFunction : Prop
  analyticContinuation : Prop
  limitReplicaToZero : Prop
  replicaSymmetry : Prop
  quenchedDisorderComputed : Prop

structure ReplicaTrickEvidence (R : ReplicaTrick) where
  momentGeneratingFunctionDefined : R.momentGeneratingFunction
  analyticContinuationValid : R.analyticContinuation
  limitReplicaToZeroValid : R.limitReplicaToZero
  replicaSymmetryAssumed : R.replicaSymmetry
  quenchedDisorderComputedValid : R.quenchedDisorderComputed

def ReplicaTrickClosed (R : ReplicaTrick) : Prop :=
  R.momentGeneratingFunction ∧
  R.analyticContinuation ∧
  R.limitReplicaToZero ∧
  R.replicaSymmetry ∧
  R.quenchedDisorderComputed

theorem replica_trick_closed_from_evidence
    (R : ReplicaTrick) (E : ReplicaTrickEvidence R) :
    ReplicaTrickClosed R := by
  exact And.intro E.momentGeneratingFunctionDefined
    (And.intro E.analyticContinuationValid
      (And.intro E.limitReplicaToZeroValid
        (And.intro E.replicaSymmetryAssumed E.quenchedDisorderComputedValid)))

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse