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
The Participant whose goal is to eliminate every Innocent before the Round Timer expires or they are Ejected.
_Avoid_: Murderer, Impostor

**Innocent**:
A Participant who is not the Killer, trying to survive until the Killer is eliminated or the Round Timer expires.
_Avoid_: Crewmate, Victim

**Elimination**:
The removal of a Participant from active play, by Strike or by Ejection, moving them into Spectating.
_Avoid_: Death, Kill

**Strike**:
The Killer's one-hit Elimination of another Participant.

**Ejection**:
Elimination of a Participant decided by majority Vote at a Meeting. A tied Vote results in no Ejection.

**Spectating**:
The state of an eliminated Participant: no longer counted toward any Win Condition, able to observe the Round and use Dead Chat.
_Avoid_: Dead, eliminated (state name vs. the event that causes it)

**Dead Chat**:
A communication channel exclusive to Spectating participants, offered as an alternative to ordinary chat.

**Meeting**:
A temporary pause in free play where every living Participant gathers at the Meeting Point to discuss and Vote.

**Meeting Horn**:
The item a living Participant uses to call a Meeting. Each Participant may use theirs once per Round.
_Avoid_: Emergency button, horn item

**Meeting Point**:
The single location all living Participants are gathered to for a Meeting. Set once per map and reused by every Round until changed.
_Avoid_: Meeting location, meeting room

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
