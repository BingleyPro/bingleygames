tellraw @a {"text":"The game has been cancelled!","color":"green"}

scoreboard players set @a cancels 0

scoreboard players reset * votes
scoreboard players set @a votes 0
scoreboard players set canVote game 1

scoreboard players set cancel timer 1