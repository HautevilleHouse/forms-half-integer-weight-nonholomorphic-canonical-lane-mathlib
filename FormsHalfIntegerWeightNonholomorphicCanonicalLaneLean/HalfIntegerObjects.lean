import FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HalfIntegerSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HalfIntegerAdmittedObject where
  space : HalfIntegerSpace
  halfIntegerWeightForm : Prop
  nonholomorphicStructure : Prop
  mockThetaModel : Type
  mockThetaTopology : TopologicalSpace mockThetaModel
  modularSymmetry : Prop
  conclusion : modularSymmetry

structure HalfIntegerEndgameState where
  object : HalfIntegerAdmittedObject

def HalfIntegerWitnessClosed (O : HalfIntegerAdmittedObject) : Prop :=
  O.modularSymmetry

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse