#> serverinfo:_/tick
# @within tag/function tickmanager:tick

## Update Check
    execute store result score $serverinfo:_/tick.player_count temporary if entity @a
    execute unless score $serverinfo:*.player_count global = $serverinfo:_/tick.player_count temporary run function serverinfo:update_login_player/_
    scoreboard players operation $serverinfo:*.player_count global = $serverinfo:_/tick.player_count temporary
