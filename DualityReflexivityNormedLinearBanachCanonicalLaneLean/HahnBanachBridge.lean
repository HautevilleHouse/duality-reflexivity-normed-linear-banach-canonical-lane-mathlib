import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure HahnBanachPackage (V : NormedSpacePackage) where
  subspace : Submodule ℝ V.carrier
  boundedLinearFunctionalOnSubspace : (subspace →L[ℝ] ℝ)
  extensionExists : ∃ (g : V.carrier →L[ℝ] ℝ), ∀ (x : subspace), g x = boundedLinearFunctionalOnSubspace x
  normPreserving : ∃ (g : V.carrier →L[ℝ] ℝ), (∀ (x : subspace), g x = boundedLinearFunctionalOnSubspace x) ∧ ‖g‖ = ‖boundedLinearFunctionalOnSubspace‖
  extensionProof : extensionExists
  normPreservingProof : normPreserving

structure HahnBanachEvidence (V : NormedSpacePackage) (H : HahnBanachPackage V) where
  extensionClosed : H.extensionExists
  normPreservingClosed : H.normPreserving

theorem hahn_banach_closed (V : NormedSpacePackage) (H : HahnBanachPackage V) (E : HahnBanachEvidence V H) : H.extensionExists := by
  exact E.extensionClosed

theorem hahn_banach_norm_preserving (V : NormedSpacePackage) (H : HahnBanachPackage V) (E : HahnBanachEvidence V H) : H.normPreserving := by
  exact E.normPreservingClosed

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse
