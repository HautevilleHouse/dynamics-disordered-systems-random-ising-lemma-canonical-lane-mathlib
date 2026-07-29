import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure GuerraToninelliInterpolation where
  interpolatingParameter : ℝ → ℝ
  overlapDistribution : Prop
  cavityFieldMethod : Prop
  aizenmanContucciInequalities : Prop
  ghirsalInaCorrelation : Prop
  interpolatingParameterTerm : ∀ s, interpolatingParameter s ∈ Set.Ioo 0 1
  overlapDistributionTerm : overlapDistribution
  cavityFieldMethodTerm : cavityFieldMethod
  aizenmanContucciInequalitiesTerm : aizenmanContucciInequalities
  ghirsalInaCorrelationTerm : ghirsalInaCorrelation

structure GuerraToninelliInterpolationEvidence (G : GuerraToninelliInterpolation) where
  interpolatingParameterClosed : ∀ s, G.interpolatingParameter s ∈ Set.Ioo 0 1
  overlapDistributionClosed : G.overlapDistribution
  cavityFieldMethodClosed : G.cavityFieldMethod
  aizenmanContucciInequalitiesClosed : G.aizenmanContucciInequalities
  ghirsalInaCorrelationClosed : G.ghirsalInaCorrelation

def GuerraToninelliInterpolationClosed (G : GuerraToninelliInterpolation) : Prop :=
  (∀ s, G.interpolatingParameter s ∈ Set.Ioo 0 1) ∧ G.overlapDistribution ∧
  G.cavityFieldMethod ∧ G.aizenmanContucciInequalities ∧ G.ghirsalInaCorrelation

theorem guerra_toninelli_interpolation_closed_from_evidence
    (G : GuerraToninelliInterpolation) (E : GuerraToninelliInterpolationEvidence G) :
    GuerraToninelliInterpolationClosed G := by
  exact And.intro E.interpolatingParameterClosed
    (And.intro E.overlapDistributionClosed
      (And.intro E.cavityFieldMethodClosed
        (And.intro E.aizenmanContucciInequalitiesClosed
          E.ghirsalInaCorrelationClosed)))

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse