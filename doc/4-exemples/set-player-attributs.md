# Set Player Attributs

## Client

Set steamId only
```lua
exports.ft_players:SetPlayer("steamId", "steam:1100001xxxxxxxx")
```

Set steamId and id
```lua
exports.ft_players:SetPlayer({ {"steamId", "steam:1100001xxxxxxxx"}, { "id", 3 } })
```

## Server

Get player from his id
```lua
local player = exports.ft_players:GetPlayerFromServerId(1)
player:Set("steamId", "steam:1100001xxxxxxxx")
```

Get player from his steamId
```lua
local player = exports.ft_players:GetPlayerFromSteamId("steam:1100001xxxxxxxx")
player:Set({ {"steamId", "steam:1100001xxxxxxxx"}, { "id", 3 } })
```
