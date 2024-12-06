$execute if entity @a[nbt={UUID:$(UUID)},limit=1] run tellraw @s [{"text":"Banish [","color":"red","clickEvent":{"action":"run_command","value":"/trigger banish set $(id)"}},{"selector":"@a[nbt={UUID:$(UUID)},limit=1]","clickEvent":{"action":"run_command","value":"/trigger banish set $(id)"}},{"text":"] ($(vote_count)/$(min_votes))","color":"red","clickEvent":{"action":"run_command","value":"/trigger banish set $(id)"}}]

scoreboard players add counter _banish 1
data remove storage banish:banish temp_players[0]
data modify storage banish:banish func_args set from storage banish:banish temp_players[0]
execute store result storage banish:banish func_args.min_votes int 1 run scoreboard players get min_votes _banish
execute store result storage banish:banish func_args.id int 1 run scoreboard players get counter _banish

execute if data storage banish:banish temp_players[0] run function banish:display_player with storage banish:banish func_args