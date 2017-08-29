# SetPlayer

SetPlayer(attribut, value) -- Set specific attribut
SetPlayer({ {attribut, value} , {...} }) -- Set specific attribut

## Description

Function to set a value to an attribute of a player.

## Exemples

```lua
exports.ft_players:SetPlayer("steamId", "steam:1100001xxxxxxxx") -- Set specific attribut
exports.ft_players:SetPlayer({ {"steamId", "steam:1100001xxxxxxxx"}, {..., ...}, ... }) -- Set specific attribut
```
