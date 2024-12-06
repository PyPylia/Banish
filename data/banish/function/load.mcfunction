scoreboard objectives add banish trigger {"text":"Banish"}
scoreboard objectives add _banish dummy
scoreboard objectives add _banish_tsd minecraft.custom:minecraft.time_since_death
scoreboard players set vote_offset _banish 2
scoreboard players set one _banish 1
scoreboard players set hundred _banish 100
execute unless score banish_threshold _banish matches 0..100 run scoreboard players set banish_threshold _banish 50
execute unless score player_count _banish matches 1.. run scoreboard players set player_count _banish 1
schedule function banish:second 1s replace