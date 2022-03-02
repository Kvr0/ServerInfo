#> serverinfo:servermsg/add/_
# @api

## 追加
    data modify storage serverinfo: servermsg append from storage serverinfo: input

## 入力リセット
    data modify storage serverinfo: input set value {}
