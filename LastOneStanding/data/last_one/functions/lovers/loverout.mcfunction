execute as @s at @s run tellraw @p[scores={LastOneLover=1},distance=1..] {"text": "Your lover has been turned into a ghost so you have decided to follow them into the afterlife because not even death will make you part"}
execute as @s at @s run scoreboard players set @p[scores={LastOneLover=1},distance=1..] LastOneLives 1

kill @p[scores={LastOneLover=1},distance=1..]
scoreboard players set @a LastOneLover 0