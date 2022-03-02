#> serverinfo:servermsg/tell/_
# @within function serverinfo:login/_

## 複製
    data modify storage calculation: serverinfo.servermsg set from storage serverinfo: servermsg

## ループ
    execute if data storage calculation: serverinfo.servermsg[-1] run function serverinfo:servermsg/tell/loop
