import canonicalLaneMathlib.AdmissibleClass
import FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean.HalfIntegerWeightForms

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure NonholomorphicPoincareSeriesPackage {F : HalfIntegerWeightForm} (lambda : ℂ) where
  groupAction : Type u
  seriesDefined : Prop
  convergenceCondition : Prop
  automorphyUnderGroup : Prop
  growthControlled : Prop
  seriesDefinedTerm : seriesDefined
  convergenceConditionTerm : convergenceCondition
  automorphyUnderGroupTerm : automorphyUnderGroup
  growthControlledTerm : growthControlled

structure NonholomorphicPoincareSeriesEvidence {F : HalfIntegerWeightForm} {lambda : ℂ} (P : NonholomorphicPoincareSeriesPackage lambda) where
  seriesDefinedClosed : P.seriesDefined
  convergenceConditionClosed : P.convergenceCondition
  automorphyUnderGroupClosed : P.automorphyUnderGroup
  growthControlledClosed : P.growthControlled

def NonholomorphicPoincareSeriesClosed {F : HalfIntegerWeightForm} {lambda : ℂ} (P : NonholomorphicPoincareSeriesPackage lambda) : Prop :=
  P.seriesDefined ∧ P.convergenceCondition ∧ P.automorphyUnderGroup ∧ P.growthControlled

theorem nonholomorphic_poincare_series_closed_from_evidence {F : HalfIntegerWeightForm} {lambda : ℂ} (P : NonholomorphicPoincareSeriesPackage lambda) (E : NonholomorphicPoincareSeriesEvidence P) : NonholomorphicPoincareSeriesClosed P := by
  exact And.intro E.seriesDefinedClosed (And.intro E.convergenceConditionClosed (And.intro E.automorphyUnderGroupClosed E.growthControlledClosed))

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse