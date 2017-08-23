# AddPlayerMethod

AddPlayerMethod(name, function)

## Description

This function will help to you avoid the exports or events. It injects a function into the player to make it available everywhere else on your server.

```lua
AddPlayerMethod('GetSteamId', function(self)
  -- Your code
end)
```
