import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure RandomIsingSpinSystem where
  lattice : Type u
  spins : lattice → Type v
  disorderCoupling : Prop
  hamiltonianDefined : Prop
  disorderCouplingTerm : disorderCoupling
  hamiltonianDefinedTerm : hamiltonianDefined

structure RandomIsingSpinEvidence (R : RandomIsingSpinSystem) where
  disorderCouplingClosed : R.disorderCoupling
  hamiltonianDefinedClosed : R.hamiltonianDefined

def RandomIsingSpinClosed (R : RandomIsingSpinSystem) : Prop :=
  R.disorderCoupling ∧ R.hamiltonianDefined

theorem random_ising_spin_closed_from_evidence
    (R : RandomIsingSpinSystem) (E : RandomIsingSpinEvidence R) :
    RandomIsingSpinClosed R := by
  exact And.intro E.disorderCouplingClosed E.hamiltonianDefinedClosed

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse