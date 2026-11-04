# Verification certificate — TateConjecture v1.1.0

Paper: [The Tate Conjecture as a Parametric Proposition: a Machine-Checked Lean 4 Interface without Axioms](paper/Frohman_Tate_Conjecture_Lean_Interface_2026.pdf)  
Author: Benjamin Stanley Frohman <frohmanbenjamin@gmail.com>

- `lake build`: succeeds (enforced by `.github/workflows/certify.yml` and `lean.yml`).
- `sorry` / `admit`: none (`scripts/check_no_sorry.py`).
- `native_decide`: none.
- User `axiom` declarations: none.
- Axioms used: only Lean's standard `propext`, `Classical.choice`, `Quot.sound` (or none) — output of `#print axioms` over all 2 audited declarations (`AxiomAudit*.lean`) below.

```
'TateConjecture.fourfoldSurfaces_iff' does not depend on any axioms
'TateConjecture.statement_iff_surjective' does not depend on any axioms
```
