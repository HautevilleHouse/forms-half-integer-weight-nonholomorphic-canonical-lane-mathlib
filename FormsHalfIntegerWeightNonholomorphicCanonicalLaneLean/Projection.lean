import FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean.HalfIntegerObjects

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def halfIntegerProjection : Projection HalfIntegerEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem half_integer_projection_idempotent (x : HalfIntegerEndgameState) :
    halfIntegerProjection.toFun (halfIntegerProjection.toFun x) = halfIntegerProjection.toFun x := by
  exact halfIntegerProjection.idempotent x

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse