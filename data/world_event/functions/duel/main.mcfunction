#Gestion des effets
effect give @a[team=duel_players] saturation 2 10 true
effect give @a[team=duel_players] night_vision 5 10 true

#Rappelle cette fonction si la partie n'est pas terminée
execute if score #duel duel_partie_va_commencer matches 1 run schedule function world_event:duel/main 1t