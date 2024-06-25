# $scoreboard players set x mapBuildAt $(x)
# $scoreboard players set x mapBuildAt $(y)
# $scoreboard players set x mapBuildAt $(z)

$execute positioned $(x) $(y) $(z) run function bingley:mapbuilder/place_hollow_disk {x: $(x), y: $(y), z: $(z), diameter: 15, block: "minecraft:stone"}
#$execute positioned $(x) $(y) $(z) run function bingley:mapbuilder/place_hollow_disk {x: $(x), y: , z: $(z), diameter: 15, block: "minecraft:stone"}