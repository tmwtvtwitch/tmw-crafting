local QBCore = exports['qb-core']:GetCoreObject()

-- Tools Crafting Menu
--- Handcuffs callback and event
QBCore.Functions.CreateCallback('tmw-crafting:server:ingredientHandcuffs', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local steel = Player.Functions.GetItemByName("steel")
    local iron = Player.Functions.GetItemByName("iron")
    local aluminum = Player.Functions.GetItemByName("aluminum")

    -- Check if the player has the required amount of each item
    if aluminum ~= nil and aluminum.amount >= 100 and
       steel ~= nil and steel.amount >= 100 and
       iron ~= nil and iron.amount >= 100 then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('tmw-crafting:server:finishHandcuffs', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("steel", 100)
    Player.Functions.RemoveItem("iron", 100)
    Player.Functions.RemoveItem("aluminum", 100)
    
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["handcuffs"], "add")
    Player.Functions.AddItem('handcuffs', 1)
    TriggerClientEvent('QBCore:Notify', source, 'You have crafted Handcuffs', 'success')
end)