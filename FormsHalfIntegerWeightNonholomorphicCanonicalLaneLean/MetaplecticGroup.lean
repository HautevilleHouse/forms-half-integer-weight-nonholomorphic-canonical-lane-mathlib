import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure MetaplecticGroupPackage where
  group : Type u
  representation : Type v
  cocycleCondition : Prop
  projectiveRepresentation : Prop
  shimuraCocycle : Prop

structure MetaplecticGroupEvidence (M : MetaplecticGroupPackage) where
  cocycleConditionClosed : M.cocycleCondition
  projectiveRepresentationClosed : M.projectiveRepresentation
  shimuraCocycleClosed : M.shimuraCocycle

def MetaplecticGroupClosed (M : MetaplecticGroupPackage) : Prop :=
  M.cocycleCondition ∧ M.projectiveRepresentation ∧ M.shimuraCocycle

theorem metaplectic_group_closed_from_evidence (M : MetaplecticGroupPackage) (E : MetaplecticGroupEvidence M) : MetaplecticGroupClosed M := by
  exact And.intro E.cocycleConditionClosed (And.intro E.projectiveRepresentationClosed E.shimuraCocycleClosed)

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse