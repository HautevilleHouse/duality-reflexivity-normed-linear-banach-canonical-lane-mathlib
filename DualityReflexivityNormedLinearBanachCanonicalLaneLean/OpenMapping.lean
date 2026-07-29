import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure OpenMappingPackage (A : AdmissibleClass) where
  operator : Type u
  surjective : Prop
  openImage : Prop
  proof : surjective → openImage

def OpenMappingClosed (A : AdmissibleClass) (O : OpenMappingPackage A) : Prop :=
  O.surjective → O.openImage

theorem open_mapping_closed (A : AdmissibleClass) (O : OpenMappingPackage A) : OpenMappingClosed A O := by
  intro h
  exact O.proof h

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse