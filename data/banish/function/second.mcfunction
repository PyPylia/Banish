schedule function banish:second 1s replace

execute as @a at @s run function banish:player_second with entity @s
execute as @e[type=minecraft:ender_pearl,tag=banish_disabled] run function banish:check_enderpearl