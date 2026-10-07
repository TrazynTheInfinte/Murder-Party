# Meeting Call attribution uses the same nearest-entity heuristic as a Strike

The Meeting Horn carried its own one-per-Participant limit for free, since each Participant held their own copy. A single shared Panic Button has no such built-in attribution — vanilla exposes no "which player flipped this lever" event. Rather than drop the per-player limit for a shared pool, the Panic Button's press is attributed to whichever living Participant is nearest to it at the moment it flips on, the same heuristic ADR 0005 uses to identify a Strike's victim. If that Participant has already spent their Meeting Call this Round, the button is immediately reset and no Meeting starts.

This is reliable here for the same reason it's reliable for a Strike: only one person can physically occupy the spot needed to act (standing in melee range of a target; standing at a lever to press it), so there's no realistic case where the heuristic picks the wrong Participant.
