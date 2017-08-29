# Add player method

## Server

## Exemple

Your ressource :
```lua
AddEventHandler('ft_players:onResourceReady', function ()

  -- Get steamId
  exports.ft_players:AddPlayerMethod('GetSteamId', function(self)
    return self.steamId
  end)

  -- Set steamId
  exports.ft_players:AddPlayerMethod('SetSteamId', function(self, steamId)
    self:Set("steamId", steamId)
  end)

end)
```

In Player:
```lua
local player = exports.ft_players:GetPlayerFromServerId(4)

-- Set steamId
player:SetSteamId("steam:1100001xxxxxxxx")

-- Get steamId
player:GetSteamId()
```
