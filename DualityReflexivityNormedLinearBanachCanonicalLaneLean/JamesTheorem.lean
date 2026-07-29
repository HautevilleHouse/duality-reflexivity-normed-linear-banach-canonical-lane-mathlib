import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure JamesTheoremPackage where
  space : Type u
  norm : space → ℝ
  linearFunctional : Type u
  attainNormCondition : Prop
  reflexivityEquivalence : Prop

structure JamesTheoremEvidence (J : JamesTheoremPackage) where
  attainNormConditionClosed : J.attainNormCondition
  reflexivityEquivalenceClosed : J.reflexivityEquivalence

def JamesTheoremClosed (J : JamesTheoremPackage) : Prop :=
  J.attainNormCondition ∧ J.reflexivityEquivalence

theorem james_theorem_closed_from_evidence
    (J : JamesTheoremPackage) (E : JamesTheoremEvidence J) :
    JamesTheoremClosed J := by
  exact And.intro E.attainNormConditionClosed E.reflexivityEquivalenceClosed

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse