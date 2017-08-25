# Add player method

## Server

## Exemple

Your ressource :
```lua
AddEventHandler('ft_players:onResourceReady', function ()

  -- Get steamId
  AddPlayerMethod('GetSteamId', function(self)
    return self.steamId
  end)

  -- Set steamId
  AddPlayerMethod('SetSteamId', function(self, steamId)
    self:Set("steamId", steamId)
  end)

end)
```

In Player:
```lua
local player = GetPlayerFromServerId(4)

-- Set steamId
player:SetSteamId("steam:1100001xxxxxxxx")

-- Get steamId
player:GetSteamId()
```
