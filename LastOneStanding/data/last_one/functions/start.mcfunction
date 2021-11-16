tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
execute if score #version LastLifeConfig matches 2 run tellraw @a {"text":"Last One Standing started!","color":"red"}

execute if score #border LastLifeConfig matches 1 run tellraw @a {"text":"A border has been set at default of 500 blocks, change with /worldborder set XXX","color":"gray"}
execute if score #border LastLifeConfig matches 0 run tellraw @a {"text":"A world border was not set","color":"gray"}

tellraw @a {"text":"30 second grace period started","color":"gray"}

execute as @a at @s run playsound block.note_block.banjo master @s ~ ~ ~ 1 2

schedule function last_one:grace 30s
team join gracelife @a
scoreboard players reset @a LastOneLives

#remove not needed scoreboards
scoreboard objectives remove LastLifeVers
scoreboard objectives remove LastLifeStart
scoreboard objectives remove LastLifeBorder

#timer
scoreboard players set #tick LastLifeTimer 0
scoreboard players set $second LastLifeTimer 0
scoreboard players set $minute LastLifeTimer 0

scoreboard players set #running LastLifeRound 0
execute if score #hunter LastLifeConfig matches 1.. run scoreboard players enable @a LastLifeRound
