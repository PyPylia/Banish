scoreboard players operation min_votes _banish = player_count _banish
scoreboard players operation min_votes _banish *= banish_threshold _banish
scoreboard players operation min_votes _banish /= hundred _banish

scoreboard players operation @s banish -= vote_offset _banish
data modify storage banish:banish func_args.voter_uuid set from entity @s UUID
execute store result storage banish:banish func_args.votee_id int 1 run scoreboard players get @s banish
function banish:vote_player with storage banish:banish func_args

scoreboard players reset @s banish
scoreboard players enable @s banish
advancement revoke @s only banish:vote_trigger