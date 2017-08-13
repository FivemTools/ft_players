--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

Players = {}

-- Check if is in the list player
function PlayerExist(source)

  if (Players[source] == nil) then
    return false
  else
    return true
  end

end

-- Add Player in player list
function AddPlayer(source, player)
  Player[source] = player
end

-- Remove Player in player list
function RemovePlayer(source)
  Player[source] = nil
end

-- Get all player
function GetPlayers()
  return Player
end

-- Get player by steamId
function GetPlayerFormSteamId(steamId)
  local player = Player.new({ steamId = steamId })
  return player
end

-- Get player by source
function GetPlayerFormSource(source)
  return Player[source]
end
