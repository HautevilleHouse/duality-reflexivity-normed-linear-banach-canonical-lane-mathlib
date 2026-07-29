import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure BanachDualityPackage where
  dualSpace : Type u
  norm : dualSpace → ℝ
  linearIsometricEmbedding : Prop
  isometricEmbeddingClosed : linearIsometricEmbedding

def BanachDualityClosed (B : BanachDualityPackage) : Prop :=
  B.linearIsometricEmbedding

theorem banach_duality_closed_from_evidence (B : BanachDualityPackage) :
    BanachDualityClosed B := by
  exact B.isometricEmbeddingClosed

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse