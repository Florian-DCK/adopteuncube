execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run title @a[distance=..500] subtitle {"text":"La partie va commencer !","color":"green"}
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run title @a[distance=..500] title {"text":"1","color":"green"}
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run playsound minecraft:block.note_block.bit master @a[distance=..500] ~ ~ ~ 100 1

execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run schedule function world_event:battle_egg/avant_start 1s