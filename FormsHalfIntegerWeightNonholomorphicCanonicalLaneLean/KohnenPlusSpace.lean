import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure KohnenPlusSpacePackage where
  level : ℕ
  character : Type u
  plusSpaceCondition : Prop
  shintaniLift : Type v
  nonholomorphicProjection : Prop

structure KohnenPlusSpaceEvidence (K : KohnenPlusSpacePackage) where
  plusSpaceConditionClosed : K.plusSpaceCondition
  shintaniLiftDefined : K.shintaniLift
  nonholomorphicProjectionClosed : K.nonholomorphicProjection

def KohnenPlusSpaceClosed (K : KohnenPlusSpacePackage) : Prop :=
  K.plusSpaceCondition ∧ K.nonholomorphicProjection

theorem kohnen_plus_space_closed_from_evidence (K : KohnenPlusSpacePackage) (E : KohnenPlusSpaceEvidence K) : KohnenPlusSpaceClosed K := by
  exact And.intro E.plusSpaceConditionClosed E.nonholomorphicProjectionClosed

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse