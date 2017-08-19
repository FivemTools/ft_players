# Get Player Attributs

## Client

Get all the attributes of the player
```lua
local player = GetPlayer()
```

Get only the steamId
```lua
local player = GetPlayer("steamId")
```

Get the steamId and the id of a player
```lua
local player = GetPlayer({ "steamId", "id" })
```

## Server

Get all the players online on the server
```lua
local player = GetPlayers()
```

Get player from serverId (source) and get his steamId
```lua
local player = GetPlayerFromServerId(1)
local steamId = player.steamId
```

Get player from his steamId and get createdAt
```lua
local player = GetPlayerFromSteamId("steam:1100001xxxxxxxx")
local createdAt = player.createdAt
```
