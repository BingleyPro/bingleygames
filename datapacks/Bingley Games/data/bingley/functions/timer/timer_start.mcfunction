$scoreboard players set seconds timer $(seconds)
$scoreboard players set minutes timer $(minutes)
$scoreboard players set hours timer $(hours)

$scoreboard players set type timer $(type)
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

execute if score type timer matches 1 run tellraw @a [{"score":{"name":"hours","objective":"timer"}},{"text":":"},{"score":{"name":"minutes","objective":"timer"}},{"text":":"},{"score":{"name":"seconds","objective":"timer"}}]
schedule function bingley:timer/timer_tick 1s