import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure DualSpacePackage (V : BanachAdmittedObject) where
  dualNorm : Type u
  dualSpaceComplete : Prop
  hahnBanachExtension : Prop

def DualSpaceClosed {V : BanachAdmittedObject} (P : DualSpacePackage V) : Prop :=
  P.dualSpaceComplete ∧ P.hahnBanachExtension

theorem dual_space_closed (V : BanachAdmittedObject) : DualSpaceClosed (DualSpacePackage.mk (dualNorm := V.dual) (dualSpaceComplete := V.dualComplete) (hahnBanachExtension := V.hahnBanachProp)) := by
  exact And.intro V.dualComplete V.hahnBanachProp

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse