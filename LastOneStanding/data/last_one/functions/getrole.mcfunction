scoreboard players reset @a Role
scoreboard players reset @a HasRole

execute as @s at @s run scoreboard players set @s LastOneRole 0

title @a times 20 60 20
title @a title {"text": "your role is...", "color": "white"}

schedule function last_one:roles/roleselection 3s