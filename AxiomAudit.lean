-- Axiom audit: prints the axioms of every theorem/lemma in the project.
-- CI fails unless each depends only on propext, Classical.choice, Quot.sound (or none).
import TateConjecture.Basic

#print axioms TateConjecture.fourfoldSurfaces_iff
#print axioms TateConjecture.statement_iff_surjective
