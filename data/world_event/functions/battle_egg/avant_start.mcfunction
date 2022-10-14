#Title
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run title @a[distance=..500] subtitle {"text":"","color":"green"}
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run title @a[distance=..500] title {"text":"C'est partie !","color":"green"}
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run playsound minecraft:block.note_block.bit master @a[distance=..500] ~ ~ ~ 100 1.5

#modification des scoreboards
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run execute as @e[tag=battle_egg] at @s run scoreboard players set #battle_egg battle_egg_jeu_en_cours 1

#Mise en survival des joueurs
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run gamemode survival @a[tag=BEbleu]
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run gamemode survival @a[tag=BErouge]

#retire le stuff potentiel déjà présent
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run clear @a[tag=BEbleu,distance=..500]
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run clear @a[tag=BErouge,distance=..500]

#Lancement de la partie
execute if score #battle_egg battle_egg_partie_va_commencer matches 1 run schedule function world_event:battle_egg/start 2t