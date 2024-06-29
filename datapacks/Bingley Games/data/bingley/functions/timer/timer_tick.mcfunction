scoreboard players remove seconds timer 1

execute if score cancel timer matches 1 run return run say e

execute if score seconds timer matches 0 run execute if score minutes timer matches 0 run execute if score hours timer matches 0 run return run function bingley:timer/timer_end

execute if score seconds timer matches -1 run return run function bingley:timer/timer_minute_tick

execute if score type timer matches 1 run tellraw @a [{"score":{"name":"hours","objective":"timer"}},{"text":":"},{"score":{"name":"minutes","objective":"timer"}},{"text":":"},{"score":{"name":"seconds","objective":"timer"}}]
schedule function bingley:timer/timer_tick 1s