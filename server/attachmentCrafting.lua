local QBCore = exports['qb-core']:GetCoreObject()

--- Attachments crafting

-- Pistol extended clip callback and event
QBCore.Functions.CreateCallback('tmw-crafting:server:ingredientpistol_extendedclip', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local aluminum = Player.Functions.GetItemByName("aluminum")

    -- Check if the player has the required amount of each item
    if metalscrap ~= nil and metalscrap.amount >= 90 and
       steel ~= nil and steel.amount >= 120 and
       rubber ~= nil and rubber.amount >= 30 and
       iron ~= nil and iron.amount >= 45 and
       aluminum ~= nil and aluminum.amount >= 60 then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('tmw-crafting:server:finishpistol_extendedclip', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("steel", 120)
    Player.Functions.RemoveItem("rubber", 30)
    Player.Functions.RemoveItem("metalscrap", 90)
    Player.Functions.RemoveItem("iron", 45)
    Player.Functions.RemoveItem("aluminum", 60)
    
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["pistol_extendedclip"], "add")
    Player.Functions.AddItem('pistol_extendedclip', 1)
    TriggerClientEvent('QBCore:Notify', source, 'You have crafted a pistol extended clip', 'success')
end)

-- Pistol suppressor callback and event
QBCore.Functions.CreateCallback('tmw-crafting:server:ingredientpistol_suppressor', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local rubber = Player.Functions.GetItemByName("rubber")
    local iron = Player.Functions.GetItemByName("iron")
    local aluminum = Player.Functions.GetItemByName("aluminum")
    local psBlueprint = Player.Functions.GetItemByName("pistol_s_blueprint")

    -- Check if the player has the required amount of each item
    if metalscrap ~= nil and metalscrap.amount >= 75 and
       steel ~= nil and steel.amount >= 150 and
       rubber ~= nil and rubber.amount >= 40 and
       iron ~= nil and iron.amount >= 50 and
       aluminum ~= nil and aluminum.amount >= 30 and
       psBlueprint ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('tmw-crafting:server:finishpistol_suppressor', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("steel", 150)
    Player.Functions.RemoveItem("rubber", 40)
    Player.Functions.RemoveItem("metalscrap", 75)
    Player.Functions.RemoveItem("iron", 50)
    Player.Functions.RemoveItem("aluminum", 30)
    Player.Functions.RemoveItem("pistol_s_blueprint", 1)
    
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["pistol_suppressor"], "add")
    Player.Functions.AddItem('pistol_suppressor', 1)
    TriggerClientEvent('QBCore:Notify', source, 'You have crafted a pistol suppressor', 'success')
end)