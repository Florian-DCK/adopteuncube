#Panneau des validations
#/give crizyx minecraft:dark_oak_sign{BlockEntityTag:{Text1:'[{"text":"","clickEvent":{"action":"run_command","value":"function tutorial:tutovalidate"}},{"text":"|----[","color":"gray"},{"text":"Partir","color":"white"},{"text":"]----|","color":"gray"}]',Text2:'{"text":"Valider le","color":"green"}',Text3:'{"text":"questionnaire","color":"green"}',Text4:'{"text":"|--------------|","color":"gray"}'},display:{Name:'{"text":"TutoValidate"}'}}

#Question 1
execute as @s unless score @s tutoq1 matches 0.. run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" Vous n'avez pas encore répondu à la question 1.","color":"dark_aqua"},{"text":"\n"}]
execute as @s if score @s tutoq1 matches 1 run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" La réponse à la question 1 est fausse, veuillez réessayer.","color":"dark_aqua"},{"text":"\n"}]
execute as @s if score @s tutoq1 matches 2 run scoreboard players set @s tutoq1 4
execute as @s if score @s tutoq1 matches 4 run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" La question 1 est validée.","color":"dark_aqua"},{"text":"\n"}]

#Question 2
execute as @s unless score @s tutoq2 matches 0.. run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" Vous n'avez pas encore répondu à la question 2.","color":"dark_aqua"},{"text":"\n"}]
execute as @s if score @s tutoq2 matches 2 run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" La réponse à la question 2 est fausse, veuillez réessayer.","color":"dark_aqua"},{"text":"\n"}]
execute as @s if score @s tutoq2 matches 1 run scoreboard players set @s tutoq2 4
execute as @s if score @s tutoq2 matches 4 run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" La question 2 est validée.","color":"dark_aqua"},{"text":"\n"}]

#Question 3
execute as @s unless score @s tutoq3 matches 0.. run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" Vous n'avez pas encore répondu à la question 3.","color":"dark_aqua"},{"text":"\n"}]
execute as @s if score @s tutoq3 matches 1 run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" La réponse à la question 3 est fausse, veuillez réessayer.","color":"dark_aqua"},{"text":"\n"}]
execute as @s if score @s tutoq3 matches 2 run scoreboard players set @s tutoq3 4
execute as @s if score @s tutoq3 matches 4 run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" La question 3 est validée.","color":"dark_aqua"},{"text":"\n"}]

#Question 4
execute as @s unless score @s tutoq4 matches 0.. run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" Vous n'avez pas encore répondu à la question 4.","color":"dark_aqua"},{"text":"\n"}]
execute as @s if score @s tutoq4 matches 1 run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" La réponse à la question 4 est fausse, veuillez réessayer.","color":"dark_aqua"},{"text":"\n"}]
execute as @s if score @s tutoq4 matches 2 run scoreboard players set @s tutoq4 4
execute as @s if score @s tutoq4 matches 4 run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" La question 4 est validée.","color":"dark_aqua"},{"text":"\n"}]

#Question 5
execute as @s unless score @s tutoq5 matches 0.. run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" Vous n'avez pas encore répondu à la question 5.","color":"dark_aqua"},{"text":"\n"}]
execute as @s if score @s tutoq5 matches 2 run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" La réponse à la question 5 est fausse, veuillez réessayer.","color":"dark_aqua"},{"text":"\n"}]
execute as @s if score @s tutoq5 matches 1 run scoreboard players set @s tutoq5 4
execute as @s if score @s tutoq5 matches 4 run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" La question 5 est validée.","color":"dark_aqua"},{"text":"\n"}]

#Initialisation finale et téléportation
execute as @s[scores={tutoq1=4,tutoq2=4,tutoq3=4,tutoq4=4,tutoq5=4}] run tellraw @s [{"text":"[Info]","color":"aqua"},{"text":" Félicitations, le questionnaire de visite est validé. Vous pouvez désormais quitter l'île en cliquant à nouveau sur la pancarte.","color":"dark_aqua"},{"text":"\n"}]
scoreboard players set @s[scores={tutoq1=5}] tutoq1 6
# Fin de boucle et Anti-spam
scoreboard players set @s[scores={tutoq1=4..5,tutoq2=4..5,tutoq3=4..5,tutoq4=4..5,tutoq5=4..5}] tutoq1 5
scoreboard players set @s[scores={tutoq1=4..5,tutoq2=4..5,tutoq3=4..5,tutoq4=4..5,tutoq5=4..5}] tutoq2 5
scoreboard players set @s[scores={tutoq1=4..5,tutoq2=4..5,tutoq3=4..5,tutoq4=4..5,tutoq5=4..5}] tutoq3 5
scoreboard players set @s[scores={tutoq1=4..5,tutoq2=4..5,tutoq3=4..5,tutoq4=4..5,tutoq5=4..5}] tutoq4 5
scoreboard players set @s[scores={tutoq1=4..5,tutoq2=4..5,tutoq3=4..5,tutoq4=4..5,tutoq5=4..5}] tutoq5 5
tellraw @s[scores={tutoq1=6}] ["",{"text":"[Info]","color":"aqua"},{"text":" Vous êtes sur le dirigeable principal, c'est ici que tous les mondes se lient.","color":"dark_aqua"}]
teleport @s[scores={tutoq1=6}] 91.5 81 -81.5 90 0