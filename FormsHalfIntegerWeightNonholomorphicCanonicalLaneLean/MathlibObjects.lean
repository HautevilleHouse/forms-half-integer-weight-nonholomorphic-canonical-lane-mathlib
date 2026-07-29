import FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean.AdmissibleClass
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HalfIntegerWeightForm where
  k : HalfInteger  -- weight k ∈ ℚ with denominator 2
  weight : ℚ := k.toFraction  -- actual weight representation
  modularGroupAction : Prop  -- transformation law under SL2(ℤ)
  meromorphicAtCusp : Prop  -- meromorphic behavior at all cusps
  nonholomorphicPart : Prop  -- presence of nonholomorphic terms

default

structure NonholomorphicModularForm where
  form : HalfIntegerWeightForm
  complexConjugateInvariant : Prop
  partialDerivativeExists : Prop
  laplacianEigenvalue : Prop  -- eigenvalue under the hyperbolic Laplacian

default

structure AdmittedObject where
  space : HalfIntegerWeightForm
  modularTransformation : Prop
  nonholomorphicStructure : Prop
  conclusion : modularTransformation ∧ nonholomorphicStructure

default

structure HalfIntegerWeightWitnessClosed (O : AdmittedObject) : Prop := O.conclusion

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse
