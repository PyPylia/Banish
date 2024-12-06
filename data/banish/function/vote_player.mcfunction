$data modify storage banish:banish func_args.UUID set from storage banish:banish players[$(votee_id)].UUID
function banish:player_online with storage banish:banish func_args
execute unless data storage banish:banish func_return.player_online run return fail

data remove storage banish:banish has_voted

$execute if data storage banish:banish players[$(votee_id)].votes[{value:$(voter_uuid)}] run data modify storage banish:banish has_voted set value 1b
$execute if data storage banish:banish has_voted store result score counter _banish run data get storage banish:banish players[$(votee_id)].vote_count
$execute if data storage banish:banish has_voted store result storage banish:banish players[$(votee_id)].vote_count int 1 run scoreboard players operation counter _banish -= one _banish
$execute if data storage banish:banish has_voted run data remove storage banish:banish players[$(votee_id)].votes[{value:$(voter_uuid)}]

$execute unless data storage banish:banish has_voted store result score counter _banish run data get storage banish:banish players[$(votee_id)].vote_count
$execute unless data storage banish:banish has_voted store result storage banish:banish players[$(votee_id)].vote_count int 1 run scoreboard players add counter _banish 1
$execute unless data storage banish:banish has_voted run data modify storage banish:banish players[$(votee_id)].votes append value {value:$(voter_uuid)}

$data modify storage banish:banish func_args.vote_count set from storage banish:banish players[$(votee_id)].vote_count
execute store result storage banish:banish func_args.min_votes int 1 run scoreboard players get min_votes _banish
execute if data storage banish:banish has_voted run function banish:announce_cancel with storage banish:banish func_args
execute unless data storage banish:banish has_voted run function banish:announce_vote with storage banish:banish func_args