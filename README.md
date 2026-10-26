# TateConjecture

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.23652980.svg)](https://doi.org/10.5281/zenodo.23652980) [![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

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

---
## Archival DOI & Cryptographic Provenance

- **Dedicated 1-to-1 Zenodo DOI:** [10.5281/zenodo.23652980](https://doi.org/10.5281/zenodo.23652980)
- **Author:** Benjamin Stanley Frohman (ORCID: [0009-0006-7068-3718](https://orcid.org/0009-0006-7068-3718))
- **License:** Apache License, Version 2.0 (`Copyright (c) 2026 Benjamin Stanley Frohman`)
- **Earliest Commit Provenance:** `9001be1c3db560c2820f1835cdbd81396f618474` (2026-09-21 03:26:04 PM CDT (UTC-5))
- **SealGuard SHA-256 Merkle Root:** `90dd309e7e8d518f7ec3a1852481cc6f6e934e72ea5a54fd219e69afa8f46a10` (`PROVENANCE_MERKLE_ROOT.json`)
- **Titan Audit Certificate:** `audit/TITAN_AUDIT_CERTIFICATE.json` (Ed25519 key `b428fb72676f1c52`)
- **Scope & Scientific Boundary:** Formalizes the type-theoretic statement skeleton of the Tate Conjecture in Lean 4. Explicitly states that neither the Tate Conjecture nor the Hodge Conjecture is proved here.
