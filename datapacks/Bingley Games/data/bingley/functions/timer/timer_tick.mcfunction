scoreboard players remove seconds timer 1
execute if score seconds timer matches -1 run function bingley:timer/timer_minute_tick

execute if score minutes timer matches -1 run return fail
tellraw @a [{"score":{"name":"minutes","objective":"timer"}},{"text":":"},{"score":{"name":"seconds","objective":"timer"}}]
schedule function bingley:timer/timer_tick 1s