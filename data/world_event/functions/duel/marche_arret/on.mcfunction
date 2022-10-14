#mise en place des scoreboards
execute unless score #duel duel_partie_va_commencer matches 1 run scoreboard objectives add duel_joueurs dummy
execute unless score #duel duel_partie_va_commencer matches 1 run scoreboard objectives add duel_partie_va_commencer dummy
execute unless score #duel duel_partie_va_commencer matches 1 run scoreboard objectives add duel_perdant deathCount

#Changement des panneaux ON/OFF
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-21 ~2 ~25 minecraft:birch_wall_sign[facing=west,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"function world_event:duel/marche_arret/off"},"text":""}',Text2:'{"extra":[{"color":"gold","text":"Le jeu est "},{"color":"green","text":"ON"}],"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-21 ~2 ~26 air

#Création et configuration des teams
execute unless score #duel duel_partie_va_commencer matches 1 run team add duel_players
execute unless score #duel duel_partie_va_commencer matches 1 run team modify duel_players deathMessageVisibility hideForOtherTeams
execute unless score #duel duel_partie_va_commencer matches 1 run team modify duel_players friendlyFire true

#Remettre le mur de verre
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run fill ~0 ~16 ~-15 ~0 ~1 ~15 white_stained_glass

#Si une partie est en cours
execute if score #duel duel_partie_va_commencer matches 1 run tellraw @a[distance=..20] {"text":"Une partie est déjà en cours ! Attends ton tour ...","bold":true,"underlined":true,"color":"red"}

#Débloquage du TP IN
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-30 ~1 ~28 air
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-30 ~2 ~28 air
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-30 ~1 ~23 air
execute as @e[tag=duel,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-30 ~2 ~23 air

#DéBloquage des tps OUT
execute as @e[tag=duel_p1_out,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-1 ~ ~ air
execute as @e[tag=duel_p1_out,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~-1 ~1 ~ air
execute as @e[tag=duel_p2_out,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~1 ~ ~ air
execute as @e[tag=duel_p2_out,type=armor_stand] at @s unless score #duel duel_partie_va_commencer matches 1 run setblock ~1 ~1 ~ air