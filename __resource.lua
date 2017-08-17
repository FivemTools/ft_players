--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

dependencies {
  "mysql-async",
  "ft_utils",
}

client_scripts {

  -- Require
  "@ft_utils/utils.lua", -- Utils

  "settings.client.lua",

  "src/player.client.lua",
  "src/init.client.lua",

}

server_scripts {

  -- Require
  "@mysql-async/lib/MySQL.lua", -- Mysql
  "@ft_utils/utils.lua", -- Utils

  "version.lua",
  "settings.server.lua",

  "src/player.server.lua",
  "src/players.server.lua",
  "src/init.server.lua",

}

exports {
  "GetPlayer",
  "SetPlayer",
}

server_exports {
  "GetPlayers",
  "GetPlayerFormSteamId",
  "GetPlayerFormId",
  "AddPlayerMethod",
}
