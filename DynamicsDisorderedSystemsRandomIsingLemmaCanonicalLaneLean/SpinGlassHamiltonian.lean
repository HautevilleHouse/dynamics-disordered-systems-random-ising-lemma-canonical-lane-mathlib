import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure SpinGlassHamiltonian where
  lattice : Type
  spinConfig : Type
  bondDisorder : Type
  couplingDistribution : Prop
  isingInteraction : Prop
  hamiltonianDefined : Prop

structure SpinGlassHamiltonianEvidence (H : SpinGlassHamiltonian) where
  couplingDistributionClosed : H.couplingDistribution
  isingInteractionClosed : H.isingInteraction
  hamiltonianDefinedClosed : H.hamiltonianDefined

def SpinGlassHamiltonianClosed (H : SpinGlassHamiltonian) : Prop :=
  H.couplingDistribution ∧ H.isingInteraction ∧ H.hamiltonianDefined

theorem spin_glass_hamiltonian_closed_from_evidence (H : SpinGlassHamiltonian)
    (E : SpinGlassHamiltonianEvidence H) : SpinGlassHamiltonianClosed H := by
  exact And.intro E.couplingDistributionClosed
    (And.intro E.isingInteractionClosed E.hamiltonianDefinedClosed)

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse