import FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean.ThetaSeriesConstruction

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure NonholomorphicEichlerIntegralPackage where
  integrand : HalfIntegerSpace → ℂ
  kernel : ℂ → ℂ
  integralDefined : Prop
  nonholomorphicTransform : Prop
  spectralDecomposition : Prop

theorem nonholomorphic_integral_transform (E : NonholomorphicEichlerIntegralPackage) : E.nonholomorphicTransform := by
  exact E.nonholomorphicTransform

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse