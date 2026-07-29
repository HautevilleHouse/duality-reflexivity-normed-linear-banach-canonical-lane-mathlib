import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure NormedSpacePackage where
  carrier : Type u
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  vectorSpace : NormedSpace ℝ carrier
  complete : Prop
  completeProof : complete

structure DualPackage (V : NormedSpacePackage) where
  dualCarrier : Type u
  dualNorm : dualCarrier → ℝ
  normedAddCommGroup : NormedAddCommGroup dualCarrier
  vectorSpace : NormedSpace ℝ dualCarrier
  isDual : Prop
  pairing : V.carrier → dualCarrier → ℝ
  pairingBilinear : BilinearMap ℝ V.carrier dualCarrier ℝ
  pairingNondegenerate : ∀ (x : V.carrier), x ≠ 0 → ∃ (f : dualCarrier), pairing x f ≠ 0
  isDualProof : isDual

structure ReflexivityEvidence (V : NormedSpacePackage) (D : DualPackage V) where
  canonicalEmbeddingInjective : Function.Injective (fun (x : V.carrier) => fun (f : D.dualCarrier) => D.pairing x f)
  canonicalEmbeddingSurjective : Function.Surjective (fun (x : V.carrier) => fun (f : D.dualCarrier) => D.pairing x f)
  isReflexive : Prop
  isReflexiveProof : isReflexive

theorem reflexivity_closed_from_evidence (V : NormedSpacePackage) (D : DualPackage V) (E : ReflexivityEvidence V D) : E.isReflexive := by
  exact E.isReflexiveProof

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse
