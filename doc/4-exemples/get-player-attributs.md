# Get Player Attributs

## Client

Get all the attributes of the player
```lua
local player = exports.ft_players:GetPlayer()
player.steamId -- Get steamId
player.id -- Get id
```

Get only the steamId
```lua
local player = exports.ft_players:GetPlayer("steamId")
player.steamId -- Get steamId
```

Get the steamId and the id of a player
```lua
local player = exports.ft_players:GetPlayer({ "steamId", "id" })
player.steamId -- Get steamId
player.id -- Get id
```

## Server

Get all the players online on the server
```lua
local players = exports.ft_players:GetPlayers()
for _, player in pairs(players) do
  player.steamId -- Get SteamId
  player.id -- Get id
end
```

Get player from serverId (source) and get his steamId
```lua
local player = exports.ft_players:GetPlayerFromServerId(1)
player.steamId
```

Get player from his steamId and get createdAt
```lua
local player = exports.ft_players:GetPlayerFromSteamId("steam:1100001xxxxxxxx")
player.steamId
```
