local Ingredientes = GLOBAL.Ingredient
local Receta = GLOBAL.RECIPETABS
local Tech = GLOBAL.TECH
local STRINGS = GLOBAL.STRINGS
PrefabFiles = {
    "silk",
    "pigskin",
    "tentaclespike",
    "walrus_tusk",
}

GLOBAL.STRINGS.NAMES.SILK = "Silk"
GLOBAL.STRINGS.NAMES.PIGSKIN = "Pig skin"
GLOBAL.STRINGS.NAMES.TENTACLESPIKE = "Tentacle Spike"
GLOBAL.STRINGS.NAMES.WALRUS_TUSK = "Walrus Tusk"

STRINGS.RECIPE_DESC.GEARS = "A pile of mechanical parts."
STRINGS.RECIPE_DESC.SILK = "It comes from a spider's butt."
STRINGS.RECIPE_DESC.PIGSKIN = "It still has the tail on it."
STRINGS.RECIPE_DESC.TENTACLESPIKE = "Perfect for sticking!."
STRINGS.RECIPE_DESC.WALRUS_TUSK = "I'll put this to better use."

AddRecipe("silk", { Ingredientes("rope", 6) }, Receta.REFINE, Tech.SCIENCE_ONE,nil,nil,nil,2)
AddRecipe("pigskin", { Ingredientes("rope", 2), Ingredientes("silk", 2), Ingredientes("meat", 2) }, Receta.REFINE, Tech.SCIENCE_ONE, nil, nil, nil, 2)
AddRecipe("tentaclespike", { Ingredientes("stinger", 5), Ingredientes("log", 2), Ingredientes("houndstooth", 2) }, Receta.WAR, Tech.SCIENCE_TWO)
AddRecipe("walrus_tusk", { Ingredientes("houndstooth", 10), Ingredientes("nightmarefuel", 2), Ingredientes("hammer", 1) }, Receta.REFINE, Tech.SCIENCE_TWO)

local RecDif = GetModConfigData("CHANGEDIFGears", 0)
if RecDif == 0 then
    AddRecipe("gears", { Ingredientes("flint", 3), Ingredientes("transistor", 2) }, Receta.REFINE, Tech.SCIENCE_TWO)
else
    if rec == 1 then
        AddRecipe("gears", { Ingredientes("nitre", 5), Ingredientes("transistor", 2), Ingredientes("cutstone", 5) }, Receta.REFINE, Tech.SCIENCE_TWO)
    else
        if RecDif == 2 then
            AddRecipe("gears", { Ingredientes("transistor", 5), Ingredientes("goldnugget", 5), Ingredientes("charcoal", 5) }, Receta.REFINE, Tech.SCIENCE_TWO)
        end
    end
end