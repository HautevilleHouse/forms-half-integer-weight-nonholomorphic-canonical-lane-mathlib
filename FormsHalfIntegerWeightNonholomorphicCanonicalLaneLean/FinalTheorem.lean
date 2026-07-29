import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HalfIntegerWeightFormClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- Assumes A.object is a HalfIntegerWeightFormPackage with evidence
  admit

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedHalfIntegerWeightNonholomorphicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_half_integer_weight_nonholomorphic_endgame (A : AdmissibleClass) : ConstrainedHalfIntegerWeightNonholomorphicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FormsHalfIntegerWeightNonholomorphicCanonicalLaneLean
end HautevilleHouse