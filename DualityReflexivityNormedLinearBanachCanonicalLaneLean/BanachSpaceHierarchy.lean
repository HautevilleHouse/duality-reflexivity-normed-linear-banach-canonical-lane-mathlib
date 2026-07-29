import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure NormedLinearSpace where
  V : Type u
  norm : V → ℝ
  norm_pos : ∀ x : V, norm x ≥ 0
  norm_eq_zero_iff : ∀ x : V, norm x = 0 ↔ x = 0
  norm_smul : ∀ (a : ℝ) (x : V), norm (a • x) = |a| * norm x
  norm_triangle : ∀ x y : V, norm (x + y) ≤ norm x + norm y

def NormedLinearSpaceClosed (V : NormedLinearSpace) : Prop := True

structure DualityPair (V : Type u) (W : Type v) where
  pair : V × W → ℝ
  bilinear : Prop
  nondegenerate : Prop

dualityPairNondegenerate (V : NormedLinearSpace) (W : Type v) (d : DualityPair V.V W) : Prop :=
  d.nondegenerate

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse
