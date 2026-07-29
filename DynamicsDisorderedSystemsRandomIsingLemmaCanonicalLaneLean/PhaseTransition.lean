import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure PhaseTransitionPackage where
  criticalTemperature : ℝ
  orderParameter : Type
  spontaneousMagnetization : Prop
  almeidaThoulessLine : Prop

structure PhaseTransitionEvidence (P : PhaseTransitionPackage) where
  spontaneousMagnetizationClosed : P.spontaneousMagnetization
  almeidaThoulessLineClosed : P.almeidaThoulessLine

def PhaseTransitionClosed (P : PhaseTransitionPackage) : Prop :=
  P.spontaneousMagnetization ∧ P.almeidaThoulessLine

theorem phase_transition_closed_from_evidence
  (P : PhaseTransitionPackage) (E : PhaseTransitionEvidence P) :
  PhaseTransitionClosed P := by
  exact And.intro E.spontaneousMagnetizationClosed E.almeidaThoulessLineClosed

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse