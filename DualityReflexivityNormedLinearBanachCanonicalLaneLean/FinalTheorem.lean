import canonicalLaneMathlib.AdmissibleClass
import DualityReflexivityNormedLinearBanachCanonicalLaneLean.AdmissibleClass
import DualityReflexivityNormedLinearBanachCanonicalLaneLean.BridgeLemmas
import DualityReflexivityNormedLinearBanachCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

def ConstrainedDualityReflexivityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_duality_reflexivity_endgame (A : AdmissibleClass) : ConstrainedDualityReflexivityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse
