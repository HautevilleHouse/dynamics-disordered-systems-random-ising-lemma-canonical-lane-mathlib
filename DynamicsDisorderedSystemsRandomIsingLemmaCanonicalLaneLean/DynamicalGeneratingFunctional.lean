import canonicalLaneMathlib.AdmissibleClass
import DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean.SpinGlassHamiltonian

namespace HautevilleHouse
namespace DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean

structure DynamicalGeneratingFunctional {H : SpinGlassHamiltonian} where
  timeEvolution : Type
  responseFunction : Prop
  correlationFunction : Prop
  generatingFunctionalEquation : Prop

structure DynamicalGeneratingFunctionalEvidence {H : SpinGlassHamiltonian}
    (D : DynamicalGeneratingFunctional H) where
  responseFunctionClosed : D.responseFunction
  correlationFunctionClosed : D.correlationFunction
  generatingFunctionalEquationClosed : D.generatingFunctionalEquation

def DynamicalGeneratingFunctionalClosed {H : SpinGlassHamiltonian}
    (D : DynamicalGeneratingFunctional H) : Prop :=
  D.responseFunction ∧ D.correlationFunction ∧ D.generatingFunctionalEquation

theorem dynamical_generating_functional_closed_from_evidence
    {H : SpinGlassHamiltonian} (D : DynamicalGeneratingFunctional H)
    (E : DynamicalGeneratingFunctionalEvidence D) :
    DynamicalGeneratingFunctionalClosed D := by
  exact And.intro E.responseFunctionClosed
    (And.intro E.correlationFunctionClosed
      E.generatingFunctionalEquationClosed)

end DynamicsDisorderedSystemsRandomIsingLemmaCanonicalLaneLean
end HautevilleHouse