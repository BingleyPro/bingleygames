$clone $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(x3) $(y3) $(z3)

# Calculate x4, y4 and z4
$scoreboard players set length mapBuildAt $(x2)
$scoreboard players set length2 mapBuildAt $(x1)
scoreboard players operation length mapBuildAt -= length2 mapBuildAt

$scoreboard players set height mapBuildAt $(y2)
$scoreboard players set height2 mapBuildAt $(y1)
scoreboard players operation height mapBuildAt -= height2 mapBuildAt

$scoreboard players set width mapBuildAt $(z2)
$scoreboard players set width2 mapBuildAt $(z1)
scoreboard players operation width2 mapBuildAt -= width mapBuildAt

$scoreboard players set x4 mapBuildAt $(x3)
execute store result storage bingley:mapbuilder/replace_shape x3 int 1 run scoreboard players get x4 mapBuildAt
scoreboard players operation x4 mapBuildAt += length mapBuildAt

$scoreboard players set y4 mapBuildAt $(y3)
execute store result storage bingley:mapbuilder/replace_shape y3 int 1 run scoreboard players get y4 mapBuildAt
scoreboard players operation y4 mapBuildAt += height mapBuildAt

$scoreboard players set z4 mapBuildAt $(z3)
execute store result storage bingley:mapbuilder/replace_shape z3 int 1 run scoreboard players get z4 mapBuildAt
scoreboard players operation z4 mapBuildAt += width2 mapBuildAt

execute store result storage bingley:mapbuilder/replace_shape x4 int 1 run scoreboard players get x4 mapBuildAt
execute store result storage bingley:mapbuilder/replace_shape y4 int 1 run scoreboard players get y4 mapBuildAt
execute store result storage bingley:mapbuilder/replace_shape z4 int 1 run scoreboard players get z4 mapBuildAt

data modify storage bingley:mapbuilder/replace_shape block set value "minecraft:stone"

function bingley:mapbuilder_macro/replace_blocks_with with storage bingley:mapbuilder/replace_shape