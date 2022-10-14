#region BATTLE EGG

    #détection des joueurs dans les équipes
    execute as @e[tag=battle_egg_bleu] at @s if entity @a[limit=1,sort=nearest,distance=..3.5,tag=!BEbleu,gamemode=!spectator] if score #battle_egg battle_egg_jeu_en_cours matches 0 if score #battle_egg battle_egg_on matches 1 run function world_event:battle_egg/choix_equipe/bleu
    execute as @e[tag=battle_egg_rouge] at @s if entity @a[limit=1,sort=nearest,distance=..3.5,tag=!BErouge,gamemode=!spectator] if score #battle_egg battle_egg_jeu_en_cours matches 0 if score #battle_egg battle_egg_on matches 1 run function world_event:battle_egg/choix_equipe/rouge

    #détection des joueurs qui quittent les "équipes"
    execute as @e[tag=battle_egg_bleu] at @s if entity @a[limit=1,sort=furthest,distance=3.6..,tag=BEbleu] if score #battle_egg battle_egg_jeu_en_cours matches 0 if score #battle_egg battle_egg_on matches 1 run function world_event:battle_egg/choix_equipe/pas_equipe
    execute as @e[tag=battle_egg_rouge] at @s if entity @a[limit=1,sort=furthest,distance=3.6..,tag=BErouge] if score #battle_egg battle_egg_jeu_en_cours matches 0 if score #battle_egg battle_egg_on matches 1 run function world_event:battle_egg/choix_equipe/pas_equipe

    #détection si les deux équipes sont prêtes
    execute as @e[tag=battle_egg] at @s if score #battle_egg battle_egg_equipe_bleu_ready = #battle_egg battle_egg_equipe_rouge_ready if score #battle_egg battle_egg_jeu_en_cours matches 0 if score #battle_egg battle_egg_on matches 1 run function world_event:battle_egg/compteur/3

#endregion BATTLE EGG

#region DUEL

    #Détection de sortie des équipes
    execute as @e[tag=duel_p1_out,type=armor_stand] at @s if entity @a[tag=duel_p1,distance=..1] run function world_event:duel/choix_equipe/sortie_equipe1
    execute as @e[tag=duel_p2_out,type=armor_stand] at @s if entity @a[tag=duel_p2,distance=..1] run function world_event:duel/choix_equipe/sortie_equipe2

    #Détection si 2 joueurs sont présents
    execute as @e[tag=duel,type=armor_stand] at @s if score #duel duel_joueurs matches 2 run function world_event:duel/compteur/3

    #Détection si un joueur meurt
    execute as @e[tag=duel,type=armor_stand] at @s if score @a[tag=duel_p1,limit=1,sort=nearest] duel_perdant matches 1 run function world_event:duel/victoire/victoire_p2
    execute as @e[tag=duel,type=armor_stand] at @s if score @a[tag=duel_p2,limit=1,sort=nearest] duel_perdant matches 1 run function world_event:duel/victoire/victoire_p1

#endregion DUEL