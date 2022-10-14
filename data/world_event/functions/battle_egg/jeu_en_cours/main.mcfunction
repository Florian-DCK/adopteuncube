#au cas où le scoreboard constante n'existe pas 
scoreboard objectives add constante dummy

#set certaines constantes
scoreboard players set #10 constante 10
scoreboard players set #0 constante 0

#set scorboard détection des points
scoreboard objectives add battle_egg_morts deathCount
scoreboard objectives add batle_egg_morts_joueur deathCount
execute if score #battle_egg_rouge battle_egg_morts < #0 constante run scoreboard players set #battle_egg_rouge battle_egg_morts 0
execute if score #battle_egg_bleu battle_egg_morts < #0 constante run scoreboard players set #battle_egg_bleu battle_egg_morts 0

#détection des points
execute if score #battle_egg battle_egg_jeu_en_cours matches 1 run scoreboard objectives add battle_egg_points dummy
execute if score #battle_egg battle_egg_jeu_en_cours matches 1 if score #battle_egg_rouge battle_egg_points < #0 constante run scoreboard players set #battle_egg_rouge battle_egg_points 0
execute if score #battle_egg battle_egg_jeu_en_cours matches 1 if score #battle_egg_bleu battle_egg_points < #0 constante run scoreboard players set #battle_egg_bleu battle_egg_points 0

execute as @a[tag=BEbleu,scores={battle_egg_morts=1}] at @s if score #battle_egg battle_egg_jeu_en_cours matches 1 run scoreboard players add #battle_egg_bleu battle_egg_morts 1
execute as @a[tag=BEbleu,scores={battle_egg_morts=1}] at @s if score #battle_egg battle_egg_jeu_en_cours matches 1 run scoreboard players set @s battle_egg_morts 0
execute as @a[tag=BErouge,scores={battle_egg_morts=1}] at @s if score #battle_egg battle_egg_jeu_en_cours matches 1 run scoreboard players add #battle_egg_rouge battle_egg_morts 1
execute as @a[tag=BErouge,scores={battle_egg_morts=1}] at @s if score #battle_egg battle_egg_jeu_en_cours matches 1 run scoreboard players set @s battle_egg_morts 0

execute if score #battle_egg battle_egg_jeu_en_cours matches 1 run scoreboard players operation #battle_egg_bleu battle_egg_points = #battle_egg_rouge battle_egg_morts
execute if score #battle_egg battle_egg_jeu_en_cours matches 1 run scoreboard players operation #battle_egg_rouge battle_egg_points = #battle_egg_bleu battle_egg_morts

#affichage des points
execute as @e[tag=battle_egg] at @s if score #battle_egg battle_egg_jeu_en_cours matches 1 run title @a[distance=..100] actionbar ["",{"text":"BLEU : ","color":"dark_blue"},{"score":{"name":"#battle_egg_bleu","objective":"battle_egg_points"},"color":"dark_blue"},{"text":" |","color":"black"},{"text":" ROUGE : ","color":"dark_red"},{"score":{"name":"#battle_egg_rouge","objective":"battle_egg_points"},"color":"dark_red"}]

#détection gagnant
execute if score #battle_egg_rouge battle_egg_points matches 10 run function world_event:battle_egg/jeu_en_cours/rouge_gagnant
execute if score #battle_egg_bleu battle_egg_points matches 10 run function world_event:battle_egg/jeu_en_cours/bleu_gagnant

#Supprimer les items non utiles dans l'inventaire
execute as @a[tag=BEbleu] at @s run clear @s #world_event:non_crops
execute as @a[tag=BErouge] at @s run clear @s #world_event:non_crops

#Loop de la fonction si le jeu est toujours en cours
execute if score #battle_egg battle_egg_jeu_en_cours matches 1 run schedule function world_event:battle_egg/jeu_en_cours/main 1t

#Détecte si on tombe à court de bone meal ou de carrotes (sinon hard stuck)
execute as @e[tag=battle_egg] at @s as @a[distance=..50,tag=!manque_bone_meal,nbt=!{Inventory:[{id:"minecraft:bone_meal"}]}] run function world_event:battle_egg/securite/manque_bone_meal
execute as @e[tag=battle_egg] at @s as @a[distance=..50,tag=!manque_carrot,nbt=!{Inventory:[{id:"minecraft:carrot"}]}] run function world_event:battle_egg/securite/manque_carrot

execute as @a[tag=BEbleu,nbt={Inventory:[{id:"minecraft:bone_meal"}]}] at @s run tag @s remove manque_bone_meal
execute as @a[tag=BEbleu,nbt={Inventory:[{id:"minecraft:carrot"}]}] at @s run tag @s remove manque_carrot

execute as @a[tag=BErouge,nbt={Inventory:[{id:"minecraft:bone_meal"}]}] at @s run tag @s remove manque_bone_meal
execute as @a[tag=BErouge,nbt={Inventory:[{id:"minecraft:carrot"}]}] at @s run tag @s remove manque_carrot

#effets
effect give @a[team=battle_egg] saturation 1 2 true