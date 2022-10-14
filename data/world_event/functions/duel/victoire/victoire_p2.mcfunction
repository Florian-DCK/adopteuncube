tellraw @a[distance=..100] ["",{"text":"Victoire du joueur 2","color":"gold"},{"text":" !","color":"gold"}]

#Son aux joueurs
    #Gagnant
    playsound entity.firework_rocket.launch master @a[tag=duel_p2] ~ ~ ~ 100 0.5

    #Perdant
    playsound block.nether_bricks.break master @a[tag=duel_p1] ~ ~ ~ 100 0.5

#Tp back les joueurs
tp @a[team=duel_players] ~-25 ~1 ~26

#Clear et heal
clear @a[team=duel_players]
effect give @a[team=duel_players] regeneration 3 10 true

#Retirer les tags
tag @a[tag=duel_p1] remove duel_p1
tag @a[tag=duel_p2] remove duel_p2

#Reset
scoreboard players set #duel duel_partie_va_commencer 0
function world_event:duel/marche_arret/off