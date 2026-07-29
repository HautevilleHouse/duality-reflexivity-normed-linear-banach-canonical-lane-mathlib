import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BanachWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.reflexivityEvidence.isReflexiveProof

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse
