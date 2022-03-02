#> serverinfo:newmsg/tell/_
# @within function  serverinfo:login/_

## 複製
    data modify storage calculation: serverinfo.newmsg set from storage serverinfo: newmsg

## ループ
    execute if data storage calculation: serverinfo.newmsg[-1] run function serverinfo:newmsg/tell/loop
