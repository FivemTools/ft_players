--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

Players = {}
TmpPlayers = {}


-- 
AddEventHandler("playerConnecting", function(playerName, setCallback)

  local steamId = getSteamId(source)

  -- Check if player is in player table
  local checkAccess = PlayerIsAllowed(steamId)
  if type(checkAccess) == "string" then
    setCallback(checkAccess .. " (steamId: " .. steamId .. ")")
    CancelEvent()
    return
  else
    TriggerEvent('ft_gamemode:ClFirstJoinProper')
  end

end)

-- -- Get All players
-- function GetPlayers()

--   return Players

-- end

-- -- Get Player infos
-- function GetPlayer(source)

--   return Players[source]

-- end

-- -- Add Player in player list
-- function AddPlayer(steamId, source)

--   Players[source] = TmpPlayers[steamId]
--   Players[source].source = source
--   TmpPlayers[steamId] = nil

-- end

-- -- Remove for the list player
-- function RemovePlayer(source)

--   Players[source] = nil

-- end

-- -- Check if is in the list player
-- function PlayerExist(source)

--   if (Players[source] == nil) then
--     return false
--   else
--     return true
--   end

-- end

-- -- Check if is in the list player
-- function TmpPlayerExist(source)

--   if (TmpPlayers[source] == nil) then
--     return false
--   else
--     return true
--   end

-- end

-- -- Remove int Tmp list
-- function RemoveTmpPlayer(source)

--   TmpPlayers[source] = nil

-- end

-- -- Check if player is allowed for
-- function PlayerIsAllowed(steamId)

--   -- Player
--   local player = Player(steamId)
--   player.Init() -- Get Player data or create is not exit

--   -- TODO : Dynamic checks
--   return true

-- end

-- -- Event before player join
-- AddEventHandler("playerConnecting", function(playerName, setCallback)

--   local steamId = getSteamId(source)

--   -- Check if player is in player table
--   local checkAccess = PlayerIsAllowed(steamId)
--   if type(checkAccess) == "string" then
--     setCallback(checkAccess .. " (steamId: " .. steamId .. ")")
--     CancelEvent()
--     return
--   else
--     TriggerEvent('ft_gamemode:ClFirstJoinProper')
--   end

-- end)

-- -- Event before player leave
-- AddEventHandler('playerDropped', function()

--   if PlayerExist(source) then
--     RemovePlayer(source)
--   end

--   if TmpPlayerExist(source) then
--     RemoveTmpPlayer(source)
--   end

-- end)

-- -- Get All players
-- RegisterServerEvent("ft_gamemode:SvGetPlayers")
-- AddEventHandler("ft_gamemode:SvGetPlayers", function(callback)

--   local players = GetPlayers()
--   callback(players)

-- end)

-- -- Get All player data
-- RegisterServerEvent("ft_gamemode:SvGetPlayer")
-- AddEventHandler("ft_gamemode:SvGetPlayer", function(source, callback)

--   local player = GetPlayer(source)
--   callback(player)

-- end)

-- -- Get Player infos
-- RegisterServerEvent("ft_gamemode:SvGetPlayerData")
-- AddEventHandler("ft_gamemode:SvGetPlayerData", function(source, name, callback)

--   local player = GetPlayer(source)
--   local data = player[name]
--   callback(data)

-- end)

-- -- Set Player data
-- RegisterServerEvent("ft_gamemode:SvSetPlayerData")
-- AddEventHandler("ft_gamemode:SvSetPlayerData", function(source, data)

--   -- Send to client
--   TriggerClientEvent("ft_gamemode:ClSetPlayerData", source, data)
--   local player = GetPlayer(source)
--   player.Set(data)

-- end)

-- -- Kick player
-- RegisterServerEvent("ft_gamemode:SvKickPlayer")
-- AddEventHandler("ft_gamemode:SvKickPlayer", function(source, reason)

--   local player = GetPlayer(source)
--   player.Kick(reason)

-- end)