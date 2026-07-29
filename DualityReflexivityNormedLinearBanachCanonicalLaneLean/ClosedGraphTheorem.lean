import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure ClosedGraphPackage where
  T : Type u → Type v
  graphClosed : Prop
  boundedness : Prop
  graphClosedClosed : graphClosed
  boundednessClosed : boundedness

def ClosedGraphClosed (C : ClosedGraphPackage) : Prop :=
  C.graphClosed ∧ C.boundedness

theorem closed_graph_closed_from_evidence (C : ClosedGraphPackage) :
    ClosedGraphClosed C := by
  exact And.intro C.graphClosedClosed C.boundednessClosed

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse