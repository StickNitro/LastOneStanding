#roles correspond with a number
#univeral roles are
# 1 = normal
# 2 = normal
# 3 = normal
# 4 = zippy
# 5 = zog

tellraw @s {"text": "get uni role"}
#randomizer
summon armor_stand ~ ~ ~ {Tags:["RoleNorm1","RoleUniversal"],Invisible:1b,Marker:1b}
summon armor_stand ~ ~ ~ {Tags:["RoleNorm2","RoleUniversal"],Invisible:1b,Marker:1b}
summon armor_stand ~ ~ ~ {Tags:["RoleNorm3","RoleUniversal"],Invisible:1b,Marker:1b}
summon armor_stand ~ ~ ~ {Tags:["RoleZippy","RoleUniversal"],Invisible:1b,Marker:1b}
summon armor_stand ~ ~ ~ {Tags:["RoleZog","RoleUniversal"],Invisible:1b,Marker:1b}

scoreboard players set @e[type=armor_stand,tag=RoleNorm1] RoleUniversal 1
scoreboard players set @e[type=armor_stand,tag=RoleNorm2] RoleUniversal 2
scoreboard players set @e[type=armor_stand,tag=RoleNorm3] RoleUniversal 3
scoreboard players set @e[type=armor_stand,tag=RoleZippy] RoleUniversal 4
scoreboard players set @e[type=armor_stand,tag=RoleZog] RoleUniversal 5

execute as @s run scoreboard players operation @s RoleUniversal = @e[tag=RoleUniversal,sort=random,limit=1] RoleUniversal

#tell role
title @a times 20 60 20

execute if score @s RoleUniversal matches 1 run title @s title {"text": "Normal", "color": "white"}
execute if score @s RoleUniversal matches 2 run title @s title {"text": "Normal", "color": "white"}
execute if score @s RoleUniversal matches 3 run title @s title {"text": "Normal", "color": "white"}
execute if score @s RoleUniversal matches 4 run title @s title {"text": "Zippy", "color": "green"}
execute if score @s RoleUniversal matches 5 run title @s title {"text": "Zog", "color": "red"}