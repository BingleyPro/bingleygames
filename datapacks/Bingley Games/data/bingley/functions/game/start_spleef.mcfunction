fill -59 -64 -148 53 30 -212 air
clone -1017 60 26 -982 15 -9 -20 -60 -190
fill -20 -60 -190 15 -15 -155 snow_block replace white_concrete 
tp @a

give @a[tag=playing] netherite_shovel[max_damage=1,can_break={predicates:[{blocks:"snow_block"}]},unbreakable={},damage=0,enchantments={levels:{"minecraft:efficiency":5}}] 1

function bingley:timer/timer_start {hours:0,minutes:0,seconds:5,type:3}

schedule function bingley:timer/timer_start {hours:0,minutes:5,seconds:0,type:2}