import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure ModularAdmissibleClass where
  object : HalfIntegerAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ModularAdmissibleClass) : Prop :=
  HalfIntegerWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse