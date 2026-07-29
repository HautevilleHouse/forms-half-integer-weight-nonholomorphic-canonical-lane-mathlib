import canonicalLaneMathlib.AdmissibleClass
import FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean.MaassOperators

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure ThetaFunctionPackage (F : HalfIntegerWeightForm) (M : MaassOperatorPackage F) where
  characteristic : Type u
  thetaSeries : Type v
  modTransformation : Prop
  growthEstimate : Prop
  halfIntegerWeightBehavior : Prop
  modTransformationTerm : modTransformation
  growthEstimateTerm : growthEstimate
  halfIntegerWeightBehaviorTerm : halfIntegerWeightBehavior

structure ThetaFunctionEvidence (F : HalfIntegerWeightForm) (M : MaassOperatorPackage F) (T : ThetaFunctionPackage F M) where
  modTransformationClosed : T.modTransformation
  growthEstimateClosed : T.growthEstimate
  halfIntegerWeightBehaviorClosed : T.halfIntegerWeightBehavior

def ThetaFunctionClosed (F : HalfIntegerWeightForm) (M : MaassOperatorPackage F) (T : ThetaFunctionPackage F M) : Prop :=
  T.modTransformation ∧ T.growthEstimate ∧ T.halfIntegerWeightBehavior

theorem theta_function_closed_from_evidence (F : HalfIntegerWeightForm) (M : MaassOperatorPackage F) (T : ThetaFunctionPackage F M) (E : ThetaFunctionEvidence F M T) : ThetaFunctionClosed F M T := by
  exact And.intro E.modTransformationClosed (And.intro E.growthEstimateClosed E.halfIntegerWeightBehaviorClosed)

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse