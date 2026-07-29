import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphic

structure ShimuraDerivativePackage (k : HalfInteger) where
  maassSlash : MaaassSlashSpace k
  raisingOperator : Prop
  loweringOperator : Prop
  raisingLoweringCommutation : Prop
  raisingClosed : raisingOperator
  loweringClosed : loweringOperator
  commutationClosed : raisingLoweringCommutation

def ShimuraDerivativeClosed (k : HalfInteger) (S : ShimuraDerivativePackage k) : Prop :=
  S.raisingOperator ∧ S.loweringOperator ∧ S.raisingLoweringCommutation

theorem shimura_derivative_closed_from_evidence
    (k : HalfInteger) (S : ShimuraDerivativePackage k) :
    ShimuraDerivativeClosed k S := by
  exact And.intro S.raisingClosed (And.intro S.loweringClosed S.commutationClosed)

end FormsHalfIntegerWeightNonholomorphic
end HautevilleHouse