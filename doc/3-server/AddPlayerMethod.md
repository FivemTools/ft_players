# AddPlayerMethod

AddPlayerMethod(name, function)

## Description

This function will help to you avoid the exports or events. It injects a function into the player to make it available everywhere else on your server.

## Exemple

```lua
exports.ft_players:AddPlayerMethod('GetSteamId', function(self)
  -- Your code
end)
```
