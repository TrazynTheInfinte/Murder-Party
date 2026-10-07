# The Panic Button supersedes the Meeting Horn item (ADR 0002)

ADR 0002 chose a carryable Meeting Horn item over a placed button specifically to avoid redstone wiring and to let a Meeting be called from anywhere. That's reversed here: a real SecurityCraft Panic Button, placed by the admin at the Meeting Point, is now the only way to call a Meeting — trading "callable from anywhere" for the specific look of a physical panic button, which was the explicit ask.

The redstone-avoidance half of ADR 0002 still holds, just via a different mechanism: rather than wiring the button to a command block, we poll its `powered` blockstate directly at its exact coordinates every tick, treating the false→true transition as a press. No redstone contraption for the admin to build or get wrong.
