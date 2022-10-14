#Kill les anciens villageois pour éviter le stack inutile
kill @e[type=villager,tag=BEvillager]

#Spawn Material Master pour les rouges
execute as @e[type=armor_stand,tag=battle_egg] at @s run summon villager ~-1 ~-1 ~5 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Rotation:[-180F,0F],Tags:["BEvillager"],CustomName:'{"text":"Material Master","color":"green","bold":true}',Attributes:[{Name:"generic.movement_speed",Base:0}],VillagerData:{level:99,profession:"minecraft:farmer",type:"minecraft:jungle"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:carrot",Count:10b},sell:{id:"minecraft:bone_meal",Count:64b}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:potato",Count:5b},sell:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:healing"}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:potato",Count:5b},sell:{id:"minecraft:arrow",Count:10b}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:bread",Count:3b},sell:{id:"minecraft:shield",Count:1b}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:bread",Count:5b},sell:{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:bread",Count:5b},sell:{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}}}]}}

#Spawn Material Master pour les bleus
execute as @e[type=armor_stand,tag=battle_egg] at @s run summon villager ~1 ~-1 ~-5 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Rotation:[0F,0F],Tags:["BEvillager"],CustomName:'{"text":"Material Master","color":"green","bold":true}',Attributes:[{Name:"generic.movement_speed",Base:0}],VillagerData:{level:99,profession:"minecraft:farmer",type:"minecraft:jungle"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:carrot",Count:10b},sell:{id:"minecraft:bone_meal",Count:64b}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:potato",Count:5b},sell:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:healing"}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:potato",Count:5b},sell:{id:"minecraft:arrow",Count:10b}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:bread",Count:3b},sell:{id:"minecraft:shield",Count:1b}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:bread",Count:5b},sell:{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:bread",Count:5b},sell:{id:"minecraft:iron_sword",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}}}]}}

#Spawn Egg Master pour les rouges
execute as @e[type=armor_stand,tag=battle_egg] at @s run summon villager ~2 ~-1 ~5 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Rotation:[-180F,0F],Tags:["BEvillager"],CustomName:'{"text":"Egg Master","color":"green","bold":true}',VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:jungle"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:carrot",Count:10b},sell:{id:"minecraft:zombie_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}]}}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:carrot",Count:15b},sell:{id:"minecraft:creeper_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}]}}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:potato",Count:15b},sell:{id:"minecraft:skeleton_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}]}}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:potato",Count:15b},sell:{id:"minecraft:witch_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"]}}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:bread",Count:10b},sell:{id:"minecraft:wither_skeleton_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"]}}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:bread",Count:15b},sell:{id:"minecraft:vindicator_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"]}}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:bread",Count:35b},sell:{id:"minecraft:cave_spider_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"]}}}}]}}

#Spawn Egg Master pour les bleus
execute as @e[type=armor_stand,tag=battle_egg] at @s run summon villager ~-2 ~-1 ~-5 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Rotation:[0F,0F],Tags:["BEvillager"],CustomName:'{"text":"Egg Master","color":"green","bold":true}',VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:jungle"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:carrot",Count:10b},sell:{id:"minecraft:zombie_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}]}}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:carrot",Count:15b},sell:{id:"minecraft:creeper_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}]}}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:potato",Count:15b},sell:{id:"minecraft:skeleton_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}]}}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:potato",Count:15b},sell:{id:"minecraft:witch_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"]}}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:bread",Count:10b},sell:{id:"minecraft:wither_skeleton_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"]}}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:bread",Count:15b},sell:{id:"minecraft:vindicator_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"]}}}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:bread",Count:35b},sell:{id:"minecraft:cave_spider_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["BEmobs"]}}}}]}}

#Spawn Seed Master pour les rouges
execute as @e[type=armor_stand,tag=battle_egg] at @s run summon villager ~3 ~-1 ~2 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Rotation:[90F,0F],Tags:["BEvillager"],CustomName:'{"text":"Seed Master","color":"green","bold":true}',VillagerData:{level:99,profession:"minecraft:farmer",type:"minecraft:taiga"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:carrot",Count:30b},sell:{id:"minecraft:potato",Count:1b}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:potato",Count:40b},sell:{id:"minecraft:wheat_seeds",Count:1b}}]}}

#Spawn Seed Master pour les bleus
execute as @e[type=armor_stand,tag=battle_egg] at @s run summon villager ~-3 ~-1 ~-2 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Rotation:[-90F,0F],Tags:["BEvillager"],CustomName:'{"text":"Seed Master","color":"green","bold":true}',VillagerData:{level:99,profession:"minecraft:farmer",type:"minecraft:taiga"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:carrot",Count:30b},sell:{id:"minecraft:potato",Count:1b}},{rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:potato",Count:40b},sell:{id:"minecraft:wheat_seeds",Count:1b}}]}}