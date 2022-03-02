#> serverinfo:_/install
# @within tag/function installmanager:install

## ログアウト検知
    scoreboard objectives add serverinfo.logout custom:leave_game

## ログイン時間
    scoreboard objectives add serverinfo.login_time dummy
    scoreboard objectives add serverinfo.last_login_time dummy

## InstallManagerへの登録
    data modify storage installmanager: installed append value ServerInfo
    data modify storage installmanager: relation append value {id:ServerInfo,dep:[InstallManager,TickManager,SlotModifier]}

