scoreboard players set #version LastLifeConfig 2
scoreboard players set #border LastLifeConfig 1
scoreboard players set #hunter LastLifeConfig 1
function last_one:config
execute as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ .5 2
