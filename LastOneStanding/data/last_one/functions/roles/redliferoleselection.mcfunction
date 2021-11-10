#roles correspond with a number
# 1 = zippy
# 2 = zog
# 3 = berserker

tellraw @a {"text": "red life role"}

#randomizer
execute at @s if score @s RoleRedLife matches 1 run summon armor_stand ~ ~ ~ {Tags:["RoleZippy","Role"],Invisible:1b,Marker:1b}
execute at @s if score @s RoleRedLife matches 1 run summon armor_stand ~ ~ ~ {Tags:["RoleZog","Role"],Invisible:1b,Marker:1b}
execute at @s if score @s RoleRedLife matches 1 run summon armor_stand ~ ~ ~ {Tags:["RoleBerserker","Role"],Invisible:1b,Marker:1b}

scoreboard players set @e[type=armor_stand,tag=RoleZippy] Role 1
scoreboard players set @e[type=armor_stand,tag=RoleZog] Role 2
scoreboard players set @e[type=armor_stand,tag=RoleBerserker] Role 3

execute as @s run scoreboard players operation @s Role = @e[tag=Role,sort=random,limit=1] Role

#tell role
title @a times 20 60 20

execute if score @s Role matches 1 run title @s title {"text": "Zippy", "color": "white"}
execute if score @s Role matches 2 run title @s title {"text": "Zog", "color": "white"}
execute if score @s Role matches 3 run title @s title {"text": "The Berserker", "color": "white"}