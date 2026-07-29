import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure MaassFormsThetaLiftPackage where
  maassForm : Type
  thetaSeries : Type
  integralKernel : Prop
  liftDefined : Prop
  automorphyPreserved : Prop

structure MaassFormsThetaLiftEvidence (M : MaassFormsThetaLiftPackage) where
  integralKernelClosed : M.integralKernel
  liftDefinedClosed : M.liftDefined
  automorphyPreservedClosed : M.automorphyPreserved

def MaassFormsThetaLiftClosed (M : MaassFormsThetaLiftPackage) : Prop :=
  M.integralKernel ∧ M.liftDefined ∧ M.automorphyPreserved

theorem maass_forms_theta_lift_closed_from_evidence
    (M : MaassFormsThetaLiftPackage) (E : MaassFormsThetaLiftEvidence M) :
    MaassFormsThetaLiftClosed M := by
  exact And.intro E.integralKernelClosed
    (And.intro E.liftDefinedClosed E.automorphyPreservedClosed)

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse