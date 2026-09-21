# TateConjecture

Author: Benjamin Stanley Frohman ([@BenFrohman](https://github.com/BenFrohman)).
Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.

This repository is **not** a proof of the Tate conjecture.
It is **not** a proof of the Hodge conjecture.
It names the sentence. It does not discharge it.

## Sentence

Let `X` be a smooth projective variety over a finite field `F_q`.
Tate (in codimension `i`) asks that algebraic cycle classes over `Q_ℓ`
span the Galois invariants in étale cohomology:

    CH^i(X)_{Q_ℓ}  →  H^{2i}_et(X_bar, Q_ℓ(i))^{Gal}

is surjective.

For a fourfold and `i = 2`, that is surfaces spanning the Gal-fixed
part of `H^4_et(Q_ℓ(2))`.

An eigenvalue `q^2` of geometric Frobenius on `H^4_et` is the numerical
condition for a Tate class of weight 4, twist 2. It is not a surface.

## What this file does not do

- Does not construct a Galois-fixed class from a complex `(2,2)`-form.
- Does not set the sentence equal to `True`.
- Does not import into [HODGE](https://github.com/BenFrohman/HODGE).
- Does not use a “Frohmanian curve” as a cycle.

Lean: `TateConjecture/Basic.lean` records the sentence as an axiom.
There is no theorem that proves the axiom. There is no `sorry`.

Tate stays open. Hodge stays open.
