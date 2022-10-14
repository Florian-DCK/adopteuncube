#affichage de la victoire des rouges
execute as @e[tag=battle_egg] at @s run title @a[distance=..100] subtitle {"text":"Bravo à eux !","color":"gold"}
execute as @e[tag=battle_egg] at @s run title @a[distance=..100] title ["",{"text":"Les ","color":"gold"},{"text":"rouges","color":"dark_red"},{"text":" ont gagnés !","color":"gold"}]
execute as @e[tag=battle_egg_bleu] at @s run tp @a[tag=BEbleu] ~ ~ ~
execute as @e[tag=battle_egg_rouge] at @s run tp @a[tag=BErouge] ~ ~ ~ 
scoreboard players set #battle_egg battle_egg_jeu_en_cours 0

#Reset des spawnpoints
execute as @e[tag=battle_egg_rouge] at @s run spawnpoint @a[tag=BErouge] ~ ~ ~
execute as @e[tag=battle_egg_bleu] at @s run spawnpoint @a[tag=BEbleu] ~ ~ ~ 

#Clear des inventaires + remise en adventure
clear @a[tag=BEbleu]
gamemode adventure @a[tag=BEbleu]
clear @a[tag=BErouge]
gamemode adventure @a[tag=BErouge]

#Retire et remet dans la bonne team
team remove battle_egg
team join EVENTHUB @a[tag=BErouge]
team join EVENTHUB @a[tag=BEbleu]

function world_event:battle_egg/marche_arret/off