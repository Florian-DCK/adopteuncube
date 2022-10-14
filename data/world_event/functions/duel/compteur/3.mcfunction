scoreboard players set #duel duel_partie_va_commencer 1

execute if score #duel duel_partie_va_commencer matches 1 run title @a[distance=..500] subtitle {"text":"La partie va commencer !","color":"green"}
execute if score #duel duel_partie_va_commencer matches 1 run title @a[distance=..500] title {"text":"3","color":"green"}
execute if score #duel duel_partie_va_commencer matches 1 run playsound minecraft:block.note_block.bit master @a[distance=..500] ~ ~ ~ 100 1

scoreboard players set #duel duel_joueurs -1

execute if score #duel duel_partie_va_commencer matches 1 run schedule function world_event:duel/compteur/2 1s