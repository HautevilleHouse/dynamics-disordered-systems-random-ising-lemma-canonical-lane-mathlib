import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure SKModelFreeEnergy where
  skHamiltonian : Prop
  parisiFunctional : Prop
  parisiOverlapDistribution : Prop
  freeEnergyLimits : Prop
  skHamiltonianTerm : skHamiltonian
  parisiFunctionalTerm : parisiFunctional
  parisiOverlapDistributionTerm : parisiOverlapDistribution
  freeEnergyLimitsTerm : freeEnergyLimits

structure SKModelFreeEnergyEvidence (S : SKModelFreeEnergy) where
  skHamiltonianClosed : S.skHamiltonian
  parisiFunctionalClosed : S.parisiFunctional
  parisiOverlapDistributionClosed : S.parisiOverlapDistribution
  freeEnergyLimitsClosed : S.freeEnergyLimits

def SKModelFreeEnergyClosed (S : SKModelFreeEnergy) : Prop :=
  S.skHamiltonian ∧ S.parisiFunctional ∧ S.parisiOverlapDistribution ∧ S.freeEnergyLimits

theorem sk_model_free_energy_closed_from_evidence
    (S : SKModelFreeEnergy) (E : SKModelFreeEnergyEvidence S) :
    SKModelFreeEnergyClosed S := by
  exact And.intro E.skHamiltonianClosed
    (And.intro E.parisiFunctionalClosed
      (And.intro E.parisiOverlapDistributionClosed E.freeEnergyLimitsClosed))

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse