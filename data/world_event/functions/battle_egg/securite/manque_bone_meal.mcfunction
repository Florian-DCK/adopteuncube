tag @s add manque_bone_meal
execute if entity @s[tag=manque_bone_meal] run tellraw @s {"text":"Vous êtes tombé à court de bone meal, attendez 20 secondes pour en récupérer une","bold":true,"color":"red"}
execute if entity @s[tag=manque_bone_meal] run schedule function world_event:battle_egg/securite/give_bone_meal 20s