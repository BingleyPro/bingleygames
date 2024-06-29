scoreboard players set minutes timer 59
scoreboard players remove hours timer 1

execute if score type timer matches 1 run tellraw @a [{"score":{"name":"hours","objective":"timer"}},{"text":":"},{"score":{"name":"minutes","objective":"timer"}},{"text":":"},{"score":{"name":"seconds","objective":"timer"}}]
schedule function bingley:timer/timer_tick 1s