tellraw @s [{"text":"Who would you like to banish? ", "color":"yellow"},{"text":"[Admin Dashboard]","color":"gold","clickEvent":{"action":"run_command","value":"/function banish:admin"},"underlined":true},{"text":"\n"}]

scoreboard players operation min_votes _banish = player_count _banish
scoreboard players operation min_votes _banish *= banish_threshold _banish
scoreboard players operation min_votes _banish /= hundred _banish

scoreboard players operation counter _banish = vote_offset _banish
data modify storage banish:banish temp_players set from storage banish:banish players
data modify storage banish:banish func_args set from storage banish:banish temp_players[0]
execute store result storage banish:banish func_args.min_votes int 1 run scoreboard players get min_votes _banish
execute store result storage banish:banish func_args.id int 1 run scoreboard players get counter _banish
function banish:display_player with storage banish:banish func_args

scoreboard players reset @s banish
scoreboard players enable @s banish
advancement revoke @s only banish:menu_trigger