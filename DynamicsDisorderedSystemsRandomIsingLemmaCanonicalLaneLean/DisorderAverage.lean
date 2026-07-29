import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure DisorderAverage where
  configSpace : Type u
  disorderDistribution : Type v
  expectationFunctional : Prop
  quenchedAverage : Prop
  annealedAverage : Prop
  selfAveraging : Prop
  concentrationInequality : Prop

structure DisorderAverageEvidence (D : DisorderAverage) where
  expectationFunctionalDefined : D.expectationFunctional
  quenchedAverageDefined : D.quenchedAverage
  annealedAverageDefined : D.annealedAverage
  selfAveragingHolds : D.selfAveraging
  concentrationInequalityHolds : D.concentrationInequality

def DisorderAverageClosed (D : DisorderAverage) : Prop :=
  D.expectationFunctional ∧
  D.quenchedAverage ∧
  D.annealedAverage ∧
  D.selfAveraging ∧
  D.concentrationInequality

theorem disorder_average_closed_from_evidence
    (D : DisorderAverage) (E : DisorderAverageEvidence D) :
    DisorderAverageClosed D := by
  exact And.intro E.expectationFunctionalDefined
    (And.intro E.quenchedAverageDefined
      (And.intro E.annealedAverageDefined
        (And.intro E.selfAveragingHolds E.concentrationInequalityHolds)))

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse