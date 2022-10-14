summon leash_knot ~ ~ ~ {Tags:["battle_egg_placement"]}
execute as @e[type=leash_knot,distance=..5,tag=battle_egg_placement] at @s run summon armor_stand ~ ~-0.4 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["battle_egg"]}
execute if entity @e[type=leash_knot,tag=battle_egg_placement,distance=..2] run tellraw @p ["",{"text":"Débug :","bold":true,"underlined":true,"color":"red"},{"text":" Nouvel emplacement pour le BattleEgg placé","color":"red"}]
kill @e[type=leash_knot,distance=..5,tag=battle_egg_placement]

#Pose de la version backup 50 blocs en dessous de l'original
execute as @e[type=minecraft:armor_stand,tag=battle_egg] at @s run clone ~-29 ~10 ~-13 ~14 ~-10 ~13 ~-29 ~-50 ~-13
