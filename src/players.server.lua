--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

Players = {}

-- Check if is in the list player
function PlayerExist(source)

  local id = source
  if (Players[id] == nil) then
    return false
  else
    return true
  end

end

-- Add Player in player list
function AddPlayer(id, player)
  Player[id] = player
end

-- Remove Player in player list
function RemovePlayer(id)
  Player[id] = nil
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

-- Get player by id (source)
function GetPlayerFormId(id)
  return Player[id]
end
