/-
Copyright (c) 2026 Benjamin Stanley Frohman. Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-!
# Tate conjecture: named sentence

Not a proof. Not Hodge. Not imported by BenFrohman/HODGE.
A Frobenius eigenvalue q^2 is a numerical condition, not a cycle.
-/

namespace TateConjecture

/-- Placeholder host over a finite field. Not a scheme. -/
axiom SmoothProjOverFiniteField : Type

/-- Cycle classes of codimension i. Placeholder. -/
axiom CycleClasses (X : SmoothProjOverFiniteField) (i : Nat) : Type

/-- Galois invariants in étale cohomology H^{2i}(Q_ℓ(i)). Placeholder. -/
axiom GalInvariants (X : SmoothProjOverFiniteField) (i : Nat) : Type

/-- The cycle class map in étale cohomology. Placeholder. -/
axiom clEtale (X : SmoothProjOverFiniteField) (i : Nat) :
    CycleClasses X i → GalInvariants X i

/-- Tate in codimension i: clEtale is surjective. Named, not proved. -/
def Statement (X : SmoothProjOverFiniteField) (i : Nat) : Prop :=
  ∀ y : GalInvariants X i, ∃ x : CycleClasses X i, clEtale X i x = y

/-- The open sentence. There is no term of this type in this repository. -/
def openSentence (X : SmoothProjOverFiniteField) (i : Nat) : Prop :=
  Statement X i

/-- Fourfold surfaces: i = 2. Still a Prop. -/
def fourfoldSurfaces (X : SmoothProjOverFiniteField) : Prop :=
  Statement X 2

end TateConjecture
