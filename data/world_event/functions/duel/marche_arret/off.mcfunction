#Retirer les scoreboards
execute unless score #duel duel_partie_va_commencer matches 1 run scoreboard objectives remove duel_joueurs
execute unless score #duel duel_partie_va_commencer matches 1 run scoreboard objectives remove duel_perdant

#Changement des panneaux ON/OFF
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-21 ~2 ~26 minecraft:birch_wall_sign[facing=west,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"function world_event:duel/marche_arret/on"},"text":""}',Text2:'{"extra":[{"color":"gold","text":"Le jeu est "},{"color":"red","text":"OFF"}],"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-21 ~2 ~25 air

#Désactivation des teams
execute unless score #duel duel_partie_va_commencer matches 1 run team join EVENTHUB @a[team=duel_players]
execute unless score #duel duel_partie_va_commencer matches 1 run team remove duel_players

#Remettre le mur de verre
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run fill ~0 ~16 ~-15 ~0 ~1 ~15 white_stained_glass

#TP des joueurs encore présent dans l'arène
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run tp @a[tag=duel_p1] ~-25 ~1 ~26
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run tp @a[tag=duel_p2] ~-25 ~1 ~26

#Clear les joueurs encore présnets
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run clear @a[tag=duel_p1]
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run clear @a[tag=duel_p2]

#Retirer les tags des joueurs encore présents
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run tag @a[tag=duel_p1] remove duel_p1
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run tag @a[tag=duel_p2] remove duel_p2

#Débloquage du TP IN
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-30 ~1 ~28 air
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-30 ~2 ~28 air
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-30 ~1 ~23 air
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-30 ~2 ~23 air

#Bloquage des tps OUT
execute as @e[tag=duel_p1_out,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-1 ~ ~ air
execute as @e[tag=duel_p1_out,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-1 ~1 ~ air
execute as @e[tag=duel_p2_out,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~1 ~ ~ air
execute as @e[tag=duel_p2_out,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~1 ~1 ~ air
