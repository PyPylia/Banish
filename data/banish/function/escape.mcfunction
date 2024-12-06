spawnpoint @s 0 127 0
execute as @a at @s run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 1
damage @s 10000 minecraft:outside_border
kill @s
stopsound @s player minecraft:entity.player.death
stopsound @s player minecraft:entity.player.hurt
me has escaped banishment!