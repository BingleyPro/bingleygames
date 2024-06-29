advancement revoke @s only bingley:rightclick_barrier_cancel_game
clear @s barrier [minecraft:food={nutrition:0,saturation:0.0,eat_seconds:1000000,can_always_eat:true}]

# Register cancel vote
execute if score @s cancels matches 1 run return run tellraw @s {"text":"You have already voted to cancel the game.","color":"red"}

# If not player cancelled yet
scoreboard players set @s cancels 1
function bingley:cancel/check_cancels