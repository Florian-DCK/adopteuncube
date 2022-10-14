execute as @e[tag=battle_egg_bleu] at @s run tellraw @a[distance=3.8..,tag=BEbleu] {"text":"Vous n'êtes plus dans aucune équipe","bold":true,"underlined":true,"color":"gold"}
execute as @e[tag=battle_egg_bleu] at @s run tag @a[distance=3.8..,tag=BEbleu] remove BEbleu
execute as @e[tag=battle_egg_rouge] at @s run tellraw @a[distance=3.8..,tag=BErouge] {"text":"Vous n'êtes plus dans aucune équipe","bold":true,"underlined":true,"color":"gold"}
execute as @e[tag=battle_egg_rouge] at @s run tag @a[distance=3.8..,tag=BErouge] remove BErouge