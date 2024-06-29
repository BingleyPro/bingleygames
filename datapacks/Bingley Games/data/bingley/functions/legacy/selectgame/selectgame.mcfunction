# Singleplayer
$execute if score Gamemode settings matches 0 run function bingley:gameplay/play_spleef {gameid:$(gameid),gamename:"$(gamename)"}

# Multiplayer
$execute if score Gamemode settings matches 1 run function bingley:vote/voteforgame {gameid:$(gameid),gamename:"$(gamename)"}