# Player leaves participation
scoreboard players set @s participation 0
scoreboard players set @s votes 0
tellraw @s [{"color":"aqua","text":"You have stopped participating!"}]
tag @s remove participation