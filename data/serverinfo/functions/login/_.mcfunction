#> serverinfo:login/_
# @within advancement serverinfo:login

## ログイン時間
    scoreboard players operation @s serverinfo.last_login_time = @s serverinfo.login_time
    execute store result score @s serverinfo.login_time run time query gametime
    execute if score @s serverinfo.last_login_time matches 0 run scoreboard players operation @s serverinfo.last_login_time = @s serverinfo.last_login_time

## ServerMessage
    function serverinfo:servermsg/tell/_

## NewMessage
    schedule function serverinfo:newmsg/tell/_ 1t append

## リセット
    scoreboard players reset @s serverinfo.logout
    advancement revoke @s only serverinfo:login
    function calculation:reset/_
