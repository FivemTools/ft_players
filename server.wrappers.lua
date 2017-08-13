--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

function GetPlayers()
  return exports.ft_players:GetPlayer()
end

function GetPlayerFormId(id)
  return exports.ft_players:GetPlayerFormId(id)
end

function GetPlayerFormSteamId(steamId)
  return exports.ft_players:GetPlayerFormSteamId(steamId)
end