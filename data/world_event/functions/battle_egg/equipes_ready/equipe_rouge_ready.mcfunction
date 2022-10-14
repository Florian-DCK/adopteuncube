#modifie la valeur du scoreboard des rouges et modifie le command bloc sous la plateforme
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard players set #battle_egg battle_egg_equipe_rouge_ready 1
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~ ~ ~ minecraft:command_block[conditional=false,facing=up]{Command:"function world_event:battle_egg/equipes_ready/equipe_rouge_pas_ready",CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b} destroy
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run tellraw @a[distance=..20] {"text":"Les rouges sont prêts à lancer le jeu !","bold":true,"underlined":true,"color":"gold"}

#pose des barrières
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run fill ~3 ~2 ~3 ~-3 ~2 ~-3 red_stained_glass replace structure_void
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~3 ~3 ~2 minecraft:barrier
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~3 ~3 ~-2 minecraft:barrier
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-3 ~3 ~2 minecraft:barrier
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-3 ~3 ~-2 minecraft:barrier
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~2 ~3 ~3 minecraft:barrier
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-2 ~3 ~3 minecraft:barrier
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~2 ~3 ~-3 minecraft:barrier
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-2 ~3 ~-3 minecraft:barrier

#Si une partie est déjà en cours
execute if score #battle_egg battle_egg_jeu_en_cours matches 1 run tellraw @a[distance=..20] {"text":"Une partie est déjà en cours ! Attends ton tour ...","bold":true,"underlined":true,"color":"red"}
