scoreboard players set #battle_egg battle_egg_partie_va_commencer 1

execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run title @a[distance=..500] subtitle {"text":"La partie va commencer !","color":"green"}
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run title @a[distance=..500] title {"text":"3","color":"green"}
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run playsound minecraft:block.note_block.bit master @a[distance=..500] ~ ~ ~ 100 1

execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run execute as @e[tag=battle_egg] at @s run scoreboard players set #battle_egg battle_egg_equipe_bleu_ready -1
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run execute as @e[tag=battle_egg] at @s run scoreboard players set #battle_egg battle_egg_equipe_rouge_ready 0

execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run schedule function world_event:battle_egg/compteur/2 1s