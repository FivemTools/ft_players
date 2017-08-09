-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players

-- Init player --
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)

    -- Complet join this server
    if NetworkIsSessionStarted() then

      -- Players --
      Player = {}

      -- Events --
      TriggerServerEvent('ft_gamemode:SvFirstJoinProper') -- send to server
      TriggerEvent('ft_gamemode:ClFirstJoinProper') -- send to client

      break
    end
  end
end)