#> serverinfo:servermsg/tell/loop
# @within function serverinfo:servermsg/tell/**

## Tell
    tellraw @s ["",{"nbt":"serverinfo.servermsg[-1]","storage": "calculation:","interpret": true}]

## ループ
    data remove storage calculation: serverinfo.servermsg[-1]
    execute if data storage calculation: serverinfo.servermsg[-1] run function serverinfo:servermsg/tell/loop
