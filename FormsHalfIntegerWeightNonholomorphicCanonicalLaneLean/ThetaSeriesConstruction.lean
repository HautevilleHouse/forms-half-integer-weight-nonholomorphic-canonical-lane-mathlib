import FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean.HalfIntegerObjects

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure ThetaSeriesPackage where
  lattice : Type u
  quadraticForm : lattice → ℤ
  thetaSeries : HalfIntegerSpace → ℂ
  modularTransformation : Prop
  weightHalfInteger : ∀ z : HalfIntegerSpace, thetaSeries (z) = thetaSeries ((-1)/(z))

theorem theta_series_modular_transformation (T : ThetaSeriesPackage) : T.weightHalfInteger := by
  exact T.modularTransformation

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse