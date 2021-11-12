tellraw @a {"text":"You are about to be assigned a random amount of lives.","color":"red"}
execute as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ .75 1.5
schedule function last_one:lives/_title 3s
schedule function last_one:roles/tellrole 25s
