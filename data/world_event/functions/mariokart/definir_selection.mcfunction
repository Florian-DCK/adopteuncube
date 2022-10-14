summon leash_knot ~ ~ ~ {Tags:["mariokart_selection_placement"]}
execute as @e[type=leash_knot,distance=..5,tag=mariokart_selection_placement] at @s run summon armor_stand ~ ~-0.4 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["mariokart_selection"]}
execute if entity @e[type=leash_knot,tag=mariokart_selection_placement,distance=..2] run tellraw @p ["",{"text":"Débug :","bold":true,"underlined":true,"color":"red"},{"text":" Nouvel emplacement pour la sélection mariokart placé","color":"red"}]
kill @e[type=leash_knot,distance=..5,tag=mariokart_selection_placement]

#Construction de la salle centrale
