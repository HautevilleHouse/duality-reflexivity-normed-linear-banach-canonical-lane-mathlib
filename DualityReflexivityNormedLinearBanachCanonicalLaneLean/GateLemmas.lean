import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachCanonicalLaneLean.AdmissibleClass
import DualityReflexivityNormedLinearBanachCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse
