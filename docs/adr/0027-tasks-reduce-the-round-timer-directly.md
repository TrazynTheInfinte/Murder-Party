# Tasks reduce the Round Timer directly, instead of being a new Win Condition

Completing a real Task shortens the Round Timer by a fixed amount (15 seconds for an instant Task, 30 for a stand-still one). There is no separate "Innocents win by finishing all Tasks" condition - the only effect a Task has is making the existing Round Timer expire sooner.

We considered a dedicated Task-completion Win Condition, parallel to Ejection and Round Timer expiry. We chose to fold Tasks into the Round Timer instead, because the Round Timer already exists as the mechanism meant to pressure the group into acting instead of clustering defensively - Tasks are explicitly a tool to split the group up, and tying them to the same clock the group is already racing keeps the incentive single and legible, rather than asking players to track two separate win paths at once.
