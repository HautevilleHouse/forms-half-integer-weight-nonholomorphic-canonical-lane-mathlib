import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure FormAdmittedObject where
  form : Type
  weight : ℚ
  nonholomorphic : Prop
  conclusion : nonholomorphic

def FormWitnessClosed (O : FormAdmittedObject) : Prop :=
  O.nonholomorphic

structure AdmissibleClass where
  object : FormAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FormWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse