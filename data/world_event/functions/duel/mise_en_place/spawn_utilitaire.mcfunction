#kill des anciens armor stands
kill @e[tag=duel_p1_out,type=armor_stand]
kill @e[tag=duel_p2_out,type=armor_stand]

#Panneaux pour rentrer dans le jeu en tant que joueur
execute as @e[tag=duel,type=armor_stand] at @s run setblock ~-31 ~2 ~28 minecraft:birch_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"color":"gold","clickEvent":{"action":"run_command","value":"function world_event:duel/choix_equipe/choix_equipe1"},"text":"Cliquez ici"}',Text2:'{"color":"gold","text":"pour devenir le"}',Text3:'{"color":"dark_aqua","text":"joueur 1"}',Text4:'{"text":""}'}
execute as @e[tag=duel,type=armor_stand] at @s run setblock ~-31 ~2 ~23 minecraft:birch_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"color":"gold","clickEvent":{"action":"run_command","value":"function world_event:duel/choix_equipe/choix_equipe2"},"text":"Cliquez ici"}',Text2:'{"color":"gold","text":"pour devenir le"}',Text3:'{"color":"red","text":"joueur 2"}',Text4:'{"text":""}'}

#Armor stands pour sortir du jeu avant que la partie ne commence
execute as @e[tag=duel,type=armor_stand] at @s run summon armor_stand ~-31 ~1 ~0 {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["duel_p2_out"]}
execute as @e[tag=duel,type=armor_stand] at @s run summon armor_stand ~31 ~1 ~0 {NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["duel_p1_out"]}

#Mise en place du panneau OFF
execute as @e[tag=duel,type=armor_stand] at @s run setblock ~-21 ~2 ~25 minecraft:birch_wall_sign[facing=west,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"function world_event:duel/marche_arret/off"},"text":""}',Text2:'{"extra":[{"color":"gold","text":"Le jeu est "},{"color":"green","text":"ON"}],"text":""}',Text3:'{"text":""}',Text4:'{"text":""}'}