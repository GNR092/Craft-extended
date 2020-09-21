name = "Craft extended"
description = "Adds Most Craft (silk,pigskin,tentaclespike,walrus tusk,gears)."
-- Mod Authors
author = "GNR092"

-- Mod Version
version = "1.12"

--[[

	CHANGE NOTES:

	Version 0.0.1:
	Release
	
--]]

-- Left blank until we get to a point where we are going to release this mod.
forumthread = ""

-- Don't Starve API version.
-- Note: We set this to 10 so that it's incompatible with single player.
api_version = 10

-- Don't Starve Together API version.
api_version_dst = 10

-- Priority of which our mod will be loaded.
priority = 0

-- Engine Compatibility
-- Don't Starve Vanilla
dont_starve_compatible = false
-- Don't Starve: Reign of Giants
reign_of_giants_compatible = false
-- Don't Starve Together
dst_compatible = true

-- Requirements
-- Client only gets benefits.
client_only_mod = false
-- All clients require mod to get benefits.
all_clients_require_mod = true

-- Server tags for our mod.
server_filter_tags =
{
	"gears",
    "GNR092",
    "Craft Extended",
    "craft",
    "extended",
}

-- Mod icon files.
icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- Configrations for our mod.
configuration_options = 
{
    {
        name = "CHANGEDIFGears",
        label = "Dificultad del crafteo",
        hover = "Cambia la dificultad de crafteo de los Gears(Engranes).",
        options = 
        {
            {description = "Facil (Default)", data = 0, hover = "Dificultad facil"},
            {description = "Medio", data = 1, hover = "Dificultad Medio"},
            {description = "Dificil", data = 2, hover = "Dificultad Dificil"},
        },
        default = 0,
    },
    --[[{
        name = "CHANGEDIFPig",
        label = "Dificultad del crafteo",
        hover = "Cambia la dificultad del crarft de Pig Skin",
        options =
        {
            {description = "Facil (Default)", data = 0, hover = "Dificultad facil"},
            {description = "Medio", data = 1, hover = "Dificultad Medio"},
            {description = "Dificil", data = 2, hover = "Dificultad Dificil"},
        },
        default = 0,
    },
    {
        name = "CHANGEDIFSilk",
        label = "Dificultad del crafteo",
        hover = "Cambia la dificultad del crarft de Silk",
        options =
        {
            {description = "Facil (Default)", data = 0, hover = "Dificultad facil"},
            {description = "Medio", data = 1, hover = "Dificultad Medio"},
            {description = "Dificil", data = 2, hover = "Dificultad Dificil"},
        },
        default = 0,
    },]]--
}