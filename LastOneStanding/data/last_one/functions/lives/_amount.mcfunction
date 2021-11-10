execute as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~10 ~ 1 1
title @a times 20 100 20
execute as @a if score @s LastOneLives matches 2 run title @s title ["",{"score":{"name":"@s","objective":"LastOneLives"},"color":"yellow"},{"text":" lives.","color":"green"}]
execute as @a if score @s LastOneLives matches 3 run title @s title ["",{"score":{"name":"@s","objective":"LastOneLives"},"color":"green"},{"text":" lives.","color":"green"}]
execute as @a if score @s LastOneLives matches 4.. run title @s title ["",{"score":{"name":"@s","objective":"LastOneLives"},"color":"dark_green"},{"text":" lives.","color":"green"}]