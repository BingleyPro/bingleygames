# --- Get Information ---
$scoreboard players set x mapBuildAt $(x)
$scoreboard players set y mapBuildAt $(y)
$scoreboard players set z mapBuildAt $(z)

data modify storage bingley:mapbuilder/mapdata block set value "minecraft:stone"
data modify storage bingley:mapbuilder/mapdata block2 set value "minecraft:snow_block"
data modify storage bingley:mapbuilder/mapdata diameter set value 15
data modify storage bingley:mapbuilder/mapdata height set value 15
data modify storage bingley:mapbuilder/mapdata layers set value 3

$data modify storage bingley:mapbuilder/mapdata x set value $(x)
$data modify storage bingley:mapbuilder/mapdata y set value $(y)
$data modify storage bingley:mapbuilder/mapdata z set value $(z)

# --- Layer Disks to Make Cylinder ---
scoreboard players set repeatCount mapBuildAt 15
function bingley:maps/spleef/place_spleef_ring with storage bingley:mapbuilder/mapdata