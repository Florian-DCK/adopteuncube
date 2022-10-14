#Retirer tous les scoreboard du jeu
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard objectives remove battle_egg_equipe_bleu_ready
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard objectives remove battle_egg_equipe_rouge_ready
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard objectives remove battle_egg_partie_va_commencer
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard objectives remove batle_egg_morts_joueur 
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard objectives remove battle_egg_morts
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard objectives remove battle_egg_points


execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run tellraw @a[distance=..20] {"text":"Battle EGG s'est éteint","bold":true,"underlined":true,"color":"gold"}

#Préciser que le jeu est maintenant off
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard players set #battle_egg battle_egg_on 0

#Si une partie est déjà en cours
execute if score #battle_egg battle_egg_jeu_en_cours matches 1 run tellraw @a[distance=..20] {"text":"Une partie est déjà en cours ! Attends ton tour ...","bold":true,"underlined":true,"color":"red"}

#Retirer les tags des gens
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run tag @a remove BEbleu
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run tag @a remove BEbleu

#Reset zone bleu
execute as @e[tag=battle_egg_bleu] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~ ~-4 ~ minecraft:command_block[conditional=false,facing=up]{Command: "function world_event:battle_egg/equipes_ready/equipe_bleu_ready", CustomName: '{"text":"@"}', SuccessCount: 0, TrackOutput: 1b, UpdateLastExecution: 1b, auto: 0b, conditionMet: 0b, powered: 0b} destroy

execute as @e[tag=battle_egg_bleu] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run fill ~3 ~-2 ~3 ~-3 ~-2 ~-3 structure_void replace blue_stained_glass
execute as @e[tag=battle_egg_bleu] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~3 ~-1 ~2 minecraft:air
execute as @e[tag=battle_egg_bleu] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~3 ~-1 ~-2 minecraft:air
execute as @e[tag=battle_egg_bleu] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-3 ~-1 ~2 minecraft:air
execute as @e[tag=battle_egg_bleu] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-3 ~-1 ~-2 minecraft:air
execute as @e[tag=battle_egg_bleu] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~2 ~-1 ~3 minecraft:air
execute as @e[tag=battle_egg_bleu] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-2 ~-1 ~3 minecraft:air
execute as @e[tag=battle_egg_bleu] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~2 ~-1 ~-3 minecraft:air
execute as @e[tag=battle_egg_bleu] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-2 ~-1 ~-3 minecraft:air

#Reset zone rouge
execute as @e[tag=battle_egg_rouge] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~ ~-4 ~ minecraft:command_block[conditional=false,facing=up]{Command: "function world_event:battle_egg/equipes_ready/equipe_rouge_ready", CustomName: '{"text":"@"}', SuccessCount: 0, TrackOutput: 1b, UpdateLastExecution: 1b, auto: 0b, conditionMet: 0b, powered: 0b} destroy

execute as @e[tag=battle_egg_rouge] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run fill ~3 ~-2 ~3 ~-3 ~2 ~-3 structure_void replace red_stained_glass
execute as @e[tag=battle_egg_rouge] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~3 ~-1 ~2 minecraft:air
execute as @e[tag=battle_egg_rouge] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~3 ~-1 ~-2 minecraft:air
execute as @e[tag=battle_egg_rouge] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-3 ~-1 ~2 minecraft:air
execute as @e[tag=battle_egg_rouge] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-3 ~-1 ~-2 minecraft:air
execute as @e[tag=battle_egg_rouge] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~2 ~-1 ~3 minecraft:air
execute as @e[tag=battle_egg_rouge] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-2 ~-1 ~3 minecraft:air
execute as @e[tag=battle_egg_rouge] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~2 ~-1 ~-3 minecraft:air
execute as @e[tag=battle_egg_rouge] at @s if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-2 ~-1 ~-3 minecraft:air

#Reset des spawnpoints
execute as @e[tag=battle_egg_rouge] at @s run spawnpoint @a[tag=BErouge] ~ ~ ~
execute as @e[tag=battle_egg_bleu] at @s run spawnpoint @a[tag=BEbleu] ~ ~ ~ 

#Kill des items et des mobs
execute as @e[tag=battle_egg] at @s run kill @e[tag=BEmobs,distance=..50]
execute as @e[tag=battle_egg] at @s run kill @e[type=item,distance=..50]

#Mise à jour du status de battle_egg
data merge entity @e[type=armor_stand,limit=1,sort=nearest,tag=battle_egg_status] {CustomNameVisible:1b,CustomName:'{"text":"Le battle egg est off","color":"dark_red","bold":true}'}

#Clear effects
execute as @e[tag=battle_egg,distance=..100] run effect clear @a

#Reset de la zone de jeu
execute as @e[type=minecraft:armor_stand,tag=battle_egg] at @s run clone ~-29 ~-30 ~-13 ~14 ~-50 ~13 ~-29 ~-10 ~-13
