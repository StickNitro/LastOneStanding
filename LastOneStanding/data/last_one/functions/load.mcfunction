tellraw @a {"text": "My Code is LOad", "color": "#00FF00"}

#scoreboards
scoreboard objectives add LastOneLives dummy "Lives"
scoreboard objectives add LastOneContender trigger "Adds player to the contenders"
scoreboard objectives add LastOneDeath deathCount "Death"

#role scoreboards
scoreboard objectives add HasRole dummy "used to check if player has role or not"
scoreboard players set @a HasRole 0
scoreboard objectives add Role dummy "corrosponds to a role"
scoreboard objectives add LastOneRole trigger "Used to get your role"

scoreboard objectives add RoleHunter dummy "get a random hunter role"
scoreboard objectives add RoleCivilian dummy "get a random civilian role"
scoreboard objectives add RoleRedLife dummy "get a random red life role"

scoreboard objectives add LastOneHunter dummy "Player has to kill a random player"
scoreboard objectives add LastOneAssassin dummy "Player needs to kill a specific player"
scoreboard objectives add LastOneThief dummy "Player has to steal an item"

scoreboard objectives add LastOneJester dummy "Player has set up a trick for their killer"
scoreboard objectives add LastOneSheriff dummy "Player has been granted the power off justice"
scoreboard objectives add LastOneAltruist dummy "Player gives more lives to other players"

scoreboard objectives add LastOneZippy dummy "Player is faster untill death"
scoreboard objectives add LastOneZog dummy "Player is slower untill death"
scoreboard objectives add LastOneBerserker dummy "Player is slower untill death"

scoreboard objectives add LastOneLover dummy "Player falls amdly in love with another player"

#scoreboards for the last life code
scoreboard objectives add LastLifeConfig dummy
scoreboard objectives add LastLifeVers trigger
scoreboard objectives add LastLifeRoll dummy
scoreboard objectives add LastLifeRound trigger  "round amount timer"
scoreboard objectives add LastLifeCheck trigger "check amount of lives"
scoreboard objectives add LastLifeTime trigger  "time left for hunter to kill"
scoreboard objectives add LastLifeTimer dummy
scoreboard objectives add LastLifeBorder trigger
scoreboard objectives add LastLifeGive trigger "used to give lives to the nearest player"

scoreboard objectives add LastLifeStart trigger

#role variables

#teams
team add gracelife {"text":"Grace Life","color":"gray"}
team add 0life {"text":"No Life","color":"dark_gray"}
team add 1life {"text":"Last Life","color":"red"}
team add 2life {"text":"Two Lives","color":"yellow"}
team add 3life {"text":"Three Lives","color":"green"}
team add 4+life {"text":"Four to Six+ Lives","color":"dark_green"}

team modify gracelife color gray
team modify gracelife friendlyFire false
team modify 0life color dark_gray
team modify 1life color red
team modify 2life color yellow
team modify 3life color green
team modify 4+life color dark_green

scoreboard players set $tick LastLifeTimer 0
scoreboard players set $second LastLifeTimer 0
scoreboard players set $minute LastLifeTimer 0

#excute commands 
execute as @a run function last_one:config