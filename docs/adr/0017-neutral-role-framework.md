# Neutrals are a third Role, required-but-low-priority for the Killer, with non-terminal Personal Wins

Jester, Arsonist, and Hitman are a third Role (Neutral), not a Civilian Role layer on Innocent. Three decisions define how they fit into the existing Killer/Innocent structure:

1. **The Killer still has to eliminate every Neutral to win**, exactly like every Innocent — a Neutral surviving blocks the Killer's Win Condition, even though chasing one down is a lower practical priority than the Innocents.
2. **A Neutral's Personal Win does not end the Round**, except the Arsonist's, which structurally can't be satisfied without the Round already having nobody else left. A Jester getting Ejected, or a Hitman killing their target, is recorded as a win for that player but the Killer-vs-Innocents conflict keeps playing out afterward.
3. **Neutrals are gated by player count**: never at 3 (admin-only override for testing), a 50/50 chance of exactly one at 4-5, and guaranteed exactly one at 6+.

All three were explicit, deliberate calls, not the obvious default. (1) means the Killer's Win Condition text changes from "every Innocent" to "every Innocent and every Neutral," which a future reader could easily miss if they assumed Neutrals sit outside the Killer's win check entirely, the way they sit outside the Innocents' one. (2) is surprising because every other Win Condition in the game ends the Round immediately — Neutrals are the only case where a win doesn't stop play. (3) is an arbitrary-looking tuning number that would otherwise look like a bug (rounds of the same size producing or not producing a Neutral).
