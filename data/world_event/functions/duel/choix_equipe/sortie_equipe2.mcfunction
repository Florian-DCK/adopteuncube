#Débloquage du TP
execute as @e[tag=duel,type=armor_stand] at @s run setblock ~-30 ~1 ~23 air
execute as @e[tag=duel,type=armor_stand] at @s run setblock ~-30 ~2 ~23 air

#Retirer le tag, les items et TP le joueur
playsound minecraft:block.note_block.chime master @a[tag=duel_p2] ~ ~ ~ 100 0.5
title @a[tag=duel_p2] title {"text":"\u2694 Tu es sorti de l'arène ! \u2694","color":"gold"}
execute as @e[tag=duel,type=armor_stand] at @s run tp @a[tag=duel_p2] ~-25 ~1 ~25 90 0.45
clear @a[tag=duel_p2]
tag @a[tag=duel_p2] remove duel_p2

#Retirer 1 au nombre de joueurs
execute unless score #duel duel_joueurs matches 0 run scoreboard players remove #duel duel_joueurs 1

#remettre à 0 le nombre le compteur
scoreboard players set #duel duel_partie_va_commencer 0

#remettre le nombre de joueur à 1
execute if score #duel duel_joueurs matches -1 run scoreboard players set #duel duel_joueurs 1
execute if score #duel duel_joueurs matches -2 run scoreboard players set #duel duel_joueurs 1