scoreboard players remove repeatCount mapBuildAt 1

data modify storage bingley:mapbuilder/mapdata block set from storage bingley:mapbuilder/mapdata block2

function bingley:mapbuilder/place_hollow_disk with storage bingley:mapbuilder/mapdata
scoreboard players remove y mapBuildAt 1
execute store result storage bingley:mapbuilder/mapdata y int 1 run scoreboard players get y mapBuildAt

execute if score repeatCount mapBuildAt matches 1.. run schedule function bingley:maps/spleef/place_spleef_layer 0t
execute if score repeatCount mapBuildAt matches 0 run say Finish!