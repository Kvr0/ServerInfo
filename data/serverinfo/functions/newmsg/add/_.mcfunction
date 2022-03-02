#> serverinfo:newmsg/add/_
# @api

## 追加
    data modify storage serverinfo: newmsg append value {time:0,contents:{}}
    data modify storage serverinfo: newmsg[-1].contents set from storage serverinfo: input
    execute store result storage serverinfo: newmsg[-1].time int 1 run time query gametime

## 入力リセット
    data modify storage serverinfo: input set value {}