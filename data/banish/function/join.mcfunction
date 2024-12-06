data modify storage banish:banish players append value {"UUID":[],"votes":[],"vote_count":0,"spawn_pos":[],"stored_inventory":{}}
data modify storage banish:banish players[-1].UUID set from entity @s UUID

scoreboard players add player_count _banish 1
scoreboard players enable @s banish