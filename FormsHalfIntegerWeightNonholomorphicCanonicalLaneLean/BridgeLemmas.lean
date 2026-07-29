import FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

def bridgeClosed (A : ModularAdmissibleClass) : Prop :=
  HalfIntegerWitnessClosed A.object

theorem bridge_from_admissible_class (A : ModularAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse