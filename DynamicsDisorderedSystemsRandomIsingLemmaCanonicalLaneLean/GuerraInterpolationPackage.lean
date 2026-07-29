import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure GuerraInterpolationPackage where
  interpolationParameter : Type u
  freeEnergyBound : Prop
  convexityProperty : Prop
  optimalBound : Prop

structure GuerraInterpolationEvidence (G : GuerraInterpolationPackage) where
  freeEnergyBoundClosed : G.freeEnergyBound
  convexityPropertyClosed : G.convexityProperty
  optimalBoundClosed : G.optimalBound

def GuerraInterpolationClosed (G : GuerraInterpolationPackage) : Prop :=
  G.freeEnergyBound ∧ G.convexityProperty ∧ G.optimalBound

theorem guerra_interpolation_closed_from_evidence
    (G : GuerraInterpolationPackage) (E : GuerraInterpolationEvidence G) :
    GuerraInterpolationClosed G := by
  exact And.intro E.freeEnergyBoundClosed
    (And.intro E.convexityPropertyClosed E.optimalBoundClosed)

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse