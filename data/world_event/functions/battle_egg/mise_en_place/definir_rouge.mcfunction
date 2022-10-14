#placement du command block + bouton + armor stand
kill @e[type=armor_stand,tag=battle_egg_rouge]
summon leash_knot ~ ~ ~ {Tags:["rouge_placement"]}
execute as @e[type=leash_knot,distance=..5,tag=rouge_placement] at @s run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["battle_egg_rouge"],CustomName:'{"text":"Rejoindre les rouges","color":"red"}',CustomNameVisible:1b}
execute if entity @e[type=leash_knot,tag=rouge_placement,distance=..2] run tellraw @p ["",{"text":"Débug :","bold":true,"underlined":true,"color":"red"},{"text":" Nouvel emplacement pour la zone des rouges placé","color":"red"}]
kill @e[type=leash_knot,distance=..5,tag=rouge_placement]
setblock ~ ~-2 ~ minecraft:command_block[conditional=false,facing=up]{Command:"function world_event:battle_egg/equipes_ready/equipe_rouge_ready",CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b} destroy
setblock ~ ~ ~ minecraft:stone_button[face=floor,facing=east,powered=false]

#placement des barrières
setblock ~3 ~ ~ minecraft:dark_oak_fence
setblock ~3 ~ ~-1 minecraft:dark_oak_fence
setblock ~3 ~ ~1 minecraft:dark_oak_fence
setblock ~3 ~ ~2 minecraft:structure_void
setblock ~3 ~ ~-2 minecraft:structure_void

setblock ~-3 ~ ~ minecraft:dark_oak_fence
setblock ~-3 ~ ~-1 minecraft:dark_oak_fence
setblock ~-3 ~ ~1 minecraft:dark_oak_fence
setblock ~-3 ~ ~2 minecraft:structure_void
setblock ~-3 ~ ~-2 minecraft:structure_void

setblock ~ ~ ~3 minecraft:dark_oak_fence
setblock ~-1 ~ ~3 minecraft:dark_oak_fence
setblock ~1 ~ ~3 minecraft:dark_oak_fence
setblock ~2 ~ ~3 minecraft:structure_void
setblock ~-2 ~ ~3 minecraft:structure_void

setblock ~ ~ ~-3 minecraft:dark_oak_fence
setblock ~-1 ~ ~-3 minecraft:dark_oak_fence
setblock ~1 ~ ~-3 minecraft:dark_oak_fence
setblock ~2 ~ ~-3 minecraft:structure_void
setblock ~-2 ~ ~-3 minecraft:structure_void