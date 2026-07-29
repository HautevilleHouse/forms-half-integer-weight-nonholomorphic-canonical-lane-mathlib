import FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

def gateClosed (A : ModularAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ModularAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse