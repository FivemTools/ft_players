--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

Player = {}

--
-- Class
--

-- Select player in database
function Player:SelectPlayerInDB()

  local steamId = self.steamId
  local result = MySQL.Sync.fetchAll("SELECT * FROM players WHERE steamId = @steamId", { ['@steamId'] = self.steamId } )
  return result[1]

 end

-- Create player in database
function Player:CreatePlayerInDB()

  local date = os.date("%Y-%m-%d %X")
  local result = MySQL.Sync.execute("INSERT INTO players (`steamId`, `createdAt`) VALUES (@steamId, @date)", { ['@steamId'] = self.steamId, ['@date'] = date } )
  return result

end

-- Get or create player data
function Player:Init()

  local player = self:SelectPlayerInDB()

  if player == nil then

    local insertPlayer = self:CreatePlayerInDB()
    if insertPlayer then
      player = self:SelectPlayerInDB()
    else
      print("[ft_players] Insertion failed for steamId : " .. steamId)
    end
  end

  for name, value in pairs(player) do
    self[name] = value
  end

end

function Player:Set(...)

  local arg = {...}

  if #arg == 1 and type(arg[1]) == "table" then

  for name, value in pairs(data) do
    self.data[name] = value
  end

  elseif #arg == 2 then

    local name = arg[1]
    local value = arg[2]
    self.data[name] = value

  end

end

function Player:Save(data)

  data = data or self.data

  local str_query = ""
  local count = 0

  for column, value in pairs(data) do
    if column ~= "id" and column ~= "steamId" and column ~= "createdAt" and column ~= "source" then

      if count ~= 0 then
        str_query = str_query .. ", "
      end

      str_query = str_query .. tostring(column) .. " = " .. tostring(value)
      count = count + 1
    end
  end

  MySQL.Sync.execute("UPDATE players SET " .. str_query .. " WHERE steamId = @steamId", { ['@steamId'] = self.steamId } )

end

--
-- Static
--

-- Create instance of player
function Player.new(data)

  local player = setmetatable(data, { __index = Player })
  player:Init()

  return player

end
