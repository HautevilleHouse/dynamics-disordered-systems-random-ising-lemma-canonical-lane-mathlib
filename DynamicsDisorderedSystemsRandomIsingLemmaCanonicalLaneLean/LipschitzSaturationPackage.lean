import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure LipschitzSaturationPackage where
  disorderLipschitzConstant : Type u
  saturationBound : Prop
  annealingDynamics : Type v
  convergenceRate : Prop

structure LipschitzSaturationEvidence (L : LipschitzSaturationPackage) where
  saturationBoundClosed : L.saturationBound
  convergenceRateClosed : L.convergenceRate

def LipschitzSaturationClosed (L : LipschitzSaturationPackage) : Prop :=
  L.saturationBound ∧ L.convergenceRate

theorem lipschitz_saturation_closed_from_evidence
    (L : LipschitzSaturationPackage) (E : LipschitzSaturationEvidence L) :
    LipschitzSaturationClosed L := by
  exact And.intro E.saturationBoundClosed E.convergenceRateClosed

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse