# Add player drop

## Server

Your ressource :
```lua
AddEventHandler('ft_players:onResourceReady', function ()

  exports.ft_players:AddPlayerDrop(function(self)
    print(self.steamId .. " Player drop")
  end)

end)
```
