--
-- @Project: FiveM Tools
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/FivemTools/ft_players
--

--
-- Client
--

-- Wrappers version
local player = GetPlayer() -- Get all attributs

local steamId = GetPlayer("steamId") -- Get steamId only

local attributs = GetPlayer({ "steamId", "id" }) -- Get steamId and id

-- Exports version
local player = exports.ft_players:GetPlayer() -- Get all attributs

local steamId = exports.ft_players:GetPlayer("steamId") -- Get steamId only

local attributs = exports.ft_players:GetPlayer({ "steamId", "id" }) -- Get steamId and id

--
-- Server
--

-- Wrappers version
local players = GetPlayers() -- Get all player in server

local player = GetPlayerFormId(1) -- Get player form id
player:Set("steamId", "steam:1100001xxxxxxxx")

local player = GetPlayerFormSteamId("steam:1100001xxxxxxxx") -- Get player form steamId
player:Set({ {"steamId", "steam:1100001xxxxxxxx"}, { "id", 3 } })

-- Exports version
local players = exports.ft_players:GetPlayers() -- Get all player in server

local player = exports.ft_players:GetPlayerFormId(1) -- Get player form id
player:Set("steamId", "steam:1100001xxxxxxxx")

local player = exports.ft_players:GetPlayerFormSteamId("steam:1100001xxxxxxxx") -- Get player form steamId
player:Set({ {"steamId", "steam:1100001xxxxxxxx"}, { "id", 3 } })