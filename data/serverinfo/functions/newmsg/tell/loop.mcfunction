#> serverinfo:newmsg/tell/loop
# @within function serverinfo:newmsg/tell/**

## Tell
    execute store result score $serverinfo:newmsg/tell/loop temporary run data get storage calculation: serverinfo.newmsg[-1].time 1
    execute as @a if score @s serverinfo.last_login_time < $serverinfo:newmsg/tell/loop temporary run tellraw @s ["",{"nbt":"serverinfo.newmsg[-1].contents","storage": "calculation:","interpret": true}]

## ループ
    data remove storage calculation: serverinfo.newmsg[-1]
    execute if data storage calculation: serverinfo.newmsg[-1] run function serverinfo:newmsg/tell/loop
