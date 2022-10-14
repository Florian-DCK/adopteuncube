execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard players set #battle_egg battle_egg_equipe_rouge_ready 0
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~ ~ ~ minecraft:command_block[conditional=false,facing=up]{Command:"function world_event:battle_egg/equipes_ready/equipe_rouge_ready",CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b} destroy
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run tellraw @a[distance=..20] {"text":"Les rouges ont changés d'avis ...","bold":true,"underlined":true,"color":"gold"}
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard players set #battle_egg battle_egg_partie_va_commencer 0

#retirer les barrières
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run fill ~3 ~2 ~3 ~-3 ~2 ~-3 structure_void replace red_stained_glass
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~3 ~3 ~2 minecraft:air
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~3 ~3 ~-2 minecraft:air
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-3 ~3 ~2 minecraft:air
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-3 ~3 ~-2 minecraft:air
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~2 ~3 ~3 minecraft:air
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-2 ~3 ~3 minecraft:air
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~2 ~3 ~-3 minecraft:air
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run setblock ~-2 ~3 ~-3 minecraft:air

#Si une partie est déjà en cours
execute if score #battle_egg battle_egg_jeu_en_cours matches 1 run tellraw @a[distance=..20] {"text":"Une partie est déjà en cours ! Attends ton tour ...","bold":true,"underlined":true,"color":"red"}
