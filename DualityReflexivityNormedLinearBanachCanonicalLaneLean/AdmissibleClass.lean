import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachCanonicalLaneLean.BanachSpaceAdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmissibleClass where
  object : BanachAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BanachWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse
