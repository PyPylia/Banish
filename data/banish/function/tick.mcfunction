execute as @a[predicate=banish:dead_banished] at @s run function banish:clear_spawnpoint with entity @s
execute as @e[type=minecraft:ender_pearl,tag=!banish_disabled,predicate=!banish:banished] on origin if entity @s[predicate=banish:banished] run function banish:disable_enderpearls with entity @s