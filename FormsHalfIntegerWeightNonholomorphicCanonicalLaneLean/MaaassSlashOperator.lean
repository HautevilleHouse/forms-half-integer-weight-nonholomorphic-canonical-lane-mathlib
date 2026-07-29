import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphic

structure MaaassSlashSpace (k : HalfInteger) where
  weight : Int
  multiplierSystem : Type u
  slashAction : multiplierSystem -> ℍ -> ℂ -> ℂ
  holomorphicFactor : ℂ
  nonholomorphicFactor : ℂ
  weightCondition : Prop
  actionCompatibility : Prop

structure MaaassSlashEvidence {k : HalfInteger} (M : MaaassSlashSpace k) where
  weightConditionClosed : M.weightCondition
  actionCompatibilityClosed : M.actionCompatibility

def MaaassSlashClosed {k : HalfInteger} (M : MaaassSlashSpace k) : Prop :=
  M.weightCondition ∧ M.actionCompatibility

theorem maaass_slash_closed_from_evidence
    {k : HalfInteger} (M : MaaassSlashSpace k) (E : MaaassSlashEvidence M) :
    MaaassSlashClosed M := by
  exact And.intro E.weightConditionClosed E.actionCompatibilityClosed

end FormsHalfIntegerWeightNonholomorphic
end HautevilleHouse