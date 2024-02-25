local QBCore = exports['qb-core']:GetCoreObject()

-- Shotgun Ammo callback and event
QBCore.Functions.CreateCallback('tmw-crafting:server:ingredientshotgun_ammo', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local iron = Player.Functions.GetItemByName("iron")
    local aluminum = Player.Functions.GetItemByName("aluminum")
    
    if metalscrap ~= nil and steel ~= nil and iron ~= nil and aluminum ~= nil and 
       metalscrap.amount >= 90 and steel.amount >= 60 and iron.amount >= 45 and aluminum.amount >= 100 then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('tmw-crafting:server:finishshotgun_ammo', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("steel", 60)
    Player.Functions.RemoveItem("iron", 45)
    Player.Functions.RemoveItem("metalscrap", 90)
    Player.Functions.RemoveItem("aluminum", 100)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["shotgun_ammo"], "add")
    Player.Functions.AddItem('shotgun_ammo', 1)
    TriggerClientEvent('QBCore:Notify', source, 'You have crafted Shotgun Ammo', 'success')
end)

-- SMG Ammo callback and event
QBCore.Functions.CreateCallback('tmw-crafting:server:ingredientsmg_ammo', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local iron = Player.Functions.GetItemByName("iron")
    local aluminum = Player.Functions.GetItemByName("aluminum")
    
    if metalscrap ~= nil and steel ~= nil and iron ~= nil and aluminum ~= nil and 
       metalscrap.amount >= 90 and steel.amount >= 60 and iron.amount >= 45 and aluminum.amount >= 100 then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('tmw-crafting:server:finishsmg_ammo', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("steel", 60)
    Player.Functions.RemoveItem("iron", 45)
    Player.Functions.RemoveItem("metalscrap", 90)
    Player.Functions.RemoveItem("aluminum", 100)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["smg_ammo"], "add")
    Player.Functions.AddItem('smg_ammo', 1)
    TriggerClientEvent('QBCore:Notify', source, 'You have crafted SMG Ammo', 'success')
end)

-- Rifle Ammo callback and event
QBCore.Functions.CreateCallback('tmw-crafting:server:ingredientrifle_ammo', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local iron = Player.Functions.GetItemByName("iron")
    local aluminum = Player.Functions.GetItemByName("aluminum")
    
    if metalscrap ~= nil and steel ~= nil and iron ~= nil and aluminum ~= nil and 
       metalscrap.amount >= 90 and steel.amount >= 60 and iron.amount >= 45 and aluminum.amount >= 100 then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('tmw-crafting:server:finishrifle_ammo', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("steel", 60)
    Player.Functions.RemoveItem("iron", 45)
    Player.Functions.RemoveItem("metalscrap", 90)
    Player.Functions.RemoveItem("aluminum", 100)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["rifle_ammo"], "add")
    Player.Functions.AddItem('rifle_ammo', 1)
    TriggerClientEvent('QBCore:Notify', source, 'You have crafted Rifle Ammo', 'success')
end)