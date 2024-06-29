# Start the game

# Reset all votes
scoreboard players set * votes 0

$tellraw @a {"text":"The game $(gamename) has been decided!","color":"green"}

function bingley:timer/timer_start