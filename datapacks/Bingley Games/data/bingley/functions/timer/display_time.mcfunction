# Show in chat in format: 1h 34m 7s
execute if score type timer matches 1 if score hours timer matches 0 if score minutes timer matches 0 run return run tellraw @a [{"score":{"name":"seconds","objective":"timer"}},{"text":"s"}]

execute if score type timer matches 1 if score hours timer matches 0 unless score minutes timer matches 0 run return run tellraw @a [{"score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":"s"}]

execute if score type timer matches 1 if score hours timer matches 1.. run return run tellraw @a [{"score":{"name":"hours","objective":"timer"}},{"text":"h "},{"score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":"s"}]

# Show in actionbar in format: 1h 34m 7s
execute if score type timer matches 2 if score hours timer matches 0 if score minutes timer matches 0 run return run title @a actionbar [{"score":{"name":"seconds","objective":"timer"}},{"text":"s"}]

execute if score type timer matches 2 if score hours timer matches 0 unless score minutes timer matches 0 run return run title @a actionbar [{"score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":"s"}]

execute if score type timer matches 2 if score hours timer matches 1.. run return run title @a actionbar [{"score":{"name":"hours","objective":"timer"}},{"text":"h "},{"score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":"s"}]

# Show as title in format: 5:00
execute if score type timer matches 3 if score hours timer matches 0 if score minutes timer matches 0 run return run title @a title [{"score":{"name":"seconds","objective":"timer"}}]

execute if score type timer matches 3 if score hours timer matches 0 unless score minutes timer matches 0 run return run title @a title [{"score":{"name":"minutes","objective":"timer"}},{"text":":"},{"score":{"name":"seconds","objective":"timer"}}]

execute if score type timer matches 3 if score hours timer matches 1.. run return run title @a title [{"score":{"name":"hours","objective":"timer"}},{"text":":"},{"score":{"name":"minutes","objective":"timer"}},{"text":":"},{"score":{"name":"seconds","objective":"timer"}}]