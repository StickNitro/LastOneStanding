execute as @s[scores={LastOneLives=1}] run function last_one:lovers/loverout

execute as @s at @s run tellraw @p[scores={LastOneLover=1},distance=1..] {"text": "Your lover has died grief strucken you deside to take one of your own as well"}
execute as @s at @s run scoreboard players remove @p[scores={LastOneLover=1},distance=1..] LastOneLives 1