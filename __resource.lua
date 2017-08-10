--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

client_scripts {

  "settings.lua",
  -- "client/cl_player.lua",
  -- "client/cl_playerEvents.lua",
  "client/cl_init.lua",

}

server_scripts {

  "@mysql-async/lib/MySQL.lua",

  "settings.lua",
  -- "server/sv_player.lua",
  -- "server/sv_players.lua",
  "server/sv_init.lua",

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
