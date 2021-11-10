kill @e[tag=Role,type=armor_stand]
kill @e[tag=RoleUniversal,type=armor_stand]

title @a title {"text": "Good Luck"}
tellraw @a {"text": "assinging roles functionalty"}
#Altruist
execute as @a at @s if score @s LastOneAltruist matches 1 run title @s title {"text": "The Altruist", "color": "#79aaf7"}
execute as @a[scores={LastOneAltruist=1}] at @s run function last_one:roles/altruist

#Assassin
execute as @a at @s if score @s LastOneAssassin matches 1 run title @s title {"text": "The Assassin", "color": "red"}
execute as @a[scores={LastOneAssassin=1}] at @s run function last_one:roles/assassin

#Cupid
execute as @a at @s if score @s LastOneCupid matches 1 run title @s title {"text": "The Cupid", "color": "#ce6fe8"}
execute as @a[scores={LastOneCupid=1}] at @s run function last_one:roles/cupid

#Thief
execute as @a at @s if score @s LastOneThief matches 1 run title @s title {"text": "The Thief", "color": "#353336"}
execute as @a[scores={LastOneThief=1}] at @s run function last_one:roles/thief

#Holy
execute as @a at @s if score @s LastOneHoly matches 1 run title @s title {"text": "The Holy Person", "color": "yellow"}
execute as @a[scores={LastOneHoly=1}] at @s run function last_one:roles/holy

#Jester
execute as @a at @s if score @s LastOneJester matches 1 run title @s title {"text": "The Jester", "color": "#28a12e"}
execute as @a[scores={LastOneJester=1}] at @s run function last_one:roles/jester

#Oracle
execute as @a at @s if score @s LastOneOracle matches 1 run title @s title {"text": "The Oracle", "color": "#5d0f85"}
execute as @a[scores={LastOneOracle=1}] at @s run function last_one:roles/oracle

#Sheriff
execute as @a at @s if score @s LastOneSheriff matches 1 run title @s title {"text": "The Sheriff", "color": "blue"}
execute as @a[scores={LastOneSheriff=1}] at @s run function last_one:roles/sheriff

#Vampire
execute as @a at @s if score @s LastOneVampire matches 1 run title @s title {"text": "The Vampire", "color": "#590e0e"}
execute as @a[scores={LastOneVampire=1}] at @s run function last_one:roles/vampire

#Zippy
execute as @a at @s if score @s LastOneZippy matches 1 run title @s title {"text": "The Zippy", "color": "white"}
execute as @a[scores={LastOneZippy=1}] at @s run function last_one:roles/zippy

#Zog
execute as @a at @s if score @s LastOneZog matches 1 run title @s title {"text": "The Zog", "color": "white"}
execute as @a[scores={LastOneZog=1}] at @s run function last_one:roles/zog

