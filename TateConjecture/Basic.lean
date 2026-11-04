/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

/-!
# Tate conjecture: named sentence

Not a proof. Not Hodge. Not imported by BenFrohman/HODGE.
A Frobenius eigenvalue q^2 is a numerical condition, not a cycle.

The former axioms (`SmoothProjOverFiniteField`, `CycleClasses`, `GalInvariants`,
`clEtale`) are now fields of the structure `TateSetting`. Every definition and
theorem is parametric in such a setting; nothing about actual varieties is proved.
-/

namespace TateConjecture

/-- Abstract data for the Tate conjecture: placeholder hosts over a finite field,
cycle classes, Galois invariants in étale cohomology `H^{2i}(Q_ℓ(i))`, and a cycle
class map. Not schemes; supplied by the user of the statement. -/
structure TateSetting where
  SmoothProjOverFiniteField : Type
  CycleClasses : SmoothProjOverFiniteField → Nat → Type
  GalInvariants : SmoothProjOverFiniteField → Nat → Type
  clEtale : (X : SmoothProjOverFiniteField) → (i : Nat) → CycleClasses X i → GalInvariants X i

variable (S : TateSetting)

/-- Tate in codimension i: clEtale is surjective. Named, not proved. -/
def Statement (X : S.SmoothProjOverFiniteField) (i : Nat) : Prop :=
  ∀ y : S.GalInvariants X i, ∃ x : S.CycleClasses X i, S.clEtale X i x = y

/-- The open sentence. There is no term of this type in this repository. -/
def openSentence (X : S.SmoothProjOverFiniteField) (i : Nat) : Prop :=
  Statement S X i

/-- Fourfold surfaces: i = 2. Still a Prop. -/
def fourfoldSurfaces (X : S.SmoothProjOverFiniteField) : Prop :=
  Statement S X 2

/-- The statement is exactly surjectivity of the cycle class map. -/
theorem statement_iff_surjective (X : S.SmoothProjOverFiniteField) (i : Nat) :
    Statement S X i ↔ Function.Surjective (S.clEtale X i) := Iff.rfl

/-- The fourfold-surfaces sentence is the codimension-2 statement. -/
theorem fourfoldSurfaces_iff (X : S.SmoothProjOverFiniteField) :
    fourfoldSurfaces S X ↔ Statement S X 2 := Iff.rfl

end TateConjecture
