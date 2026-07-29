import DualityReflexivityNormedLinearBanachCanonicalLaneLean.BanachSpaceHierarchy

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure DualSpace (V : NormedLinearSpace) where
  dual : Type u
  dualNorm : dual → ℝ
  dualNormDefined : Prop

structure ReflexivityData (V : NormedLinearSpace) (D : DualSpace V) where
  canonicalEmbedding : V.V → D.dual
  isIsometric : ∀ x : V.V, |(D.dualNorm (canonicalEmbedding x))| = V.norm x
  surjectivity : Prop

def ReflexivityClosed (V : NormedLinearSpace) (D : DualSpace V) : Prop :=
  D.dualNormDefined

theorem reflexivity_closed_evidence (V : NormedLinearSpace) (D : DualSpace V) (R : ReflexivityData V D) : ReflexivityClosed V D :=
  R.isometric
  
end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse
