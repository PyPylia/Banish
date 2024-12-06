tellraw @s {"text":"\nBanish admin dashboard\n","color":"gold"}

tellraw @s [{"text":"Banish threshold: ","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set banish_threshold _banish 50"}},{"score":{"name":"banish_threshold","objective":"_banish"},"color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set banish_threshold _banish 50"}},{"text":"%","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set banish_threshold _banish 50"}}]

execute if data storage banish:banish cruel run data modify storage banish:banish func_args.text set value {"text":"Enabled","color":"green"}
execute unless data storage banish:banish cruel run data modify storage banish:banish func_args.text set value {"text":"Disabled","color":"red"}
tellraw @s [{"text":"Cruel mode: ","color":"gray","clickEvent":{"action":"run_command","value":"/function banish:toggle_cruel"}},{"storage":"banish:banish","nbt":"func_args.text","interpret":true,"clickEvent":{"action":"run_command","value":"/function banish:toggle_cruel"}}]