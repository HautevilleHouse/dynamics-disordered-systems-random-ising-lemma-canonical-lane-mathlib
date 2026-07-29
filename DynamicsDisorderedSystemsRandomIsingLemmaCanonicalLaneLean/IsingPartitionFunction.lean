import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure IsingPartitionFunction where
  temperature : ℝ
  disorderAverage : Prop
  freeEnergyDensity : Prop
  selfAveraging : Prop
  temperatureTerm : temperature > 0
  disorderAverageTerm : disorderAverage
  freeEnergyDensityTerm : freeEnergyDensity
  selfAveragingTerm : selfAveraging

structure IsingPartitionFunctionEvidence (Z : IsingPartitionFunction) where
  temperatureClosed : Z.temperature > 0
  disorderAverageClosed : Z.disorderAverage
  freeEnergyDensityClosed : Z.freeEnergyDensity
  selfAveragingClosed : Z.selfAveraging

def IsingPartitionFunctionClosed (Z : IsingPartitionFunction) : Prop :=
  Z.temperature > 0 ∧ Z.disorderAverage ∧ Z.freeEnergyDensity ∧ Z.selfAveraging

theorem ising_partition_function_closed_from_evidence
    (Z : IsingPartitionFunction) (E : IsingPartitionFunctionEvidence Z) :
    IsingPartitionFunctionClosed Z := by
  exact And.intro E.temperatureClosed
    (And.intro E.disorderAverageClosed
      (And.intro E.freeEnergyDensityClosed E.selfAveragingClosed))

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse