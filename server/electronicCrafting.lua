local QBCore = exports['qb-core']:GetCoreObject()

---High-Grade Electrontics

-- Boosting laptop callback and event
QBCore.Functions.CreateCallback('tmw-crafting:server:ingredientLaptop', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local iron = Player.Functions.GetItemByName("iron")
    local aluminum = Player.Functions.GetItemByName("aluminum")
    local solder = Player.Functions.GetItemByName("solder")
    local solderingIron = Player.Functions.GetItemByName("solderingiron")
    local loosewires = Player.Functions.GetItemByName("loosewires")

    -- Check if the player has the required amount of each item
    if metalscrap ~= nil and metalscrap.amount >= 130 and
       steel ~= nil and steel.amount >= 200 and
       iron ~= nil and iron.amount >= 125 and
       aluminum ~= nil and aluminum.amount >= 200 and
       solder ~= nil and solder.amount >= 25 and
       solderingIron ~= nil and solderingIron.amount >= 20 and
       loosewires ~= nil and loosewires.amount >= 50 then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('tmw-crafting:server:finishLaptop', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("steel", 200)
    Player.Functions.RemoveItem("iron", 125)
    Player.Functions.RemoveItem("metalscrap", 130)
    Player.Functions.RemoveItem("aluminum", 200)
    Player.Functions.RemoveItem("electronickit", 20)
    Player.Functions.RemoveItem("solder", 25)
    Player.Functions.RemoveItem("loosewires", 50)
    
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["boostingtablet"], "add")
    Player.Functions.AddItem('boostingtablet', 1)
    TriggerClientEvent('QBCore:Notify', source, 'You have soldered together a boosting tablet', 'success')
end)

-- Trojan USB callback and event
QBCore.Functions.CreateCallback('tmw-crafting:server:ingredientTrojanusb', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local iron = Player.Functions.GetItemByName("iron")
    local solder = Player.Functions.GetItemByName("solder")
    local solderingIron = Player.Functions.GetItemByName("solderingiron")
    local loosewires = Player.Functions.GetItemByName("loosewires")

    -- Check if the player has the required amount of each item
    if metalscrap ~= nil and metalscrap.amount >= 75 and
       steel ~= nil and steel.amount >= 100 and
       iron ~= nil and iron.amount >= 100 and
       solder ~= nil and solder.amount >= 25 and
       solderingIron ~= nil and solderingIron.amount >= 10 and
       loosewires ~= nil and loosewires.amount >= 50 then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('tmw-crafting:server:finishTrojanusb', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("steel", 25)
    Player.Functions.RemoveItem("iron", 100)
    Player.Functions.RemoveItem("metalscrap", 75)
    Player.Functions.RemoveItem("electronickit", 3)
    Player.Functions.RemoveItem("solder", 25)
    Player.Functions.RemoveItem("loosewires", 50)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["trojan_usb"], "add")
    Player.Functions.AddItem('trojan_usb', 1)
    TriggerClientEvent('QBCore:Notify', source, 'You have soldered together a trojan usb', 'success')
end)

---drill callback and event
QBCore.Functions.CreateCallback('tmw-crafting:server:ingredientdrill', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local iron = Player.Functions.GetItemByName("iron")
    local solder = Player.Functions.GetItemByName("solder")
    local solderingIron = Player.Functions.GetItemByName("solderingiron")
    local loosewires = Player.Functions.GetItemByName("loosewires")

    -- Check if the player has the required amount of each item
    if metalscrap ~= nil and metalscrap.amount >= 75 and
       steel ~= nil and steel.amount >= 100 and
       iron ~= nil and iron.amount >= 100 and
       solder ~= nil and solder.amount >= 25 and
       solderingIron ~= nil and solderingIron.amount >= 10 and
       loosewires ~= nil and loosewires.amount >= 50 then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('tmw-crafting:server:finishdrill', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem("steel", 100)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["steel"], "remove", 100)
    Player.Functions.RemoveItem("iron", 100)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["iron"], "remove", 100)
    Player.Functions.RemoveItem("metalscrap", 75)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["metalscrap"], "remove", 75)
    Player.Functions.RemoveItem("electronickit", 10)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["electronickit"], "remove", 10)
    Player.Functions.RemoveItem("solder", 25)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["solder"], "remove", 25)
    Player.Functions.RemoveItem("loosewires", 50)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["loosewires"], "remove", 50)
    Player.Functions.AddItem('drill', 1)
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items["drill"], "add", 1)
    TriggerClientEvent('QBCore:Notify', source, 'You have soldered together a drill', 'success')
end)