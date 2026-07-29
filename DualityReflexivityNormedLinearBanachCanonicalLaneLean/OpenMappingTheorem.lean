import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure OpenMappingPackage where
  operator : Type u → Type v
  surjective : Prop
  openMapping : Prop
  surjectiveClosed : surjective
  openMappingClosed : openMapping

def OpenMappingClosed (O : OpenMappingPackage) : Prop :=
  O.surjective ∧ O.openMapping

theorem open_mapping_closed_from_evidence (O : OpenMappingPackage) :
    OpenMappingClosed O := by
  exact And.intro O.surjectiveClosed O.openMappingClosed

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse