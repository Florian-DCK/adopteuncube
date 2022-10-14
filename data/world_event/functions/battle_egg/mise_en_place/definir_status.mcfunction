kill @e[type=armor_stand,tag=battle_egg_status]
summon leash_knot ~ ~ ~ {Tags:["status_placement"]}
execute as @e[type=leash_knot,distance=..5,tag=status_placement] at @s run summon armor_stand ~ ~2 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["battle_egg_status"],CustomName:'{"text":"Status de Battle Egg","color":"gold"}',CustomNameVisible:1b}
execute if entity @e[type=leash_knot,tag=status_placement,distance=..2] run tellraw @p ["",{"text":"Débug :","bold":true,"underlined":true,"color":"red"},{"text":" Nouvel emplacement pour le status du battle egg placé","color":"red"}]
kill @e[type=leash_knot,distance=..5,tag=status_placement]