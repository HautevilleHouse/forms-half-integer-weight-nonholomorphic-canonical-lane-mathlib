import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure HeckeOperatorActionPackage where
  modularSurface : Type
  fourierExpansionMap : Type
  halfIntegerWeight : ℕ + ℕ → ℚ
  nonholomorphicAction : Prop
  heckeEigenvalue : Prop
  tensorWithModularForms : Prop

structure HeckeOperatorActionEvidence (H : HeckeOperatorActionPackage) where
  nonholomorphicActionClosed : H.nonholomorphicAction
  heckeEigenvalueClosed : H.heckeEigenvalue
  tensorWithModularFormsClosed : H.tensorWithModularForms

def HeckeOperatorActionClosed (H : HeckeOperatorActionPackage) : Prop :=
  H.nonholomorphicAction ∧ H.heckeEigenvalue ∧ H.tensorWithModularForms

theorem hecke_operator_action_closed_from_evidence
    (H : HeckeOperatorActionPackage) (E : HeckeOperatorActionEvidence H) :
    HeckeOperatorActionClosed H := by
  exact And.intro E.nonholomorphicActionClosed
    (And.intro E.heckeEigenvalueClosed E.tensorWithModularFormsClosed)

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse