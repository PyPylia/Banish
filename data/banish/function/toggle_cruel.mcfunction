data remove storage banish:banish current_value
execute if data storage banish:banish cruel run data modify storage banish:banish current_value set value 1b

execute if data storage banish:banish current_value run data remove storage banish:banish cruel
execute unless data storage banish:banish current_value run data modify storage banish:banish cruel set value 1b

function banish:admin