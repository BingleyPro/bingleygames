# Reset all votes
scoreboard players reset * votes
scoreboard players set @a votes 0
scoreboard players set canVote game 0

$tellraw @a {"text":"The game $(gamename) has been decided!","color":"green"}

$data modify storage bingley:game_data game set value $(gamenameid)

scoreboard players set @a cancels 0
clear @a[tag=!dev]
give @a minecraft:barrier[minecraft:food={nutrition:0,saturation:0.0,eat_seconds:1000000,can_always_eat:true}]

# Starts a 20-second timer before the game starts
function bingley:timer/timer_start {hours:0,minutes:0,seconds:20,type:1}