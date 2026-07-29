import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormsHalfIntegerWeightNonholomorphic

structure AtkinLehnerPackage (k : HalfInteger) where
  level : ℕ
  oldforms : Prop
  newforms : Prop
  traceOperator : Prop
  oldformsClosed : oldforms
  newformsClosed : newforms
  traceOperatorClosed : traceOperator

def AtkinLehnerClosed {k : HalfInteger} (A : AtkinLehnerPackage k) : Prop :=
  A.oldforms ∧ A.newforms ∧ A.traceOperator

theorem atkin_lehner_closed_from_evidence
    {k : HalfInteger} (A : AtkinLehnerPackage k) : AtkinLehnerClosed k A := by
  exact And.intro A.oldformsClosed (And.intro A.newformsClosed A.traceOperatorClosed)

end FormsHalfIntegerWeightNonholomorphic
end HautevilleHouse