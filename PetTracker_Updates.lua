if not PetTracker_Spots then
    DEFAULT_CHAT_FRAME:AddMessage("PetTracker Updates: PetTracker addon not loaded!", 1.0, 0.1, 0.1)
    return
end

-- 5.3
local newPets = {
    -- Pocket Reaver, Lesser Voidcaller, Phoenix Hawk Hatchling
    [479] = {[1233] = {736,637}, [1234] = {736,637}, [1235] = {736,637}}, -- Netherstorm
    [782] = {[1233] = {0,0}, [1234] = {0,0}, [1235] = {0,0}}, -- Tempest Keep
    -- Val'kyr
    [486] = {[1238] = {477,078,328,602,809,484}}, -- Borean Tundra
    [488] = {[1238] = {268,541,654,357,821,660}}, -- Dragonblight
    [490] = {[1238] = {259,569,795,518,617,181}}, -- Grizzly Hills
    [491] = {[1238] = {718,433,682,675,459,431}}, -- Howling Fjord
    [492] = {[1238] = {736,649,442,336,483,871}}, -- Icecrown
    [493] = {[1238] = {583,221,369,193,445,694}}, -- Sholazar Basic
    [495] = {[1238] = {418,788,652,418,291,514}}, -- Storm Peaks
    [496] = {[1238] = {244,639,577,396,753,231}}, -- Zul'Drak
    [510] = {[1238] = {175,572,433,441,681,491}}, -- Crystalsong Forest
    -- Filthling
    [928] = {[1245] = {509,807}}, -- Isle of Thunder
    -- Direhorn Runt
    [929] = {[1205] = {352,751}}, -- Isle of Giants
}

for zoneID, zone in pairs(newPets) do
    if nil == PetTracker_Spots[zoneID] then
        PetTracker_Spots[zoneID] = {}
    end
    for petID, coords in pairs(zone) do
        for k, v in ipairs(coords) do coords[k] = string.format("%x", v) end
        PetTracker_Spots[zoneID][petID] = {[0] = table.concat(coords, ":")}
    end
end

