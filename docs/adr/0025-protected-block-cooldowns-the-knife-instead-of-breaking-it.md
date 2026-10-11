# A Protected block puts the Vigilante's/Hitman's knife on cooldown instead of breaking it

Normally, any failed hit with the Vigilante's or Hitman's single-use knife breaks it for nothing. When the hit fails specifically because the target was Protected, the knife survives instead and goes on a 1-minute cooldown (the whole item unusable until it ends), rather than breaking.

A wrong-target miss still breaks the knife as before - only the Protected case gets this exception. We chose this over just letting the knife break like any other miss because a correct guess (the real Killer, or the Hitman's actual target) that happens to be Protected would otherwise feel identical to a bad guess: total item loss either way, with no way to tell "that was close" from "that was wrong." A cooldown preserves the signal that the guess was right and lets them try again once the Bodyguard's one-time save has already been spent.
