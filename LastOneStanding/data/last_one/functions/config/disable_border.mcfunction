tellraw @a {"text": "disable world border", "color": "#00FF00"}

scoreboard players set #border LastLifeConfig 0
worldborder set 30000000
function last_one:config
execute as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ .5 1
