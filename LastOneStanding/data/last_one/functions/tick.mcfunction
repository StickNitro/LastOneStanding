schedule function last_one:tick 1t

execute as @a if score @s LastLifeVers matches 2 run function last_one:config/last_one

execute as @a if score @s LastLifeBorder matches 2 run function last_life:config/enable_border
execute as @a if score @s LastLifeBorder matches 1 run function last_life:config/disable_border

execute as @a at @s if score @s LastLifeStart matches 1 run function last_one:start
execute as @a at @s if score @s LastLifeStart matches 1 run scoreboard players set @a LastLifeStart 0

#check lives
execute as @a at @s if score @s LastLifeCheck matches 1.. run function last_one:check

#death
execute as @a at @s if score @s LastOneDeath matches 1 run function last_one:death
execute as @a at @s if score @s LastOneDeath matches 1 run scoreboard players remove @s LastOneLives 1
execute as @a at @s if score @s LastOneDeath matches 1 run scoreboard players set @a LastOneDeath 0

#join team based on lives
execute as @a unless entity @s[team=0life] if score @s LastOneLives matches ..0 run team join 0life
execute as @a unless entity @s[team=1life] if score @s LastOneLives matches 1 run team join 1life
execute as @a unless entity @s[team=2life] if score @s LastOneLives matches 2 run team join 2life
execute as @a unless entity @s[team=3life] if score @s LastOneLives matches 3 run team join 3life
execute as @a unless entity @s[team=4+life] if score @s LastOneLives matches 4.. run team join 4+life
execute as @a[team=0life] run gamemode spectator @s

#get role (not sure what this is doing!!!)
execute as @a[scores={LastOneRole=1..}] at @s run function last_one:getrole

#use trigger to set hunter time, hunter will be called on /trigger LastLifeRound set xx
execute as @a[scores={LastLifeRound=..-1}] as @s if score @s LastLifeRound matches ..-1 run function last_one:hunter/error
execute as @a[scores={LastLifeRound=1..9}] as @s if score @s LastLifeRound matches 1..9 run function last_one:hunter/error
execute as @a[scores={LastLifeRound=10..}] as @s if score @s LastLifeRound matches 10.. unless score #running LastLifeRound matches 1 run function last_one:hunter/5minwarning

execute if score $tick LastLifeTimer matches 0 run scoreboard players add $second LastLifeTimer 1
scoreboard players add $tick LastLifeTimer 1
execute if score $tick LastLifeTimer matches 20.. run scoreboard players set $tick LastLifeTimer 0

execute if score $second LastLifeTimer matches 60 run scoreboard players add $minute LastLifeTimer 1
execute if score $second LastLifeTimer matches 60 run scoreboard players set $second LastLifeTimer 0

execute if score #running LastLifeRound matches 1 as @a[scores={LastLifeRound=10..}] if score $minute LastLifeTimer >= @s LastLifeRound run function last_one:hunter/fail
