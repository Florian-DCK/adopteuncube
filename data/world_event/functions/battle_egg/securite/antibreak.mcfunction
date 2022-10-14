#Empêche le break de blocs

execute as @e[type=minecraft:armor_stand,tag=battle_egg] at @s unless blocks ~-29 ~-30 ~-13 ~14 ~-50 ~13 ~-29 ~-10 ~-13 masked run clone ~-29 ~-30 ~-13 ~14 ~-50 ~13 ~-29 ~-10 ~-13 masked
execute as @e[tag=battle_egg] at @s if score #battle_egg battle_egg_jeu_en_cours matches 1 run schedule function world_event:battle_egg/securite/antibreak 1s