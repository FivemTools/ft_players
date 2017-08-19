# Set Player Attributs

## Client

Get all attributs
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

Get all player in server
```lua
local players = GetPlayers()
```

Get player form id
```lua
local player = GetPlayerFormSource(1)
player:Set("steamId", "steam:1100001xxxxxxxx")
```

Get player form steamId
```lua
local player = GetPlayerFormSteamId("steam:1100001xxxxxxxx")
player:Set({ {"steamId", "steam:1100001xxxxxxxx"}, { "id", 3 } })
```
