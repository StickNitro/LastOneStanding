#random lives
summon armor_stand ~ ~ ~ {Tags:["LastLife2","LastOneLives"],Invisible:1b,Marker:1b}
summon armor_stand ~ ~ ~ {Tags:["LastLife3","LastOneLives"],Invisible:1b,Marker:1b}
summon armor_stand ~ ~ ~ {Tags:["LastLife4","LastOneLives"],Invisible:1b,Marker:1b}
summon armor_stand ~ ~ ~ {Tags:["LastLife5","LastOneLives"],Invisible:1b,Marker:1b}
summon armor_stand ~ ~ ~ {Tags:["LastLife6","LastOneLives"],Invisible:1b,Marker:1b}

scoreboard players set @e[type=armor_stand,tag=LastLife2] LastOneLives 2
scoreboard players set @e[type=armor_stand,tag=LastLife3] LastOneLives 3
scoreboard players set @e[type=armor_stand,tag=LastLife4] LastOneLives 4
scoreboard players set @e[type=armor_stand,tag=LastLife5] LastOneLives 5
scoreboard players set @e[type=armor_stand,tag=LastLife6] LastOneLives 6

execute as @a[team=!] run scoreboard players operation @s LastOneLives = @e[tag=LastOneLives,sort=random,limit=1] LastOneLives

kill @e[tag=LastOneLives,type=armor_stand]