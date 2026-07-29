import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure SherringtonKirkpatrickPackage where
  nSpins : ℕ
  couplingDistribution : ℝ → ℝ
  meanField : Prop
  replicaTrick : Prop

structure SherringtonKirkpatrickEvidence (S : SherringtonKirkpatrickPackage) where
  meanFieldClosed : S.meanField
  replicaTrickClosed : S.replicaTrick

def SherringtonKirkpatrickClosed (S : SherringtonKirkpatrickPackage) : Prop :=
  S.meanField ∧ S.replicaTrick

theorem sherrington_kirkpatrick_closed_from_evidence
  (S : SherringtonKirkpatrickPackage) (E : SherringtonKirkpatrickEvidence S) :
  SherringtonKirkpatrickClosed S := by
  exact And.intro E.meanFieldClosed E.replicaTrickClosed

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse