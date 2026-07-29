import DualityReflexivityNormedLinearBanachCanonicalLaneLean.DualSpaceReflexivity

namespace HautevilleHouse
namespace DualityReflexivityNormedLinearBanachCanonicalLaneLean

structure BanachSpace (V : NormedLinearSpace) where
  complete : ∀ (f : ℕ → V.V) (h : CauchySequence f), ∃ x : V.V, Tendsto f atTop (𝓝 x)

cauchySequence {V : Type u} [MetricSpace V] (f : ℕ → V) : Prop :=
  ∀ ε > 0, ∃ N : ℕ, ∀ m n : ℕ, m ≥ N → n ≥ N → dist (f m) (f n) < ε

structure UniformConvexity (V : NormedLinearSpace) where
  modulus : ℝ → ℝ
  modulusPos : ∀ ε > 0, modulus ε > 0
  condition : ∀ x y : V.V, V.norm x ≤ 1 → V.norm y ≤ 1 → V.norm (x + y) > 2 - modulus ε → V.norm (x - y) < ε

dualOfReflexive (V : NormedLinearSpace) (B : BanachSpace V) : DualSpace V :=
  { dual := V.V → ℝ,
    dualNorm := λ f => sup { |f x| | x : V.V, V.norm x ≤ 1 },
    dualNormDefined := by
      -- Proof omitted
      sorry
  }

end DualityReflexivityNormedLinearBanachCanonicalLaneLean
end HautevilleHouse
