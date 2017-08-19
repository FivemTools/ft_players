# AddPlayerMethod

AddPlayerMethod(name, function)

## Description

This function will help to you avoid the exports or events. It injects a function into the player to make it available everywhere else on your server.
For example, you can inject into player the function GetSteamId, and everytime you'll use let's say player = GetPlayerFromServerID, you'll be able to use a function that normaly use GetSteamId.

```lua
AddPlayerMethod('GetSteamId', function(self)
	local steamId = self.steamId
    return steamId
end)
```

Meaning you'll be able to do everywhere else :
```lua
local player = GetPlayerFromServerId(1)
player:steamId()
```
