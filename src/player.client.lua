--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

Player = {}

function GetPlayer(..)

  local arg = {...}

  if #arg == 1 and type(arg[1]) == "table" then

    local table = {}
    for _, name in pairs(arg[1]) do
      table[name] = Player[name]
    end

  elseif #arg == 1 then

    local name = arg[1]
    return Player[name]

  end

end

-- Set value
function SetPlayer(..)

  local arg = {...}

  if #arg == 1 and type(arg[1]) == "table" then

    for name, value in pairs(arg[1]) do
      Player[name] = value
    end

  elseif #arg == 2 then

    local name = arg[1]
    local value = arg[2]
    Player[name] = value

  end

end
