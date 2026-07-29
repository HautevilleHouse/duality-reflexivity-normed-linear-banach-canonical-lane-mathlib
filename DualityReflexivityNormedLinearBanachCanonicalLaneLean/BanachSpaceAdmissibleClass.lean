import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachCanonicalLaneLean.DualReflexivity
import DualityReflexivityNormedLinearBanachCanonicalLaneLean.HahnBanachBridge

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BanachAdmittedObject where
  space : NormedSpacePackage
  dual : DualPackage space
  reflexivityEvidence : ReflexivityEvidence space dual
  hahnBanachPackage : HahnBanachPackage space

def BanachWitnessClosed (O : BanachAdmittedObject) : Prop :=
  O.reflexivityEvidence.isReflexive

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse
