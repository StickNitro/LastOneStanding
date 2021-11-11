tellraw @a {"text": "selecting role..."}

scoreboard players set @a RoleRedLife 0
scoreboard players reset @a RoleHunter
scoreboard players reset @a RoleCivilian

#set the red life roles first
scoreboard players set @e[type=player, team=1life] RoleRedLife 1
execute as @a[team=1life] at @s run function last_one:roles/redliferoleselection

#set the roles for the other players and select the hunters
scoreboard players set @e[type=player,scores={RoleRedLife=0},sort=random,limit=1] RoleHunter 1
title @a times 20 60 20
execute as @a at @s if score @s RoleHunter matches 1 run function last_one:roles/hunterroleselection
execute as @a at @s unless score @s RoleHunter matches 1 unless score @s RoleRedLife matches 1 run scoreboard players set @s RoleCivilian 1
execute as @a at @s if score @s RoleCivilian matches 1 run function last_one:roles/civilianroleselection

kill @e[tag=Role,type=armor_stand]
