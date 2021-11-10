tellraw @s {"text": "You are now a contender in last one standing. You will recieve your lives momentaraly. Please stand by.", "color": "blue", "bold": true}
schedule function last_one:lives/_title 5s
execute as @s at @s run scoreboard players set @s LastOneContender 2