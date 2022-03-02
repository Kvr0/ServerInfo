#> serverinfo:update_login_player/get_name
# @within function serverinfo:update_login_player/_

## 取得
    item replace entity 0000ab6d-0000-0000-0000-001d02b97be4 armor.head with player_head 1
    item modify entity 0000ab6d-0000-0000-0000-001d02b97be4 armor.head serverinfo:get_name

## 追加
    data modify storage serverinfo: login_player append from entity 0000ab6d-0000-0000-0000-001d02b97be4 ArmorItems[3].tag.SkullOwner.Name
