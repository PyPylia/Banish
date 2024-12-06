me has been banished!
execute as @a at @s run playsound minecraft:item.trident.thunder player @s ~ ~ ~ 1 1 1
$data modify storage banish:banish players[{UUID:$(UUID)}].vote_count set value 0
$data modify storage banish:banish players[{UUID:$(UUID)}].votes set value []
$data modify storage banish:banish players[{UUID:$(UUID)}].stored_inventory set from entity @s Inventory
clear

summon minecraft:marker ~ ~ ~ {Tags:["banish_smite"]}
execute unless data storage banish:banish cruel in banish:nether run spreadplayers 0 0 1000 10000000 under 127 false @s
execute if data storage banish:banish cruel in banish:nether run spreadplayers 0 0 1000 10000000 false @s
execute if data storage banish:banish cruel at @s run teleport @s ~ 128 ~
execute at @s run spawnpoint
execute at @s run forceload add ~ ~
$data modify storage banish:banish players[{UUID:$(UUID)}].spawn_pos set from entity @s Pos

execute at @e[type=minecraft:marker,tag=banish_smite,limit=1] run summon minecraft:lightning_bolt
stopsound @a weather minecraft:entity.lightning_bolt.thunder
kill @e[type=minecraft:marker,tag=banish_smite,limit=1]