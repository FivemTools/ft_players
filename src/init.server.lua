--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

AddEventHandler('onServerResourceStart', function (resource)
    if resource == "ft_players" then
        TriggerEvent('ft_players:onResourceReady')
    end
end)

-- Event is emited after client is 100% loded games
RegisterServerEvent("ft_players:onClientReady")
AddEventHandler('ft_players:onClientReady', function()

  local id = source
  local steamId = getSteamId(id)

  -- Add player in player table
  if not PlayerExist(id) then

    local player = Player.new({ steamId = steamId, id = id })
    AddPlayer(id, player)

  end

  -- Send playerReadyToJoin event
  TriggerClientEvent("ft_players:playerReadyToJoin", id)
  TriggerEvent("ft_players:playerReadyToJoin")

end)

-- Event before player leave
AddEventHandler('playerDropped', function()

  local id = source
  if PlayerExist(id) then
    RemovePlayer(id)
  end

end)
