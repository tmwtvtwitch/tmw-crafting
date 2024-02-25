local QBCore = exports['qb-core']:GetCoreObject()

-- Weapon Crafting Ingredients

-- Pistol Mk2 callback and event
QBCore.Functions.CreateCallback('tmw-crafting:server:ingredientweapon_pistol', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local iron = Player.Functions.GetItemByName("iron")
    local aluminum = Player.Functions.GetItemByName("aluminum")
    local rubber = Player.Functions.GetItemByName("rubber")
    local pistolBP = Player.Functions.GetItemByName("pistol_blueprint")

    -- Check if the player has the required amount of each item
    if metalscrap ~= nil and metalscrap.amount >= 90 and
       steel ~= nil and steel.amount >= 100 and
       iron ~= nil and iron.amount >= 50 and
       aluminum ~= nil and aluminum.amount >= 90 and
       rubber ~= nil and rubber.amount >= 65 and
       pistolBP ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('tmw-crafting:server:finishweapon_pistol', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("steel", 100)
    Player.Functions.RemoveItem("rubber", 65)
    Player.Functions.RemoveItem("metalscrap", 90)
    Player.Functions.RemoveItem("iron", 50)
    Player.Functions.RemoveItem("aluminum", 90)
    Player.Functions.RemoveItem("pistol_blueprint", 1)
    
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["weapon_pistol_mk2"], "add")
    Player.Functions.AddItem('weapon_pistol_mk2', 1)
    TriggerClientEvent('QBCore:Notify', source, 'You have crafted a pistol', 'success')
end)