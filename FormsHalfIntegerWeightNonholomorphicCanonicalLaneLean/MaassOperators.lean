import canonicalLaneMathlib.AdmissibleClass
import FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean.HalfIntegerWeightForms

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure MaassOperatorPackage (F : HalfIntegerWeightForm) where
  weight : ℚ
  slashOperator : Type u
  loweringOperator : Type v
  raisingOperator : Type w
  iterationRules : Prop
  commutationRelations : Prop
  slashOperatorClosed : slashOperator
  loweringOperatorClosed : loweringOperator
  raisingOperatorClosed : raisingOperator
  iterationRulesTerm : iterationRules
  commutationRelationsTerm : commutationRelations

structure MaassOperatorEvidence (F : HalfIntegerWeightForm) (M : MaassOperatorPackage F) where
  slashOperatorDefined : M.slashOperator
  loweringOperatorDefined : M.loweringOperator
  raisingOperatorDefined : M.raisingOperator
  iterationRulesClosed : M.iterationRules
  commutationRelationsClosed : M.commutationRelations

def MaassOperatorClosed (F : HalfIntegerWeightForm) (M : MaassOperatorPackage F) : Prop :=
  M.iterationRules ∧ M.commutationRelations

theorem maass_operator_closed_from_evidence (F : HalfIntegerWeightForm) (M : MaassOperatorPackage F) (E : MaassOperatorEvidence F M) : MaassOperatorClosed F M := by
  exact And.intro E.iterationRulesClosed E.commutationRelationsClosed

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse