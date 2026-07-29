import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphic

structure FormsHalfIntegerWeightSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FormsHalfIntegerWeightAdmittedObject where
  space : FormsHalfIntegerWeightSpace
  halfIntegerWeightForm : Prop
  nonholomorphicCondition : Prop
  modularTransformationProperty : Prop
  conclusion : halfIntegerWeightForm ∧ nonholomorphicCondition ∧ modularTransformationProperty

def FormsHalfIntegerWeightWitnessClosed (O : FormsHalfIntegerWeightAdmittedObject) : Prop :=
  O.halfIntegerWeightForm ∧ O.nonholomorphicCondition ∧ O.modularTransformationProperty

end FormsHalfIntegerWeightNonholomorphic
end HautevilleHouse
