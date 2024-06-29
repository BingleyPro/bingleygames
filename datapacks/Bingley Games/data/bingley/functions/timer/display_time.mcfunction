execute if score type timer matches 1 if score hours timer matches 0 if score minutes timer matches 0 run return run tellraw @a [{"score":{"name":"seconds","objective":"timer"}},{"text":"s"}]

execute if score type timer matches 1 if score hours timer matches 0 unless score minutes timer matches 0 run return run tellraw @a [{"score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":"s"}]

execute if score type timer matches 1 if score hours timer matches 1.. run return run tellraw @a [{"score":{"name":"hours","objective":"timer"}},{"text":"h "},{"score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":"s"}]