$data modify storage bingley:mapbuilder/mapdata x set value $(x)
$data modify storage bingley:mapbuilder/mapdata y set value $(y)
$data modify storage bingley:mapbuilder/mapdata z set value $(z)

# Remove all player's items
execute as @a run clear

# Give all players a golden shovel
give @a minecraft:golden_shovel