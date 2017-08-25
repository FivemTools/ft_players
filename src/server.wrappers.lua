--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

function GetPlayers()
  return exports.ft_players:GetPlayer()
end

function GetPlayerFromServerId(source)
  return exports.ft_players:GetPlayerFormServerId(source)
end

function GetPlayerFromSteamId(steamId)
  return exports.ft_players:GetPlayerFromSteamId(steamId)
end

function AddPlayerMethod(name, method)
  return exports.ft_players:AddPlayerMethod(name, method)
end

function AddPlayerDrop()
  return exports.ft_players:AddPlayerDrop(callback)
end
