import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure DisorderSpinGlassPackage where
  lattice : Type u
  spinConfiguration : Type v
  randomCouplingMatrix : Type w
  disorderDistribution : Type x
  hamiltonian : Type y
  finiteVolume : Prop
  quenchedDisorder : Prop
  selfAveraging : Prop

structure DisorderSpinGlassEvidence (D : DisorderSpinGlassPackage) where
  finiteVolumeClosed : D.finiteVolume
  quenchedDisorderClosed : D.quenchedDisorder
  selfAveragingClosed : D.selfAveraging

def DisorderSpinGlassClosed (D : DisorderSpinGlassPackage) : Prop :=
  D.finiteVolume ∧ D.quenchedDisorder ∧ D.selfAveraging

theorem disorder_spin_glass_closed_from_evidence
    (D : DisorderSpinGlassPackage) (E : DisorderSpinGlassEvidence D) :
    DisorderSpinGlassClosed D := by
  exact And.intro E.finiteVolumeClosed
    (And.intro E.quenchedDisorderClosed E.selfAveragingClosed)

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse