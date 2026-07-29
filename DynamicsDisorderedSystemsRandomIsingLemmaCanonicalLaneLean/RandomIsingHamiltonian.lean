import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure RandomIsingHamiltonianPackage where
  coupling : Type
  J : coupling → ℤ
  h : ℤ
  bondDisorder : Prop
  fieldDisorder : Prop
  HamiltonianDefined : Prop

structure RandomIsingHamiltonianEvidence (H : RandomIsingHamiltonianPackage) where
  bondDisorderClosed : H.bondDisorder
  fieldDisorderClosed : H.fieldDisorder
  HamiltonianDefinedClosed : H.HamiltonianDefined

def RandomIsingHamiltonianClosed (H : RandomIsingHamiltonianPackage) : Prop :=
  H.bondDisorder ∧ H.fieldDisorder ∧ H.HamiltonianDefined

theorem random_ising_hamiltonian_closed_from_evidence
  (H : RandomIsingHamiltonianPackage) (E : RandomIsingHamiltonianEvidence H) :
  RandomIsingHamiltonianClosed H := by
  exact And.intro E.bondDisorderClosed (And.intro E.fieldDisorderClosed E.HamiltonianDefinedClosed)

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse