--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

-- Event is emited after resource is loded
AddEventHandler('onServerResourceStart', function (resource)
    if resource == "ft_players" then

        -- Convar
        Settings.debug = GetConvar("ft_player_debug", tostring(Settings.debug)) == "true" and true or false

        -- Send event
        TriggerEvent('ft_players:onResourceReady')

    end
end)

-- Event is emited after client is 100% loaded games
RegisterServerEvent("ft_players:onClientReady")
AddEventHandler('ft_players:onClientReady', function()

  local source = source
  local steamId = getSteamId(source)
  local player = {}

  -- Add player in player table
  if not PlayerExist(serverId) then
    player = Player.New({ steamId = steamId, source = source })
    AddPlayer(source, player)
  else
    player = Players[source]
  end

  if Settings.debug then
    print("-----=====[ DEBUG ]=====-----")
    print("[player] data in database")
    tprint(player)
    print("-----------------------------")
  end

  -- Send to client
  TriggerClientEvent("ft_players:SetPlayer", source, player)

  -- Send playerReadyToJoin event
  TriggerClientEvent("ft_players:playerReadyToJoin", source)
  TriggerEvent("ft_players:playerReadyToJoin", source)

end)

-- Event before player leave
AddEventHandler('playerDropped', function()

  local source = source
  local player = GetPlayerFromServerId(source)

  -- Execute after player dropped
  for _, callback in pairs(PlayerDrop) do
    callback(player)
  end

  -- Remove in player list
  if PlayerExist(source) then
    RemovePlayer(source)
  end

end)
