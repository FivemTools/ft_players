# Add player drop

## Server

Your ressource :
```lua
AddEventHandler('ft_players:onResourceReady', function ()

  AddPlayerDrop(function(self)
    print(self.steamId .. " Player drop")
  end)

end)
```
