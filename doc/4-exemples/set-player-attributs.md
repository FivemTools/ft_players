# Set Player Attributs

## Client

Get all the attributes of a player
```lua
local player = GetPlayer()
```

Get steamId only
```lua
local steamId = GetPlayer("steamId")
```

Get steamId and id
```lua
local attributs = GetPlayer({ "steamId", "id" })
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
