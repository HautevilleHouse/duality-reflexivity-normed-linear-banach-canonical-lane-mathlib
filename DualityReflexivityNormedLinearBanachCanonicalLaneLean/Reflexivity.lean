import canonicalLaneMathlib.DualSpace

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure ReflexivityPackage {V : BanachAdmittedObject} (D : DualSpacePackage V) where
  canonicalEmbeddingInjective : Prop
  surjectivityCondition : Prop

def ReflexivityClosed {V : BanachAdmittedObject} {D : DualSpacePackage V} (R : ReflexivityPackage D) : Prop :=
  R.canonicalEmbeddingInjective ∧ R.surjectivityCondition

theorem reflexivity_closed (V : BanachAdmittedObject) : ReflexivityClosed (ReflexivityPackage.mk (canonicalEmbeddingInjective := V.reflexiveInjective) (surjectivityCondition := V.reflexiveSurjective)) := by
  exact And.intro V.reflexiveInjective V.reflexiveSurjective

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse