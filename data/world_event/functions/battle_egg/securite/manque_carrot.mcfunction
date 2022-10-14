tag @s add manque_carrot
execute if entity @s[tag=manque_carrot] run tellraw @s {"text":"Vous êtes tombé à court de carottes, attendez 20 secondes pour en récupérer une","bold":true,"color":"red"}
execute if entity @s[tag=manque_carrot] run schedule function world_event:battle_egg/securite/give_carrot 20s