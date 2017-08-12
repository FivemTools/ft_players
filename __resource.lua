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

  "src/init.client.lua",

}

server_scripts {

  -- Require
  "@mysql-async/lib/MySQL.lua", -- Mysql
  "@ft_utils/utils.lua", -- Utils

  "version.lua",
  "src/init.server.lua",

}

exports {}

server_exports {}
