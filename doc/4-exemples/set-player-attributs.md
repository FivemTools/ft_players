# Set Player Attributs

## Client

Set steamId only
```lua
SetPlayer("steamId", "steam:1100001xxxxxxxx")
```

Set steamId and id
```lua
SetPlayer({ {"steamId", "steam:1100001xxxxxxxx"}, { "id", 3 } })
```

## Server

Get player from his id
```lua
local player = GetPlayerFromServerId(1)
player:Set("steamId", "steam:1100001xxxxxxxx")
```

Get player from his steamId
```lua
local player = GetPlayerFromSteamId("steam:1100001xxxxxxxx")
player:Set({ {"steamId", "steam:1100001xxxxxxxx"}, { "id", 3 } })
```
