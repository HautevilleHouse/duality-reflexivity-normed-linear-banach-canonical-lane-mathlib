import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure BanachAlaogluPackage where
  space : Type u
  norm : space → ℝ
  dualSpace : Type u
  weakStarTopology : TopologicalSpace dualSpace
  unitBallCompact : Prop
  compactnessCriteria : Prop

structure BanachAlaogluEvidence (B : BanachAlaogluPackage) where
  unitBallCompactClosed : B.unitBallCompact
  compactnessCriteriaClosed : B.compactnessCriteria

def BanachAlaogluClosed (B : BanachAlaogluPackage) : Prop :=
  B.unitBallCompact ∧ B.compactnessCriteria

theorem banach_alaoglu_closed_from_evidence
    (B : BanachAlaogluPackage) (E : BanachAlaogluEvidence B) :
    BanachAlaogluClosed B := by
  exact And.intro E.unitBallCompactClosed E.compactnessCriteriaClosed

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse