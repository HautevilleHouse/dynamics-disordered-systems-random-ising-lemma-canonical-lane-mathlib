import DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean.RandomIsingSpinSystem

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure SherringtonKirkpatrickModel (n : ℕ) where
  system : RandomIsingSpinSystem n
  coupling : Type u
  mean : coupling → ℝ
  variance : coupling → ℝ
  gaussianCondition : Prop
  p_params : ℕ

def SKHamiltonian (n : ℕ) (sk : SherringtonKirkpatrickModel n) : (sk.system.spins → ℝ) := λ s => sk.mean 0 * (sk.system.sigma s).1 + sk.variance 0 * (sk.system.sigma s).2

theorem sk_Hamiltonian_bounded (n : ℕ) (sk : SherringtonKirkpatrickModel n) : ∃ M : ℝ, ∀ s : sk.system.spins, |SKHamiltonian n sk s| ≤ M := by
  have hspin : Fintype.card (sk.system.spins) > 0 := by
    exact Fintype.card_pos_iff.mpr ⟨by
      have : Nonempty sk.system.spins := by
        exact sk.system.spins_nonempty
      exact this⟩
  have hfinite : Fintype (sk.system.spins) := by
    infer_instance
  let vals : Finset ℝ := Finset.image (fun (s : sk.system.spins) => |SKHamiltonian n sk s|) Finset.univ
  have hvals_nonempty : vals.Nonempty := by
    refine Finset.one_nonempty_image.mp ?_
    exact Finset.univ_nonempty
  let M := vals.max' hvals_nonempty
  refine ⟨M, λ s => ?_⟩
  have h : |SKHamiltonian n sk s| ∈ vals := by
    apply Finset.mem_image.mpr
    refine ⟨s, Finset.mem_univ _, rfl⟩
  exact Finset.le_max' vals _ h

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse