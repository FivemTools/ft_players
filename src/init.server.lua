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

  local steamId = getSteamId(source)

  -- Add player in player table
  if not PlayerExist(source) then

    local player = Player.new({ steamId = steamId, source = source })
    AddPlayer(source, player)

  end

  -- Send playerReadyToJoin event
  TriggerClientEvent("ft_players:playerReadyToJoin", source)
  TriggerEvent("ft_players:playerReadyToJoin")

end)

-- Event before player leave
AddEventHandler('playerDropped', function()

  if PlayerExist(source) then
    RemovePlayer(source)
  end

end)
