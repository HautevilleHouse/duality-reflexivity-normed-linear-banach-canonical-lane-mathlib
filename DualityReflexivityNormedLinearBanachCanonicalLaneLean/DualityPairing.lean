import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure DualityPairingPackage where
  spaceX : Type u
  spaceX_star : Type u
  normX : spaceX → ℝ
  normX_star : spaceX_star → ℝ
  pairing : spaceX_star → spaceX → ℝ
  bilinear : Prop
  nondegenerate : Prop
  compatibility : Prop

structure DualityPairingEvidence (D : DualityPairingPackage) where
  bilinearClosed : D.bilinear
  nondegenerateClosed : D.nondegenerate
  compatibilityClosed : D.compatibility

def DualityPairingClosed (D : DualityPairingPackage) : Prop :=
  D.bilinear ∧ D.nondegenerate ∧ D.compatibility

theorem duality_pairing_closed_from_evidence
    (D : DualityPairingPackage) (E : DualityPairingEvidence D) :
    DualityPairingClosed D := by
  exact And.intro E.bilinearClosed (And.intro E.nondegenerateClosed E.compatibilityClosed)

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse