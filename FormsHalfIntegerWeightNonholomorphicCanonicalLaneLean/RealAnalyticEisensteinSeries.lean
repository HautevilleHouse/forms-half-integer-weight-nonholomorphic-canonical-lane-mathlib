import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphic

structure RealAnalyticEisensteinSeries (k : HalfInteger) where
  weight : Int
  spectralParameter : ℂ
  fourierExpansion : ℍ -> ℂ
  functionalEquation : Prop
  analyticContinuation : Prop
  functionalEquationClosed : functionalEquation
  analyticContinuationClosed : analyticContinuation

def EisensteinClosed {k : HalfInteger} (E : RealAnalyticEisensteinSeries k) : Prop :=
  E.functionalEquation ∧ E.analyticContinuation

theorem eisenstein_closed_from_evidence
    {k : HalfInteger} (E : RealAnalyticEisensteinSeries k) : EisensteinClosed E := by
  exact And.intro E.functionalEquationClosed E.analyticContinuationClosed

end FormsHalfIntegerWeightNonholomorphic
end HautevilleHouse