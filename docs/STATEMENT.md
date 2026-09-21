# Tate conjecture: named sentence

Copyright (c) 2026 Benjamin Stanley Frohman. Apache-2.0.

## Statement

Let X be smooth projective over F_q. For each i,

    cl : CH^i(X)_{Q_ℓ} → H^{2i}_et(X_bar, Q_ℓ(i))^{Gal}

is surjective.

That equality of spans is the conjecture. Recording it is not a proof.

## What an eigenvalue is

Geometric Frobenius on H^4_et has eigenvalues of complex absolute value q^2
(Weil). After the Tate twist (2), a Gal-fixed class is an eigenvector with
eigenvalue 1 on H^4_et(Q_ℓ(2)), equivalently eigenvalue q^2 before the twist.

That numerical condition does not produce a surface.

## Firewall

- Not Hodge.
- Not Noether–Lefschetz.
- Not Zucker.
- Not a Frohmanian form.
- `fourfoldSurfaces` stays a Prop.
