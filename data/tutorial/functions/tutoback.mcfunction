#Retour île tutoriel
#give crizyx minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"|--------------|","clickEvent":{"action":"run_command","value":"function tutorial:tutoback"},"color":"gray"}',Text2:'{"text":"Retour sur","color":"white"}',Text3:'{"text":"l\'Île Tuto","color":"white"}',Text4:'{"text":"|--------------|","color":"gray"}'},display:{Name:'{"text":"TutoBack"}'}}

tellraw @s ["",{"text":"[Info]","color":"aqua"},{"text":" Vous êtes de retour sur l'île tutoriel.","color":"dark_aqua"}]
tp @s -96.5 72 -92.5 0 0