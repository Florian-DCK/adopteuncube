#Tuto question 4
#scoreboard objectives add tutoq4 dummy
#/give crizyx minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"|--------------|","clickEvent":{"action":"run_command","value":"function tutorial:tutoq4"},"color":"gray"}',Text2:'{"text":"Question","color":"white"}',Text3:'{"text":"#4","color":"white"}',Text4:'{"text":"|--------------|","color":"gray"}'},display:{Name:'{"text":"TutoQuestion#4"}'}}

#tellraw @s[scores={tutoq4=!0..}] {"text":"Question 1 : blabla"} (vielle façon, ne fonctionne plus)
#scoreboard players set @s[scores={tutoq4=>1}] tutoq4 0 (ancienne façon, ne fonctionne plus)

#Pour ceux n'ayant pas été initialisé
execute as @s unless score @s tutoq4 matches 0.. run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" Question 4 : Qu'en est-il du PVP sur le serveur ?","color":"dark_aqua"}]
#Pour ceux initialisé
execute as @s if score @s tutoq4 matches 0.. run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" Question 4 : Qu'en est-il du PVP sur le serveur ?","color":"dark_aqua"}]
tellraw @s [{"text":"(Pour choisir votre réponse cliquez plusieurs fois sur la pancarte)","color":"blue"},{"text":"\n"}]

#Initialise avec 0 et vote avec 1 (oui) ou 2 (non)
execute as @s if score @s tutoq4 matches 0..3 run scoreboard players add @s tutoq4 1
scoreboard players add @s tutoq4 0

#Reset avec me 3 pour repasser à 1 (oui)
execute as @s if score @s tutoq4 matches 3..3 run scoreboard players set @s tutoq4 1

tellraw @s[scores={tutoq4=1}] ["",{"text":"[Réponse]","color":"aqua"},{"text":" C'est du PVP sauvage","color":"gold"},{"text":".","color":"dark_aqua"},{"text":"\n"}]
tellraw @s[scores={tutoq4=2}] ["",{"text":"[Réponse]","color":"aqua"},{"text":" C'est du PVP amical","color":"gold"},{"text":".","color":"dark_aqua"},{"text":"\n"}]
#Le score à 4 est utilisé pour ceux ayant déjà validé la question
tellraw @s[scores={tutoq4=4..}] ["",{"text":"[Info]","color":"aqua"},{"text":" Vous avez déjà validé cette question. ","color":"dark_aqua"},{"text":"\n"}]