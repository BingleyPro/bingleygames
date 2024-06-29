# Get height
$scoreboard players set height mapBuildAt $(height)
$scoreboard players set layers mapBuildAt $(layers)

scoreboard players operation height mapBuildAt /= layers mapBuildAt

#data modify storage bingley:mapbuilder/mapdata height set 

# --- Create the layers ---
$scoreboard players set repeatCount mapBuildAt $(layers)
function bingley:maps/spleef/place_spleef_layer with storage bingley:mapbuilder/mapdata