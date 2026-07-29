import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

structure HalfIntegerWeightFormPackage where
  weight : ℚ  -- weight k/2 with k odd
  multiplierSystem : Type u
  fourierExpansion : ℍ → ℂ  -- nonholomorphic, includes Maass-type terms
  automorphyFactor : Type v
  modularTransformationLaw : Prop
  nonholomorphicTerm : Prop  -- presence of nonholomorphic part

structure HalfIntegerWeightFormEvidence (P : HalfIntegerWeightFormPackage) where
  multiplierSystemDefined : P.multiplierSystem
  automorphyFactorDefined : P.automorphyFactor
  modularTransformationLawClosed : P.modularTransformationLaw
  nonholomorphicTermClosed : P.nonholomorphicTerm

def HalfIntegerWeightFormClosed (P : HalfIntegerWeightFormPackage) : Prop :=
  P.modularTransformationLaw ∧ P.nonholomorphicTerm

theorem half_integer_weight_form_closed_from_evidence (P : HalfIntegerWeightFormPackage) (E : HalfIntegerWeightFormEvidence P) : HalfIntegerWeightFormClosed P := by
  exact And.intro E.modularTransformationLawClosed E.nonholomorphicTermClosed

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse