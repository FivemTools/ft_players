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

Get player form serverId (source) and get steamId
```lua
local player = GetPlayerFromServerId(1)
local steamId = player.steamId
```

Get player form steamId and get createdAt
```lua
local player = GetPlayerFromSteamId("steam:1100001xxxxxxxx")
local createdAt = player.createdAt
```
