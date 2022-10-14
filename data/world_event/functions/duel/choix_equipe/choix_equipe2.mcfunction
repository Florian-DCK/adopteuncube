#Bloquage du TP
execute as @e[tag=duel,type=armor_stand] at @s run setblock ~-30 ~1 ~23 red_stained_glass
execute as @e[tag=duel,type=armor_stand] at @s run setblock ~-30 ~2 ~23 red_stained_glass

#Mise du tag et TP du joueur
tag @s add duel_p2
execute as @e[tag=duel,type=armor_stand] at @s run tp @a[tag=duel_p2] ~-20 ~1 ~0 -450.19 0.30
title @a[tag=duel_p2] title {"text":"\u2694 Tu es entré dans l'arène ! \u2694","color":"gold"}
playsound minecraft:block.note_block.chime master @a[tag=duel_p2] ~ ~ ~ 100 1.5

#Give des items et clear
clear @a[tag=duel_p2]

give @a[tag=duel_p2] iron_sword{display:{Name:'{"text":"Epée de gladiateur","color":"gold","bold":true}'},Unbreakable:1b,HideFlags:2,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:knockback",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:50,Operation:0,UUID:[I;-1943917102,605113406,-2054312735,-1822897957]}]} 1
give @a[tag=duel_p2] bow{display:{Name:'{"text":"Arc de gladiateur","color":"gold","bold":true}'},Unbreakable:1b,HideFlags:2} 1
give @a[tag=duel_p2] arrow{display:{Name:'{"text":"Flèches de gladiateur","color":"gold","bold":true}'},HideFlags:2} 16
give @a[tag=duel_p2] splash_potion{display:{Name:'{"text":"Boisson de gladiateur agréable","color":"gold","bold":true}'},HideFlags:2,Potion:"minecraft:strong_healing"} 5
give @a[tag=duel_p2] splash_potion{display:{Name:'{"text":"Boisson de gladiateur rapide","color":"gold","bold":true}'},HideFlags:2,Potion:"minecraft:long_swiftness"} 1

item replace entity @a[tag=duel_p2] armor.head with iron_helmet{display:{Name:'{"text":"Casque de gladiateur","color":"gold","bold":true}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]} 1
item replace entity @a[tag=duel_p2] armor.chest with iron_chestplate{display:{Name:'{"text":"Armure de gladiateur","color":"gold","bold":true}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]} 1
item replace entity @a[tag=duel_p2] armor.legs with iron_leggings{display:{Name:'{"text":"Pantalon de gladiateur","color":"gold","bold":true}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]} 1
item replace entity @a[tag=duel_p2] armor.feet with iron_boots{display:{Name:'{"text":"Bottes de gladiateur","color":"gold","bold":true}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]} 1

#Ajout de 1 au nombre de joueurs
scoreboard players add #duel duel_joueurs 1