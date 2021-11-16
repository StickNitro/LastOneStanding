tellraw @a {"text": "enable world border", "color": "#00FF00"}

scoreboard players set #border LastLifeConfig 1
worldborder set 500
function last_one:config
execute as @a at @s run playsound block.note_block.snare master @s ~ ~ ~ .5 2
