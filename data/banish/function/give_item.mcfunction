$execute unless data storage banish:banish players[{UUID:$(UUID)}].stored_inventory[0] run return 0

$summon minecraft:item ~ ~ ~ {Owner:$(UUID),PickupDelay:1,Tags:["banish_item"],Item:{id:"minecraft:dirt"}}
$data modify entity @e[type=minecraft:item,tag=banish_item,limit=1] Item.id set from storage banish:banish players[{UUID:$(UUID)}].stored_inventory[0].id
$data modify entity @e[type=minecraft:item,tag=banish_item,limit=1] Item.count set from storage banish:banish players[{UUID:$(UUID)}].stored_inventory[0].count
$data modify entity @e[type=minecraft:item,tag=banish_item,limit=1] Item.components set from storage banish:banish players[{UUID:$(UUID)}].stored_inventory[0].components
$data remove storage banish:banish players[{UUID:$(UUID)}].stored_inventory[0]
tag @e[type=minecraft:item,tag=banish_item,limit=1] remove banish_item

function banish:give_item with entity @s