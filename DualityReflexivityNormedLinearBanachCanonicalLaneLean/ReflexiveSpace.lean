import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure ReflexiveSpacePackage where
  space : Type u
  norm : space → ℝ
  bidualEmbedding : space → (space → ℝ) → ℝ
  isometric : Prop
  surjective : Prop
  normPreserving : Prop

structure ReflexiveSpaceEvidence (R : ReflexiveSpacePackage) where
  isometricClosed : R.isometric
  surjectiveClosed : R.surjective
  normPreservingClosed : R.normPreserving

def ReflexiveSpaceClosed (R : ReflexiveSpacePackage) : Prop :=
  R.isometric ∧ R.surjective ∧ R.normPreserving

theorem reflexive_space_closed_from_evidence
    (R : ReflexiveSpacePackage) (E : ReflexiveSpaceEvidence R) :
    ReflexiveSpaceClosed R := by
  exact And.intro E.isometricClosed (And.intro E.surjectiveClosed E.normPreservingClosed)

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse