# Murder Party

A Minecraft data pack implementing a social deduction round system: one hidden Killer among a group of Innocents, with meetings and votes to find them.

## Language

**Round**:
A single play-through of the game, from Role assignment through to a Win Condition or Cancellation.
_Avoid_: Game, match

**Participant**:
Any entity taking part in a Round — a real player or a Test Dummy. The Round's logic treats both identically.
_Avoid_: Player (too narrow — excludes Test Dummies)

**Role**:
The hidden assignment of a Participant as Killer, Innocent, or Neutral, decided at Round start and held for the Round's duration.

**Killer**:
The abstract template every Killer Variant extends — shares the goal (eliminate every Innocent before the Round Timer expires or they are Ejected) and core mechanics (the Weapon, Weapon Cooldown, invincibility rules) across all of them. Never itself selectable or playable standalone: every Round's Killer ends up as exactly one concrete Killer Variant.
_Avoid_: Murderer, Impostor, plain Killer (there is no such thing — every Killer is some specific Variant)

**Innocent**:
A Participant who is not the Killer, trying to survive until the Killer is eliminated or the Round Timer expires.
_Avoid_: Crewmate, Victim

**Elimination**:
The removal of a Participant from active play, by Strike or by Ejection, moving them into Spectating.
_Avoid_: Death, Kill

**Strike**:
The Killer's one-hit Elimination of another Participant, dealt with the Weapon. Leaves a Corpse.

**Corpse**:
The visual remnant a Strike leaves at the victim's location. No bearing on any Win Condition. Carries a Report Item until Reported or removed. Removed after a lifespan set by which Killer variant struck them, or instantly if a Meeting is called.
_Avoid_: Body, dead body

**Killer Variant**:
Which concrete form the Round's Killer takes — currently Masked Killer or Saboteur, with more addable later. Chosen privately by the Killer during the Round's start countdown; defaults to Saboteur if not chosen in time.
_Avoid_: Role (Role is the Killer/Innocent assignment; Killer Variant is which concrete Killer the Round's Killer is this time)

**Masked Killer**:
A Killer Variant. Every Strike shortens their victims' Corpse lifespan and grants them a Mask disguised as that victim.
_Avoid_: Impersonator, disguised killer

**Saboteur**:
A Killer Variant. Starts the Round with a personal kit of Create mod remotes, bound and sized however the admin staged them beforehand — a personal toolkit, not a shared resource like the Monitor.
_Avoid_: default Killer, remote killer

**Mask**:
The single tracked disguise instance a Masked Killer holds, always showing their most recently Struck victim. A new Strike replaces it; it never accumulates more than one at a time.
_Avoid_: ID Mask, disguise (names the item type, not the specific instance that matters)

**Weapon**:
The single knife instance given to the Killer at Round start. Only this specific instance can Strike; any other copy of the same item, found or crafted elsewhere, is an ordinary tool.
_Avoid_: Knife (names the item type, not the specific instance that matters)

**Weapon Cooldown**:
The period, starting at Round start and restarting after every Strike, during which the Weapon cannot Strike again.
_Avoid_: Item cooldown (this is tracked independently of Minecraft's built-in per-item use cooldown)

**Ejection**:
Elimination of a Participant decided by majority Vote at a Meeting. A tied Vote results in no Ejection.

**Spectating**:
The state of an eliminated Participant: no longer counted toward any Win Condition, able to observe the Round and use Dead Chat.
_Avoid_: Dead, eliminated (state name vs. the event that causes it)

**Dead Chat**:
A communication channel exclusive to Spectating participants, offered as an alternative to ordinary chat.

**Meeting**:
A temporary pause in free play where every living Participant gathers at the Meeting Point to discuss and Vote.

**Report**:
A living Participant triggering a Meeting by looting a Corpse's Report Item. Unlike the Panic Button or the Captain's horn, Reporting does not spend the Reporter's Meeting Call. Announces the victim's name and the Reporter's currently-displayed name — deliberately not the Reporter's real identity if they are a disguised Masked Killer, letting them Report under their Mask's identity.
_Avoid_: Report Body (the Among Us term this is inspired by, but Reporting here is triggered by looting, not a deliberate action at the Corpse)

**Report Item**:
The single tracked item instance a Corpse carries. Entering any living Participant's inventory triggers a Report and deletes the item.

**Panic Button**:
The single placed block a living Participant presses to call a Meeting, located at the Meeting Point. Pressing it spends that Participant's Meeting Call.
_Avoid_: Meeting Horn (the originally-planned item this supersedes), emergency button, horn item

**Meeting Call**:
A living Participant's one-time allowance, per Round, to trigger a Meeting by pressing the Panic Button.
_Avoid_: Horn use, button press (names the mechanism, not the allowance it spends)

**Meeting Point**:
The single location all living Participants are gathered to for a Meeting, and where the Panic Button is located. Set once per map and reused by every Round until changed.
_Avoid_: Meeting location, meeting room

**Round Timer**:
The countdown that ends the Round as an Innocents Win Condition if it reaches zero before the Killer is Ejected. Pauses for the duration of a Meeting.
_Avoid_: Timer, clock

**Vote**:
A living Participant's choice, cast during a Meeting, of who they believe should be Ejected.

**Lobby Point**:
The location Participants occupy before a Round starts and are returned to when it ends.
_Avoid_: Spawn, hub

**Arena**:
The bounded region within which a Round takes place.

**Map**:
A numbered, admin-authored collection of this Round's Spawn Points, Security Room, Meeting Point, and Saboteur kit location — one Map is randomly assigned to each Round at its start. The Lobby Point is shared across every Map, not part of any one of them.
_Avoid_: Arena (Arena is a region concept and isn't currently enforced by any code; Map is about which set of location markers a Round uses)

**Win Condition**:
The outcome that ends a Round with a declared winning side: Innocents win if the Killer is eliminated (by Ejection, or a role's one-shot elimination like the Vigilante's or Hitman's) or the Round Timer expires; the Killer wins if every Innocent and every Neutral is eliminated first.

**Neutral**:
A third Role, aligned with neither the Killer nor the Innocents, assigned to at most one Participant per Round and pursuing a Personal Win independent of the Round's Win Condition. Still eliminable by the Killer's Weapon exactly like an Innocent, and still counts toward the Killer's Win Condition — lower priority for the Killer to hunt than Innocents, but still required dead for the Killer to win. Never offered a Civilian Role, since a Neutral is not an Innocent.
_Avoid_: Neutral Role (ambiguous with Civilian Role, which is a layer *on* Innocent — Neutral is a Role in its own right)

**Personal Win**:
A Neutral's own win condition, satisfied independently of the Round's Win Condition. Achieving it does not by itself end the Round, except where it structurally must (the Arsonist's Personal Win requires every other Participant already dead).

**Jester**:
A Neutral. Personal Win is being Ejected. Carries a decoy knife, indistinguishable at a glance from the Weapon but with none of its effects, to bait suspicion onto them.

**Arsonist**:
A Neutral. Personal Win is eliminating every other Participant — the Killer included — achieved by Dousing every one of them, then igniting at the next Meeting, however it's called.

**Dousing**:
The Arsonist's private marking of a Participant, applied with their Gasoline Can and invisible to the victim. Persists until death, including through Meetings.

**Hitman**:
A Neutral, assigned one specific living Participant (the Killer is a valid pick) as their target at Round start — known to the Hitman, but the target is only told they're targeted, not by whom. Personal Win is eliminating that target with a single-use knife that only works on them. If the target dies by other means first, the Hitman converts into a Jester.

**Cancellation**:
A Round ending prematurely by admin action, with no Win Condition reached and no Role reveal.
_Avoid_: Force-stop (that names the action; Cancellation is the resulting outcome)

**Test Dummy**:
A non-player stand-in Participant used to populate a Round for solo testing. Counts as an Innocent for Elimination and Win Condition purposes.
_Avoid_: Fake player, bot

**Civilian Role**:
An optional extra layer some Innocents get on top of the base Innocent definition — currently Vigilante, Noisemaker, or Captain. An Innocent with none of these is still simply an Innocent; nothing about the base definition changes.
_Avoid_: Innocent Variant (deliberately a different term from Killer Variant — the assignment mechanics are meaningfully different: a random pair plus decline, not a full list, and every Killer ends up with exactly one Variant while most Innocents end up with none)

**Civilian Role Choice**:
An Innocent's private pick (or decline) from a random pair of Civilian Roles offered during the Round's start countdown, capped at one Participant per Role per Round.

**Vigilante**:
A Civilian Role. Holds a single-use knife that Eliminates the Killer if struck with it — any other target just breaks it for nothing, with no further consequence to the Vigilante beyond the wasted shot.

**Noisemaker**:
A Civilian Role. Being Struck broadcasts a global alarm naming them, instead of the usual proximity-only cue — reveals who died, not where.

**Captain**:
A Civilian Role. Marked with a permanently visible nametag for the Round — the one deliberate exception to the game's otherwise-universal hidden-nametag rule. Can call a Meeting from anywhere, not just the Meeting Point.

## Security Room

A persistent map feature, not scoped to a Round — usable by any Participant, any Role, anytime.

**Security Room**:
The admin-designated chest or barrel, and the radius around it, that the Monitor must stay within.
_Avoid_: Camera room (names the theme, not the enforced boundary)

**Monitor**:
The single tracked instance of the camera-viewing item that lives in the Security Room. Any Participant may use it, but carrying it past the Security Room's radius returns it there instantly, camera bindings intact.
_Avoid_: Camera Monitor (names the underlying item type; Monitor is the one specific tracked instance, same relationship as Weapon to knife)
