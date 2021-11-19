tellraw @s {"text": "set lovers"}
scoreboard players set @a LastOneCupid 0
scoreboard players set @r[scores={LastOneLover=0}] LastOneLover 1
scoreboard players set @r[scores={LastOneLover=0}] LastOneLover 1

execute as @a[scores={LastOneLover=1}] at @s run function last_one:lovers/lovers