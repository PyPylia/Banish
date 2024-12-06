summon minecraft:marker ~ ~ ~ {Tags:["banish_clear"]}
$data modify entity @n[type=minecraft:marker,tag=banish_clear] Pos set from storage banish:banish players[{UUID:$(UUID)}].spawn_pos
execute at @n[type=minecraft:marker,tag=banish_clear] run fill ~ ~ ~ ~ ~1 ~ minecraft:air destroy
execute at @n[type=minecraft:marker,tag=banish_clear] run setblock ~ ~-1 ~ minecraft:crying_obsidian keep
kill @n[type=minecraft:marker,tag=banish_clear]