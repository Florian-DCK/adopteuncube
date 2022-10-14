execute if score #duel duel_partie_va_commencer matches 1 run title @a[distance=..500] subtitle {"text":"","color":"green"}
execute if score #duel duel_partie_va_commencer matches 1 run title @a[distance=..500] title {"text":"Combattez !","color":"green"}

#Bloquage des tps
execute as @e[tag=duel_p1_out,type=armor_stand] at @s if score #duel duel_partie_va_commencer matches 1 run setblock ~-1 ~ ~ cyan_stained_glass
execute as @e[tag=duel_p1_out,type=armor_stand] at @s if score #duel duel_partie_va_commencer matches 1 run setblock ~-1 ~1 ~ cyan_stained_glass

execute as @e[tag=duel_p2_out,type=armor_stand] at @s if score #duel duel_partie_va_commencer matches 1 run setblock ~1 ~ ~ red_stained_glass
execute as @e[tag=duel_p2_out,type=armor_stand] at @s if score #duel duel_partie_va_commencer matches 1 run setblock ~1 ~1 ~ red_stained_glass

#Tp de nouveau les joueurs
execute as @e[tag=duel,type=armor_stand] at @s if score #duel duel_partie_va_commencer matches 1 run tp @a[tag=duel_p2] ~-20 ~1 ~0 -450.19 0.30
execute as @e[tag=duel,type=armor_stand] at @s if score #duel duel_partie_va_commencer matches 1 run tp @a[tag=duel_p1] ~20 ~1 ~0 -269.74 0.30

#Retirer le mur de verre
execute as @e[tag=duel,type=armor_stand] at @s if score #duel duel_partie_va_commencer matches 1 run fill ~0 ~16 ~-15 ~0 ~1 ~15 air

#Ajout de la team
execute as @e[tag=duel,type=armor_stand] at @s if score #duel duel_partie_va_commencer matches 1 run team join duel_players @a[tag=duel_p1]
execute as @e[tag=duel,type=armor_stand] at @s if score #duel duel_partie_va_commencer matches 1 run team join duel_players @a[tag=duel_p2]

#Spawnpoint
execute as @e[tag=duel,type=armor_stand] at @s if score #duel duel_partie_va_commencer matches 1 run spawnpoint @a[team=duel_players] ~-25 ~1 ~26

#Start de la fonction main
execute as @e[tag=duel,type=armor_stand] at @s if score #duel duel_partie_va_commencer matches 1 run function world_event:duel/main