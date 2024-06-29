scoreboard players set seconds timer 59
scoreboard players remove minutes timer 1

execute if score minutes timer matches -1 run return run function bingley:timer/timer_hour_tick

function bingley:timer/display_time
schedule function bingley:timer/timer_tick 1s