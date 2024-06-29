# Register cancel vote
execute if score @s cancels matches 1 run return run tellraw @s {"text":"You have already voted to cancel the game.","color":"red"}

# If not player cancelled yet
scoreboard players set @s cancels 1
function bingley:cancel/check_cancels