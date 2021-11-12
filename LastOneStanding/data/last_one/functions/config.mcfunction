tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["           Last One Standing",{"text":" / ","color":"gray"},"by Psiracy and BondedSalt        "]
tellraw @s ["           based on Third Life / Last Life",{"text":" / ","color":"gray"},"by Wooferscoots    "]
execute if score #version LastLifeConfig matches 2 run tellraw @s ["",{"text":"[ ❤ ]","color":"gray"}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"Amount of lives chosen at random for each player, between 2 and 6","color":"gray"}]}},{"text":" Last One Standing","color":"red"}]
execute unless score #version LastLifeConfig matches 2 run tellraw @s ["",{"text":"[ ❌ ]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger LastLifeVers set 2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"gray"},{"text":"Last One Standing","color":"red"},{"text":".","color":"gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"Amount of lives chosen at random for each player, between 2 and 6","color":"gray"}]}},{"text":" Last One Standing","color":"red"}]

#world border
execute if score #border LastLifeconfig matches 1 run tellraw @s ["",{"text":"[ ❤ ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger LastLifeBorder set 1"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to disable ","color":"gray"},{"text":"World Border","color":"white"},{"text":".","color":"gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"Border set to 500 by default change with /worldborder set XXX after game has started (must be op)","color":"gray"}]}},{"text":" World Border","color":"white"}]
execute unless score #border LastLifeconfig matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger LastLifeBorder set 2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Click to enable ","color":"gray"},{"text":"World Border","color":"white"},{"text":".","color":"gray"}]}}," ",{"text":"[ ℹ ]","color":"gray","hoverEvent":{"action":"show_text","contents":["",{"text":"Border set to 500 by default change with /worldborder set XXX after game has started (must be op)","color":"gray"}]}},{"text":" World Border","color":"white"}]

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text": "[ ☠ ]","color": "light_purple","clickEvent": {"action": "run_command","value": "/trigger LastLifeStart set 1"},"hoverEvent": {"action": "show_text","contents": ["",{"text": "Click to start ","color": "gray"},{"text": "Last One Standing","color": "light_purple"},{"text": ".","color": "gray"}]}}," ",{"text": "[ ℹ ]","color": "gray","hoverEvent": {"action": "show_text","contents":[{"text": "Starts Last One Standing","color": "gray"}]}},{"text": " Start","color": "light_purple"}]
tellraw @s {"text":"                                                                                 ","color":"dark_gray","strikethrough":true}
gamerule sendCommandFeedback false
function last_one:triggers
#tellraw @s {"text": "things are ready to go", "color": "green"}
