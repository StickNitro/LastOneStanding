tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

tellraw @a {"text":"30 second grace period started","color":"gray"}

execute as @a at @s run playsound block.note_block.banjo master @s ~ ~ ~ 1 2

schedule function last_one:grace 30s
team join gracelife @a
scoreboard players reset @a LastOneLives

#remove not needed scoreboards
scoreboard objectives remove LastLifeVers
scoreboard objectives remove LastLifeStart

#timer
scoreboard players set #tick LastLifeTimer 0
scoreboard players set $second LastLifeTimer 0
scoreboard players set $minute LastLifeTimer 0

scoreboard players set #running LastLifeRound 0
execute if score #hunter LastLifeconfig matches 1.. run scoreboard players enable @a LastLifeRound
