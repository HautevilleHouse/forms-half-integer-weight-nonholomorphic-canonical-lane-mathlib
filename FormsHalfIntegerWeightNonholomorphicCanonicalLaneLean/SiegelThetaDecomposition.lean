import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure SiegelThetaDecompositionPackage where
  siegelModularForm : Type
  thetaBlock : Type
  decompositionFormula : Prop
  relationToNonholomorphic : Prop
  transformationInvariant : Prop

structure SiegelThetaDecompositionEvidence (S : SiegelThetaDecompositionPackage) where
  decompositionFormulaClosed : S.decompositionFormula
  relationToNonholomorphicClosed : S.relationToNonholomorphic
  transformationInvariantClosed : S.transformationInvariant

def SiegelThetaDecompositionClosed (S : SiegelThetaDecompositionPackage) : Prop :=
  S.decompositionFormula ∧ S.relationToNonholomorphic ∧ S.transformationInvariant

theorem siegel_theta_decomposition_closed_from_evidence
    (S : SiegelThetaDecompositionPackage) (E : SiegelThetaDecompositionEvidence S) :
    SiegelThetaDecompositionClosed S := by
  exact And.intro E.decompositionFormulaClosed
    (And.intro E.relationToNonholomorphicClosed E.transformationInvariantClosed)

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse