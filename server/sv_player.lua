-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players

-- Constructor
function Player (steamId, source)

  local self = {}
  self.source = source
  self.steamId = steamId
  self.data = {}

  self.GetDatas = function()

    return self.data

  end

  self.Get = function(name)

    return self.data[name]

  end

  self.Set = function(data)

    for name, value in pairs(data) do
      self.data[name] = value
    end
    self.Save(data)

  end

  self.SelectPlayerInDB = function()

    local steamId = self.steamId
    local result = MySQL.Sync.fetchAll("SELECT * FROM players WHERE steamId = @steamId", { ['@steamId'] = self.steamId } )
    return result[1]

  end

  self.CreatePlayerInDB = function()

    local date = os.date("%Y-%m-%d %X")
    local result = MySQL.Sync.execute("INSERT INTO players (`steamId`, `createdAt`) VALUES (@steamId, @date)", { ['@steamId'] = self.steamId, ['@date'] = date } )
    return result

  end

  self.Init = function()

    local player = self.SelectPlayerInDB()

    if player == nil then

      print("[Info] Player not exit in database")

      local insertPlayer = self.CreatePlayerInDB()
      if insertPlayer then
        player = self.SelectPlayerInDB()
      else
        print("[ERROR] Insertion failed for steamId : " .. steamId)
      end
    end

    self.data = player

  end

  self.Save = function(data)

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

  self.Kick = function(reason)

    DropPlayer(self.source, reason)

  end

  return self

end
