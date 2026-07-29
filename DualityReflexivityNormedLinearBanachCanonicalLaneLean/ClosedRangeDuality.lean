import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

open BanachReflexivityPackage

structure ClosedRangeDualityPackage where
  spaceType : Type
  norm : spaceType → ℝ
  completeness : Prop
  dualSpaceType : Type
  dualNorm : dualSpaceType → ℝ
  closedRangeCondition : Prop
  dualityMappingClosed : Prop

theorem closed_range_duality (C : ClosedRangeDualityPackage) : C.dualityMappingClosed :=
  Sorry

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse