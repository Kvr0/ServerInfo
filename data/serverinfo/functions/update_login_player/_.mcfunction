#> serverinfo:update_login_player/_
# @within function serverinfo:**

## リセット
    data modify storage serverinfo: login_player set value []

## 取得
    execute as @a run function serverinfo:update_login_player/get_name
