tellraw @a [{"text":"Session has ended use /trigger LastLifeRound set xxx to start another session","color":"gray"}]
title @s[scores={LastOneHunter=1}] times 20 60 20
title @s[scores={LastOneHunter=1}] title {"text":"You have failed.","color":"red"}
tellraw @s[scores={LastOneHunter=1}] ["",{"text":"You failed to kill a green or yellow name last session as the hunter. As punishment, you have dropped to your ","color":"gray"},{"text":"Last Life","color":"red"},{"text":". All alliances are severed and you are now hostile to all players. You may team with others on their Last Life if you wish. ","color":"gray"}]
scoreboard players set @s[scores={LastOneHunter=1}] LastLifeLives 1
scoreboard players reset @s[scores={LastOneHunter=1}] LastOneHunter
execute as @a at @s run scoreboard objectives remove LastLifeRound
execute as @a at @s run scoreboard objectives add LastLifeRound trigger "round amount timer"
scoreboard players set #running LastLifeRound 0
execute if score #boogey LastLifeconfig matches 1 run scoreboard players enable @a LastLifeRound

