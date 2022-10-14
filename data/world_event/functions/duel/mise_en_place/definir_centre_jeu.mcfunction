summon leash_knot ~ ~ ~ {Tags:["duel_placement"]}
execute as @e[type=leash_knot,distance=..5,tag=duel_placement] at @s run summon armor_stand ~ ~-0.4 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["duel"]}
execute if entity @e[type=leash_knot,tag=duel_placement,distance=..2] run tellraw @p ["",{"text":"Débug :","bold":true,"underlined":true,"color":"red"},{"text":" Nouvel emplacement pour le Duel placé","color":"red"}]
kill @e[type=leash_knot,distance=..5,tag=duel_placement]