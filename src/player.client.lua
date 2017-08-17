--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

Player = {}

--
-- Functions
--

-- Get player atributs
function GetPlayer(...)

  local arg = {...}

  if #arg == 1 and type(arg[1]) == "table" then

    local table = {}
    for _, name in pairs(arg[1]) do
      table[name] = Player[name]
    end
    return table

  elseif #arg == 1 then

    local name = arg[1]
    return Player[name]

  end

end

-- Set player atributs
function SetPlayer(...)

  local arg = {...}
  local data = {}

  if #arg == 1 and type(arg[1]) == "table" then

    for name, value in pairs(arg[1]) do
      Player[name] = value
      data[name] = value
    end

  elseif #arg == 2 then

    local name = arg[1]
    local value = arg[2]
    Player[name] = value
    data[name] = value

  end

end

-- Send to client
function PlayerUpdated()
  TriggerServerEvent("ft_players:PlayerUpdated", Player)
end

--
-- Events
--

-- Set player atributs
RegisterNetEvent("ft_players:SetPlayer")
AddEventHandler("ft_players:SetPlayer", function(...)
  SetPlayer(...)
end)
