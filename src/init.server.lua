--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

-- Event is emited after resource is loded
AddEventHandler('onServerResourceStart', function (resource)
    if resource == "ft_players" then
        TriggerEvent('ft_players:onResourceReady')
    end
end)

-- Event is emited after client is 100% loaded games
RegisterServerEvent("ft_players:onClientReady")
AddEventHandler('ft_players:onClientReady', function()

  local serverId = source
  local steamId = getSteamId(serverId)

  -- Add player in player table
  if not PlayerExist(id) then
    local player = Player.new({ steamId = steamId, source = serverId })
    AddPlayer(serverId, player)
  else
    local player = Players[source]
  end

  -- Send to client
  TriggerClientEvent("ft_players:SetPlayer", source, player)

  -- Send playerReadyToJoin event
  TriggerClientEvent("ft_players:playerReadyToJoin", serverId)
  TriggerEvent("ft_players:playerReadyToJoin", serverId)

end)

-- Event before player leave
AddEventHandler('playerDropped', function()

  local serverId = source
  if PlayerExist(serverId) then
    RemovePlayer(serverId)
  end

end)
