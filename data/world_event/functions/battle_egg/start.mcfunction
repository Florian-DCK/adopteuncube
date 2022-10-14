#Tp les joueurs
execute as @e[tag=battle_egg] at @s run tp @a[tag=BEbleu,distance=..500] ~ ~ ~-2
execute as @e[tag=battle_egg] at @s run tp @a[tag=BErouge,distance=..500] ~ ~ ~2

#Mise des joueurs dans la bonne team
team add battle_egg
team modify battle_egg friendlyFire false
team modify battle_egg deathMessageVisibility hideForOtherTeams
team join battle_egg @a[tag=BEbleu]
team join battle_egg @a[tag=BErouge]

#Heal des joueurs
effect give @a[tag=BEbleu] regeneration 3 100 true
effect give @a[tag=BErouge] regeneration 3 100 true

#Mise en place des spawnpoints
execute as @e[tag=battle_egg] at @s run spawnpoint @a[tag=BEbleu] ~ ~ ~-2
execute as @e[tag=battle_egg] at @s run spawnpoint @a[tag=BErouge] ~ ~ ~2

#Give du stuff de départ
execute as @e[tag=battle_egg] at @s run give @a[tag=BEbleu,distance=..500] stone_sword{Unbreakable:1b} 1
execute as @e[tag=battle_egg] at @s run give @a[tag=BEbleu,distance=..500] carrot 1 
execute as @e[tag=battle_egg] at @s run give @a[tag=BEbleu,distance=..500] bone_meal 64 

execute as @e[tag=battle_egg] at @s run give @a[tag=BErouge,distance=..500] stone_sword{Unbreakable:1b} 1
execute as @e[tag=battle_egg] at @s run give @a[tag=BErouge,distance=..500] carrot 1 
execute as @e[tag=battle_egg] at @s run give @a[tag=BErouge,distance=..500] bone_meal 64 

#Give des armures
execute as @e[tag=battle_egg] at @s run item replace entity @a[distance=..500,tag=BEbleu] armor.head with leather_helmet{display:{color:201727},Unbreakable:1b} 1
execute as @e[tag=battle_egg] at @s run item replace entity @a[distance=..500,tag=BEbleu] armor.chest with leather_chestplate{display:{color:201727},Unbreakable:1b} 1
execute as @e[tag=battle_egg] at @s run item replace entity @a[distance=..500,tag=BEbleu] armor.legs with leather_leggings{display:{color:201727},Unbreakable:1b} 1
execute as @e[tag=battle_egg] at @s run item replace entity @a[distance=..500,tag=BEbleu] armor.feet with leather_boots{display:{color:201727},Unbreakable:1b} 1

execute as @e[tag=battle_egg] at @s run item replace entity @a[distance=..500,tag=BErouge] armor.head with leather_helmet{display:{color:16711680},Unbreakable:1b} 1
execute as @e[tag=battle_egg] at @s run item replace entity @a[distance=..500,tag=BErouge] armor.chest with leather_chestplate{display:{color:16711680},Unbreakable:1b} 1
execute as @e[tag=battle_egg] at @s run item replace entity @a[distance=..500,tag=BErouge] armor.legs with leather_leggings{display:{color:16711680},Unbreakable:1b} 1
execute as @e[tag=battle_egg] at @s run item replace entity @a[distance=..500,tag=BErouge] armor.feet with leather_boots{display:{color:16711680},Unbreakable:1b} 1

function world_event:battle_egg/jeu_en_cours/main
function world_event:battle_egg/securite/antibreak