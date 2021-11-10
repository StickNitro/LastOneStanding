#Roles corrosponds with a number
# 1 = Normal hunter
# 2 = Assassin
# 3 = Thief

tellraw @a {"text": "hunter role"}

#randomizer
execute at @s if score @s RoleHunter matches 1 run summon armor_stand ~ ~ ~ {Tags:["RoleHunter","Role"],Invisible:1b,Marker:1b}
execute at @s if score @s RoleHunter matches 1 run summon armor_stand ~ ~ ~ {Tags:["RoleAssassin","Role"],Invisible:1b,Marker:1b}
execute at @s if score @s RoleHunter matches 1 run summon armor_stand ~ ~ ~ {Tags:["RoleThief","Role"],Invisible:1b,Marker:1b}

scoreboard players set @e[type=armor_stand,tag=RoleHunter] Role 1
scoreboard players set @e[type=armor_stand,tag=RoleAssassin] Role 2
scoreboard players set @e[type=armor_stand,tag=RoleThief] Role 3

execute as @s run scoreboard players operation @s Role = @e[tag=Role,sort=random,limit=1] Role

#tell role
title @a times 20 60 20

execute if score @s Role matches 1 run title @s title {"text": "Hunter", "color": "#590e0e"}
execute if score @s Role matches 2 run title @s title {"text": "The Assassin", "color": "red"}
execute if score @s Role matches 3 run title @s title {"text": "The Thief", "color": "#353336"}