$execute if score @s votes matches $(gameid) run tellraw @s [{"color":"aqua","text":"You've already voted for this game!"},{"clickEvent":{"action":"run_command","value":"/scoreboard players set @s votes 0"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to remove vote","color":"gray"}]},"italic":true,"text":" (remove vote)"}]

$execute if score @s votes matches 0 run tellraw @s [{"color":"aqua","text":"You have voted for "},{"bold":true,"color":"gold","text":"$(gamename)"},{"color":"aqua","text":"!"},{"clickEvent":{"action":"run_command","value":"/scoreboard players set @s votes 0"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to remove vote","color":"gray"}]},"italic":true,"text":" (remove vote)"}]
$execute if score @s votes matches 0 run scoreboard players set @s votes $(gameid)

function bingley:query/query_gamestart