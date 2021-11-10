#roles correspond with a number
# 1 = sherrif
# 2 = jester
# 3 = Altruist

tellraw @a {"text": "civilian role"}

#randomizer
execute at @s if score @s RoleCivilian matches 1 run summon armor_stand ~ ~ ~ {Tags:["RoleSherrif","Role"],Invisible:1b,Marker:1b}
execute at @s if score @s RoleCivilian matches 1 run summon armor_stand ~ ~ ~ {Tags:["RoleJester","Role"],Invisible:1b,Marker:1b}
execute at @s if score @s RoleCivilian matches 1 run summon armor_stand ~ ~ ~ {Tags:["RoleAltruist","Role"],Invisible:1b,Marker:1b}

scoreboard players set @e[type=armor_stand,tag=RoleSherrif] Role 1
scoreboard players set @e[type=armor_stand,tag=RoleJester] Role 2
scoreboard players set @e[type=armor_stand,tag=RoleAltruist] Role 3

execute as @s run scoreboard players operation @s Role = @e[tag=Role,sort=random,limit=1] Role

#tell role
title @a times 20 60 20

execute if score @s Role matches 1 run title @s title {"text": "The Sheriff", "color": "blue"}
execute if score @s Role matches 2 run title @s title {"text": "The Jester", "color": "#28a12e"}
execute if score @s Role matches 3 run title @s title {"text": "The Altruist", "color": "#79aaf7"}