-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players

-- Send client
RegisterNetEvent('ft_gamemode:ClReady')
AddEventHandler('ft_gamemode:ClReady', function()
  Citizen.CreateThread(function()

    TriggerEvent('ft_gamemode:ClLoaded')

  end)
end)

-- Set player data
RegisterNetEvent('ft_gamemode:ClSetPlayerData')
AddEventHandler('ft_gamemode:ClSetPlayerData', function(data)

  if type(data) == "table" then
    for name, value in pairs( data ) do
      Player[name] = value
    end
  end

end)

-- Get all data in player client
function GetPlayerData(name)

  if name ~= nil then
    return Player[name]
  else
    return Player
  end

end

-- Set data in player client
function SetPlayerData(name, value)

  Player[name] = value

end
