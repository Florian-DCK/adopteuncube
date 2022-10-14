#Tuto question 2
#scoreboard objectives add tutoq2 dummy
#/give crizyx minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"|--------------|","clickEvent":{"action":"run_command","value":"function tutorial:tutoq2"},"color":"gray"}',Text2:'{"text":"Question","color":"white"}',Text3:'{"text":"#2","color":"white"}',Text4:'{"text":"|--------------|","color":"gray"}'},display:{Name:'{"text":"TutoQuestion#2"}'}}

#tellraw @s[scores={tutoq2=!0..}] {"text":"Question 1 : blabla"} (vielle façon, ne fonctionne plus)
#scoreboard players set @s[scores={tutoq2=>1}] tutoq2 0 (ancienne façon, ne fonctionne plus)

#Pour ceux n'ayant pas été initialisé
execute as @s unless score @s tutoq2 matches 0.. run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" Question 2 : Ce serveur est-il du type Survival UltraHardCore ou bien UHC Run ?","color":"dark_aqua"}]
#Pour ceux initialisé
execute as @s if score @s tutoq2 matches 0.. run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" Question 2 : Ce serveur est-il du type Survival UltraHardCore ou bien UHC Run ?","color":"dark_aqua"}]
tellraw @s [{"text":"(Pour choisir votre réponse cliquez plusieurs fois sur la pancarte)","color":"blue"},{"text":"\n"}]

#Initialise avec 0 et vote avec 1 (oui) ou 2 (non)
execute as @s if score @s tutoq2 matches 0..3 run scoreboard players add @s tutoq2 1
scoreboard players add @s tutoq2 0

#Reset avec me 3 pour repasser à 1 (oui)
execute as @s if score @s tutoq2 matches 3..3 run scoreboard players set @s tutoq2 1

tellraw @s[scores={tutoq2=1}] ["",{"text":"[Réponse]","color":"aqua"},{"text":" Survival UltraHardCore","color":"gold"},{"text":".","color":"dark_aqua"},{"text":"\n"}]
tellraw @s[scores={tutoq2=2}] ["",{"text":"[Réponse]","color":"aqua"},{"text":" UHC Run","color":"gold"},{"text":".","color":"dark_aqua"},{"text":"\n"}]
#Le score à 4 est utilisé pour ceux ayant déjà validé la question
tellraw @s[scores={tutoq2=4..}] ["",{"text":"[Info]","color":"aqua"},{"text":" Vous avez déjà validé cette question. ","color":"dark_aqua"},{"text":"\n"}]