schedule function last_one:tick 1t

#contender
execute as @a[scores={LastOneContender=1}] at @s run function last_one:contender

#death
execute as @a at @s if score @s LastOneDeath matches 1 run function last_one:death
execute as @a at @s if score @s LastOneDeath matches 1 run scoreboard players remove @s LastOneLifes 1
execute as @a at @s if score @s LastOneDeath matches 1 run scoreboard players set @a LastOneDeath 0

#join team based on lives
execute as @a unless entity @s[team=0life] if score @s LastOneLives matches ..0 run team join 0life
execute as @a unless entity @s[team=1life] if score @s LastOneLives matches 1 run team join 1life
execute as @a unless entity @s[team=2life] if score @s LastOneLives matches 2 run team join 2life
execute as @a unless entity @s[team=3life] if score @s LastOneLives matches 3 run team join 3life
execute as @a unless entity @s[team=4+life] if score @s LastOneLives matches 4.. run team join 4+life
execute as @a[team=0life] run gamemode spectator @s

#get role
execute as @a[scores={LastOneRole=1..}] at @s run function last_one:getrole