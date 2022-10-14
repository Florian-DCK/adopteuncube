#region BATTLE EGG

    #Ajout des scoreboards
    scoreboard objectives add battle_egg_jeu_en_cours dummy
    scoreboard objectives add battle_egg_on dummy
    scoreboard players set #battle_egg battle_egg_on 0


    #Au cas où un connard aurait laissé une partie en cours ou si le jeu est encore allumé au reboot du serv
    scoreboard players set #battle_egg battle_egg_jeu_en_cours 0
    function world_event:battle_egg/marche_arret/off

#endregion BATTLEEGG

#region DUEL
    
    scoreboard players set #duel duel_partie_va_commencer 0
    #Si le jeu est encore allumé au reboot du serv
    function world_event:duel/marche_arret/off

    #Si le scoreboard n'ets pas présent
    scoreboard objectives add duel_partie_va_commencer dummy
    scoreboard players set #duel duel_partie_va_commencer 0
    
#endregion DUEL