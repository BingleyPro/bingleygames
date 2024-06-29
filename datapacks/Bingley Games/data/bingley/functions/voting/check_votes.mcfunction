# Check votes
scoreboard players set 1 votes_check 0
scoreboard players set 2 votes_check 0
scoreboard players set 3 votes_check 0
scoreboard players set 4 votes_check 0
scoreboard players set 5 votes_check 0

execute as @a[scores={votes=1}] run scoreboard players add 1 votes_check 1
execute as @a[scores={votes=2}] run scoreboard players add 2 votes_check 1
execute as @a[scores={votes=3}] run scoreboard players add 3 votes_check 1
execute as @a[scores={votes=4}] run scoreboard players add 4 votes_check 1
execute as @a[scores={votes=5}] run scoreboard players add 5 votes_check 1

execute if score 1 votes_check matches 1.. run return run function bingley:voting/start_game {gamename:"Spleef"}
execute if score 2 votes_check matches 1.. run return run function bingley:voting/start_game {gamename:"Parkour"}