import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure ThermodynamicLimitPackage where
  freeEnergyDensity : Type u
  limitExistence : Prop
  limitUniqueness : Prop
  fluctuationBounds : Prop

structure ThermodynamicLimitEvidence (T : ThermodynamicLimitPackage) where
  limitExistenceClosed : T.limitExistence
  limitUniquenessClosed : T.limitUniqueness
  fluctuationBoundsClosed : T.fluctuationBounds

def ThermodynamicLimitClosed (T : ThermodynamicLimitPackage) : Prop :=
  T.limitExistence ∧ T.limitUniqueness ∧ T.fluctuationBounds

theorem thermodynamic_limit_closed_from_evidence
    (T : ThermodynamicLimitPackage) (E : ThermodynamicLimitEvidence T) :
    ThermodynamicLimitClosed T := by
  exact And.intro E.limitExistenceClosed
    (And.intro E.limitUniquenessClosed E.fluctuationBoundsClosed)

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse