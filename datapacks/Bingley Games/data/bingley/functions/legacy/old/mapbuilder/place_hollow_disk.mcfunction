# ===< Get hollow disk size coordinates >===
$execute store result storage bingley:mapbuilder/place_shape x1 int 1 run scoreboard players get $(diameter) hollow_circle_x1
$execute store result storage bingley:mapbuilder/place_shape y1 int 1 run scoreboard players get $(diameter) hollow_circle_y1
$execute store result storage bingley:mapbuilder/place_shape z1 int 1 run scoreboard players get $(diameter) hollow_circle_z1

$execute store result storage bingley:mapbuilder/place_shape x2 int 1 run scoreboard players get $(diameter) hollow_circle_x2
$execute store result storage bingley:mapbuilder/place_shape y2 int 1 run scoreboard players get $(diameter) hollow_circle_y2
$execute store result storage bingley:mapbuilder/place_shape z2 int 1 run scoreboard players get $(diameter) hollow_circle_z2

# ===< Get location to place >===
$data modify storage bingley:mapbuilder/place_shape x3 set value $(x)
$data modify storage bingley:mapbuilder/place_shape y3 set value $(y)
$data modify storage bingley:mapbuilder/place_shape z3 set value $(z)

# Add a value to the storage. It is x3 + positive(x2 - x1)
#execute store result storage bingley:mapbuilder/place_shape x4 int 1 run scoreboard players operation 

# ===< Get block type to place >===
$data modify storage bingley:mapbuilder/place_shape block set value "$(block)"

# ===< Call macro function >===
function bingley:mapbuilder_macro/place_hollow_disk with storage bingley:mapbuilder/place_shape