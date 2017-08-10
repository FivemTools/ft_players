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

  -- local steamId = getSteamId(source)

  -- Add player in player table
  -- if not PlayerExist(source) then
  --   AddPlayer(steamId, source)
  -- end

  -- Send to player
  -- local player = GetPlayer(source)
  -- playerData = player.data
  -- playerData.steamId = nil
  -- playerData.createdAt = nil
  -- playerData.ban = nil
  -- playerData.whitelist = nil
  -- playerData.source = player.source

  -- Send ft_players:playerReadyToJoin event
  TriggerClientEvent("ft_players:playerReadyToJoin", source)
  TriggerEvent("ft_players:playerReadyToJoin")

end)