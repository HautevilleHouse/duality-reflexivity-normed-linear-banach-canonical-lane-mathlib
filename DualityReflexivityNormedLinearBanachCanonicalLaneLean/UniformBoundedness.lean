import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure UniformBoundednessPackage (A : AdmissibleClass) where
  family : Type u
  pointwiseBounded : Prop
  uniformBounded : Prop
  proof : pointwiseBounded → uniformBounded

def UniformBoundednessClosed (A : AdmissibleClass) (U : UniformBoundednessPackage A) : Prop :=
  U.pointwiseBounded → U.uniformBounded

theorem uniform_boundedness_closed (A : AdmissibleClass) (U : UniformBoundednessPackage A) : UniformBoundednessClosed A U := by
  intro h
  exact U.proof h

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse