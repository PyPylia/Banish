data modify entity @s Item.components."minecraft:custom_data"."banish:stored_owner" set from entity @s Owner
data modify entity @s Owner set value [I; 0, 0, 0, 0]
tag @s add banish_disabled