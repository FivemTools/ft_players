--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

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