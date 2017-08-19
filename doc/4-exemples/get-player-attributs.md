# Get Player Attributs

## Client

Get all attributs
```lua
local player = GetPlayer()
```

Get steamId only
```lua
local player = GetPlayer("steamId")
```

Get steamId and id
```lua
local player = GetPlayer({ "steamId", "id" })
```

## Server

Get all player in server
```lua
local player = GetPlayers()
```

Get player form source (server id) and get steamId
```lua
local player = GetPlayerFormSource(1)
local steamId = player.steamId
```

Get player form steamId and get createdAt
```lua
local player = GetPlayerFormSteamId("steam:1100001xxxxxxxx")
local createdAt = player.createdAt
```
