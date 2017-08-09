-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players

-- Event is emited after client is 100% loded games
RegisterServerEvent("ft_gamemode:SvFirstJoinProper")
AddEventHandler('ft_gamemode:SvFirstJoinProper', function()

  local steamId = getSteamId(source)

  -- Add player in player table
  if not PlayerExist(source) then
    AddPlayer(steamId, source)
  end

  -- Send to player
  local player = GetPlayer(source)
  playerData = player.data
  playerData.steamId = nil
  playerData.createdAt = nil
  playerData.ban = nil
  playerData.whitelist = nil
  playerData.source = player.source

  -- Send to player client
  TriggerClientEvent("ft_gamemode:ClSetPlayerData", source, playerData)

  -- Send client ready
  TriggerClientEvent('ft_gamemode:ClReady', source)

end)