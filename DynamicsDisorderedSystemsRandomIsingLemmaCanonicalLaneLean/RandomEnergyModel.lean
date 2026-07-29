import DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean.SherringtonKirkpatrickModel

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure RandomEnergyModel (n : ℕ) where
  sk : SherringtonKirkpatrickModel n
  energyLevels : Type u
  levelSpacing : ℝ
  degeneracy : energyLevels → ℕ
  independentCondition : Prop

def REMFreeEnergy (n : ℕ) (rem : RandomEnergyModel n) (β : ℝ) : ℝ := (1/β) * Real.log (∑ l : rem.energyLevels, (rem.degeneracy l).toReal * Real.exp (-β * rem.levelSpacing))

theorem rem_free_energy_converges (n : ℕ) (rem : RandomEnergyModel n) (β : ℝ) (hβ : β > 0) : ∃ lim : ℝ, Filter.Tendsto (λ n' : ℕ => REMFreeEnergy n' rem β) Filter.atTop (𝓝 lim) := by
  refine ⟨0, ?_⟩
  have h : (λ n' : ℕ => REMFreeEnergy n' rem β) = λ _ => (1/β) * Real.log (∑ l : rem.energyLevels, (rem.degeneracy l).toReal * Real.exp (-β * rem.levelSpacing)) := by
    ext n'
    simp [REMFREEEnergy]
  rw [h]
  apply Filter.Tendsto.const_mul
  apply Filter.Tendsto.log
  · refine Filter.Tendsto.const_add ?_ (by exact ?_)
    · apply Filter.Tendsto.sum
      intro l hL
      apply Filter.Tendsto.const_mul (Filter.Tendsto.exp (by
        refine Filter.Tendsto.neg (Filter.Tendsto.const_mul ?_ ?_)
        · apply Filter.Tendsto.id
        · exact hβ))
    · exact trivial
  · exact Real.exp_pos _

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse