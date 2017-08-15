--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

-- Client is 100% loaded games
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)

    if NetworkIsSessionStarted() then

      TriggerServerEvent('ft_players:onClientReady')
      TriggerEvent('ft_players:onClientReady')
      break

    end

  end
end)

-- Debug
RegisterNetEvent("ft_players:Debug")
AddEventHandler("ft_players:Debug", function()
  Settings.debug = true
end)
