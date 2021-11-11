tellraw @s {"text": "setting things up","color": "red"}

tellraw @s {"text": "                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s ["",{"text": "[ ☠ ]","color": "light_purple","clickEvent": {"action": "run_command","value": "/trigger LastLifeStart set 1"},"hoverEvent": {"action": "show_text","contents": ["",{"text": "Click to start ","color": "gray"},{"text": "Last One Standing","color": "light_purple"},{"text": ".","color": "gray"}]}}," ",{"text": "[ ℹ ]","color": "gray","hoverEvent": {"action": "show_text","contents":[{"text": "Starts Last One Standing","color": "gray"}]}},{"text": " Start","color": "light_purple"}]
tellraw @s {"text":"                                                                                 ","color":"dark_gray","strikethrough":true}
gamerule sendCommandFeedback false
function last_one:triggers
#tellraw @s {"text": "things are ready to go", "color": "green"}