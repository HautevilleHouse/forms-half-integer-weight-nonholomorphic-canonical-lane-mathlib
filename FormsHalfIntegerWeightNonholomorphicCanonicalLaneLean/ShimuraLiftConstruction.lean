import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure ShimuraLiftPackage where
  liftingMap : Type
  halfIntegerForm : Type
  integerWeightForm : Type
  liftClosed : Prop
  imageDescription : Prop
  compatibilityWithHecke : Prop

structure ShimuraLiftEvidence (S : ShimuraLiftPackage) where
  liftClosedClosed : S.liftClosed
  imageDescriptionClosed : S.imageDescription
  compatibilityWithHeckeClosed : S.compatibilityWithHecke

def ShimuraLiftClosed (S : ShimuraLiftPackage) : Prop :=
  S.liftClosed ∧ S.imageDescription ∧ S.compatibilityWithHecke

theorem shimura_lift_closed_from_evidence
    (S : ShimuraLiftPackage) (E : ShimuraLiftEvidence S) :
    ShimuraLiftClosed S := by
  exact And.intro E.liftClosedClosed
    (And.intro E.imageDescriptionClosed E.compatibilityWithHeckeClosed)

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse