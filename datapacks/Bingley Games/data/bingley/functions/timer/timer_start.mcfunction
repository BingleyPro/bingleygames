$scoreboard players set seconds timer $(seconds)
$scoreboard players set minutes timer $(minutes)
$scoreboard players set hours timer $(hours)

$scoreboard players set type timer $(type)
# Types:
# 1 = timer before game start after decision

scoreboard players set cancel timer 0

function bingley:timer/display_time
schedule function bingley:timer/timer_tick 1s

# Future Types:
# Types:
# 0 = don't show
# 1 = show in chat
# 2 = show in actionbar

#$scoreboard players set type2 timer $(type2)
#$scoreboard players set amount timer $(amount)
# Type (expansions):
# If type 1:
# 0 = nothing
# 1 = show every $(amount) seconds