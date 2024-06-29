# Reset all votes
scoreboard players reset * votes
scoreboard players set canVote game 0

$tellraw @a {"text":"The game $(gamename) has been decided!","color":"green"}

scoreboard players set @a cancels 0
clear @a[tag=!dev]
give @s minecraft:barrier[minecraft:food={nutrition:0,saturation:0.0,eat_seconds:1000000,can_always_eat:true}]

# Starts a 20-second timer before the game starts
function bingley:timer/timer_start