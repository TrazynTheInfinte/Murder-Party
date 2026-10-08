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
The hidden assignment of a Participant as Killer or Innocent, decided at Round start and held for the Round's duration.

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
The visual remnant a Strike leaves at the victim's location. Purely cosmetic — no interaction, no bearing on any Win Condition. Removed after a lifespan set by which Killer variant struck them, or instantly if a Meeting is called.
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

**Win Condition**:
The outcome that ends a Round with a declared winning side: Innocents win if the Killer is Ejected or the Round Timer expires; the Killer wins if every Innocent is eliminated first.

**Cancellation**:
A Round ending prematurely by admin action, with no Win Condition reached and no Role reveal.
_Avoid_: Force-stop (that names the action; Cancellation is the resulting outcome)

**Test Dummy**:
A non-player stand-in Participant used to populate a Round for solo testing. Counts as an Innocent for Elimination and Win Condition purposes.
_Avoid_: Fake player, bot

## Security Room

A persistent map feature, not scoped to a Round — usable by any Participant, any Role, anytime.

**Security Room**:
The admin-designated chest or barrel, and the radius around it, that the Monitor must stay within.
_Avoid_: Camera room (names the theme, not the enforced boundary)

**Monitor**:
The single tracked instance of the camera-viewing item that lives in the Security Room. Any Participant may use it, but carrying it past the Security Room's radius returns it there instantly, camera bindings intact.
_Avoid_: Camera Monitor (names the underlying item type; Monitor is the one specific tracked instance, same relationship as Weapon to knife)
