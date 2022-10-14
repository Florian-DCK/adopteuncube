#Ajouter tous les scoreboards du jeu
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard objectives add battle_egg_equipe_bleu_ready dummy
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard objectives add battle_egg_equipe_rouge_ready dummy
scoreboard objectives add battle_egg_partie_va_commencer dummy
scoreboard objectives add batle_egg_break dummy

#Set un chiffre à un scoreboard
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard players set #battle_egg battle_egg_jeu_en_cours 0
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run tellraw @a[distance=..20] {"text":"Battle Egg est maintenant allumé !","bold":true,"underlined":true,"color":"gold"}
execute if score #battle_egg battle_egg_jeu_en_cours matches 0 run scoreboard players set #battle_egg battle_egg_on 1

#Si une partie est déjà en cours
execute if score #battle_egg battle_egg_jeu_en_cours matches 1 run tellraw @a[distance=..20] {"text":"Une partie est déjà en cours ! Attends ton tour ...","bold":true,"underlined":true,"color":"red"}

#Mise à jour du status de battle_egg
data merge entity @e[type=armor_stand,limit=1,sort=nearest,tag=battle_egg_status] {CustomNameVisible:1b,CustomName:'{"text":"Le battle egg est on","color":"dark_green","bold":true}'}

#Si une partie est en cours
execute if score #duel duel_partie_va_commencer matches 1 run tellraw @a[distance=..20] {"text":"Une partie est déjà en cours ! Attends ton tour ...","bold":true,"underlined":true,"color":"red"}
