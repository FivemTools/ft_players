--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

Players = {}

--
-- Function
--

-- Check if is in the list player
function PlayerExist(source)

  if (type(Players[source]) == "nil") then
    return false
  else
    return true
  end

end

-- Add Player in player list
function AddPlayer(source, player)
  Players[source] = player
end

-- Remove Player in player list
function RemovePlayer(source)
  Players[source] = nil
end

-- Get all player
function GetPlayers()
  return Players
end

-- Get player by steamId
function GetPlayerFromSteamId(steamId)
  local player = Player.new({ steamId = steamId })
  return player
end

-- Get player by serverId (source)
function GetPlayerFromServerId(serverId)
  return Players[serverId]
end

--
-- Events
--

-- Set player data
RegisterServerEvent('ft_players:SetPlayer')
AddEventHandler('ft_players:SetPlayer', function(...)

  local player = Players[source]
  player:Set(...)

end)

-- Set player data
RegisterServerEvent('ft_players:PlayerUpdated')
AddEventHandler('ft_players:PlayerUpdated', function(data)

  local change = {}
  local player = Players[source]

  for name, value in pairs(data) do
    if player[name] ~= value then
      change[name] = value
    end
  end

  player:Set(change)

  tprint(change)

end)
