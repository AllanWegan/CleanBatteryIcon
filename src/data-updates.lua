--[[
This file is part of the mod ConfigLampTimes that is licensed under the
GNU GPL-3.0 or later. See the file COPYING for a copy of the GNU GPLv3.0.
]]

function set_icon(prototype, path, size, mipmaps, tint, scale, shift)
    if prototype then
        prototype.icon, prototype.icon_size = path, size
        prototype.icon_mipmaps, prototype.tint = mipmaps, tint
        prototype.scale, prototype.shift = scale, shift
    end
end

set_icon(data.raw.item["battery"], "__CleanBatteryIcon__/battery-blue.png", 64)

-- Bio Industries:
if mods["Bio_Industries"] then
    -- Bio Industries just adds a new recipe for the vanilla battery.
    -- So just use the green icon for the recipe and the vanilla battery:
    -- If bobplates is also present, it will overwrites the item icon, 
    -- but not the recipe icon.
    set_icon(data.raw.item["battery"]
    , "__CleanBatteryIcon__/battery-green.png", 64)
    
    -- Recipe name in version 0.18.00:
    set_icon(data.raw.recipe["bi_recipe_battery"]
    , "__CleanBatteryIcon__/battery-green.png", 64)
    
    -- Recipe name in version > 0.18.00:
    set_icon(data.raw.recipe["bi-battery"]
    , "__CleanBatteryIcon__/battery-green.png", 64)
end

-- Bobs:
if mods["bobplates"] then
    set_icon(data.raw.item["battery"]
    , "__CleanBatteryIcon__/battery-red.png", 64)
    set_icon(data.raw.item["lithium-ion-battery"]
    , "__CleanBatteryIcon__/battery-blue.png", 64)
    set_icon(data.raw.item["silver-zinc-battery"]
    , "__CleanBatteryIcon__/battery-purple.png", 64)
end
