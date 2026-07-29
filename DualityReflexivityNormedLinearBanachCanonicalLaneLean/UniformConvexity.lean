import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure UniformConvexityPackage where
  space : Type u
  norm : space → ℝ
  modulus : ℝ → ℝ
  convexityCondition : Prop
  reflexivityImplication : Prop

structure UniformConvexityEvidence (U : UniformConvexityPackage) where
  convexityConditionClosed : U.convexityCondition
  reflexivityImplicationClosed : U.reflexivityImplication

def UniformConvexityClosed (U : UniformConvexityPackage) : Prop :=
  U.convexityCondition ∧ U.reflexivityImplication

theorem uniform_convexity_closed_from_evidence
    (U : UniformConvexityPackage) (E : UniformConvexityEvidence U) :
    UniformConvexityClosed U := by
  exact And.intro E.convexityConditionClosed E.reflexivityImplicationClosed

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse