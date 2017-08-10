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

  "settings.lua",
  -- "src/player.client.lua",
  -- "src/playerEvents.client.lua",
  "src/init.client.lua",

}

server_scripts {

  -- Require
  "@mysql-async/lib/MySQL.lua", -- Mysql
  "@ft_utils/utils.lua", -- Utils

  "settings.lua",
  -- "src/sv_player.server.lua",
  -- "src/sv_players.server.lua",
  "src/init.server.lua",

}

exports {

  -- "SetPlayerData",
  -- "GetPlayerData",

}

server_exports {

  -- "GetPlayers",
  -- "GetPlayer",
  -- "PlayerExist",

}
