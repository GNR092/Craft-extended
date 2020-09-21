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



local RecDif = GetModConfigData("CHANGEDIFRecipes", 1)
if RecDif == 0 then
        AddRecipe("silk", { Ingredientes("rope", 3) }, Receta.REFINE, Tech.SCIENCE_ONE,nil,nil,nil,2)
        AddRecipe("pigskin", { Ingredientes("rope", 2), Ingredientes("silk", 1), Ingredientes("meat", 1) }, Receta.REFINE, Tech.SCIENCE_ONE, nil, nil, nil, 2)
        AddRecipe("tentaclespike", { Ingredientes("stinger", 3), Ingredientes("log", 1), Ingredientes("houndstooth", 1) }, Receta.WAR, Tech.SCIENCE_TWO)
        AddRecipe("walrus_tusk", { Ingredientes("houndstooth", 5), Ingredientes("nightmarefuel", 2), Ingredientes("hammer", 1) }, Receta.REFINE, Tech.SCIENCE_TWO)
        AddRecipe("gears", { Ingredientes("flint", 3), Ingredientes("transistor", 2) }, Receta.REFINE, Tech.SCIENCE_TWO)
else
    if rec == 1 then
        AddRecipe("silk", { Ingredientes("rope", 6) }, Receta.REFINE, Tech.SCIENCE_ONE,nil,nil,nil,2)
        AddRecipe("pigskin", { Ingredientes("rope", 2), Ingredientes("silk", 2), Ingredientes("meat", 2) }, Receta.REFINE, Tech.SCIENCE_ONE, nil, nil, nil, 2)
        AddRecipe("tentaclespike", { Ingredientes("stinger", 5), Ingredientes("rope", 1), Ingredientes("log", 2), Ingredientes("houndstooth", 2) }, Receta.WAR, Tech.SCIENCE_TWO)
        AddRecipe("walrus_tusk", { Ingredientes("houndstooth", 10), Ingredientes("nightmarefuel", 2), Ingredientes("hammer", 1) }, Receta.REFINE, Tech.SCIENCE_TWO)
        AddRecipe("gears", { Ingredientes("nitre", 5), Ingredientes("transistor", 2), Ingredientes("cutstone", 5) }, Receta.REFINE, Tech.SCIENCE_TWO)
    else
        if RecDif == 2 then
            AddRecipe("silk", { Ingredientes("rope", 6), Ingredientes("meat", 2), Ingredientes("axe", 1) }, Receta.REFINE, Tech.SCIENCE_ONE,nil,nil,nil,2)
            AddRecipe("pigskin", { Ingredientes("rope", 3), Ingredientes("silk", 3), Ingredientes("meat", 2), Ingredientes("axe", 1) }, Receta.REFINE, Tech.SCIENCE_ONE, nil, nil, nil, 2)
            AddRecipe("tentaclespike", { Ingredientes("stinger", 6),Ingredientes("rope", 1), Ingredientes("log", 3), Ingredientes("houndstooth", 3) }, Receta.WAR, Tech.SCIENCE_TWO)
            AddRecipe("walrus_tusk", { Ingredientes("houndstooth", 11), Ingredientes("nightmarefuel", 3), Ingredientes("hammer", 1) }, Receta.REFINE, Tech.SCIENCE_TWO)
            AddRecipe("gears", { Ingredientes("transistor", 5), Ingredientes("goldnugget", 5), Ingredientes("charcoal", 5) }, Receta.REFINE, Tech.SCIENCE_TWO)
        end
    end
end