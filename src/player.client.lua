--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

Player = {}

function GetPlayer()
  return Player
end

-- Get value by key
function Get(name)
  return Player[name]
end

-- Set value
function Set(..)

  local arg = {...}

  if #arg == 1 and type(arg[1]) == "table" then

  for name, value in pairs(data) do
    Player[name] = value
  end

  elseif #arg == 2 then

    local name = arg[1]
    local value = arg[2]
    Player[name] = value

  end

end
