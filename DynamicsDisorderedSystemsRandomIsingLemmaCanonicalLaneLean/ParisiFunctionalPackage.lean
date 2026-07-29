import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure ParisiFunctionalPackage where
  overlapDistribution : Type u
  replicaSymmetryBreaking : Type v
  variationalFormula : Prop
  criticalTemperature : Prop

structure ParisiFunctionalEvidence (P : ParisiFunctionalPackage) where
  variationalFormulaClosed : P.variationalFormula
  criticalTemperatureClosed : P.criticalTemperature

def ParisiFunctionalClosed (P : ParisiFunctionalPackage) : Prop :=
  P.variationalFormula ∧ P.criticalTemperature

theorem parisi_functional_closed_from_evidence
    (P : ParisiFunctionalPackage) (E : ParisiFunctionalEvidence P) :
    ParisiFunctionalClosed P := by
  exact And.intro E.variationalFormulaClosed E.criticalTemperatureClosed

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse