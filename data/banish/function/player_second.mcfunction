scoreboard players operation min_votes _banish = player_count _banish
scoreboard players operation min_votes _banish *= banish_threshold _banish
scoreboard players operation min_votes _banish /= hundred _banish

$data modify storage banish:banish func_args set from storage banish:banish players[{UUID:$(UUID)}]
execute store result score counter _banish run data get storage banish:banish func_args.vote_count
execute if predicate banish:over_threshold run function banish:banish_player with storage banish:banish func_args