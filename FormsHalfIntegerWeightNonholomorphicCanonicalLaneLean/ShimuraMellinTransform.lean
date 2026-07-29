import canonicalLaneMathlib.AdmissibleClass
import FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean.NonholomorphicPoincareSeries

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure ShimuraMellinTransformPackage {F : HalfIntegerWeightForm} {lambda : ℂ} (P : NonholomorphicPoincareSeriesPackage lambda) where
  dirichletSeries : Type u
  analyticContinuation : Prop
  functionalEquation : Prop
  criticalValues : Prop
  dirichletSeriesDefined : Prop
  analyticContinuationTerm : analyticContinuation
  functionalEquationTerm : functionalEquation
  criticalValuesTerm : criticalValues
  dirichletSeriesDefinedTerm : dirichletSeriesDefined

structure ShimuraMellinTransformEvidence {F : HalfIntegerWeightForm} {lambda : ℂ} {P : NonholomorphicPoincareSeriesPackage lambda} (S : ShimuraMellinTransformPackage P) where
  analyticContinuationClosed : S.analyticContinuation
  functionalEquationClosed : S.functionalEquation
  criticalValuesClosed : S.criticalValues
  dirichletSeriesDefinedClosed : S.dirichletSeriesDefined

def ShimuraMellinTransformClosed {F : HalfIntegerWeightForm} {lambda : ℂ} {P : NonholomorphicPoincareSeriesPackage lambda} (S : ShimuraMellinTransformPackage P) : Prop :=
  S.analyticContinuation ∧ S.functionalEquation ∧ S.criticalValues ∧ S.dirichletSeriesDefined

theorem shimura_mellin_transform_closed_from_evidence {F : HalfIntegerWeightForm} {lambda : ℂ} {P : NonholomorphicPoincareSeriesPackage lambda} (S : ShimuraMellinTransformPackage P) (E : ShimuraMellinTransformEvidence S) : ShimuraMellinTransformClosed S := by
  exact And.intro E.analyticContinuationClosed (And.intro E.functionalEquationClosed (And.intro E.criticalValuesClosed E.dirichletSeriesDefinedClosed))

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse