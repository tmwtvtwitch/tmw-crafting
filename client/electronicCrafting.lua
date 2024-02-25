local QBCore = exports['qb-core']:GetCoreObject()

---high grade electronic crafting

-- Boosting laptop crafting client-side event
RegisterNetEvent("tmw-crafting:laptop")
AddEventHandler("tmw-crafting:laptop", function()
    QBCore.Functions.TriggerCallback('tmw-crafting:server:ingredientLaptop', function(HasItems)  
        if HasItems then
            QBCore.Functions.Progressbar("pickup_sla", "Soldering Laptop together..", 7000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "amb@world_human_welding@male@base",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent('tmw-crafting:server:finishLaptop')
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
            end)
        else
            local missingItems = "You are missing:"
            local playerItems = QBCore.Functions.GetPlayerData().items

            local requiredItems = {"metalscrap", "steel", "iron", "aluminum", "solder", "solderingiron", "loosewires", "electronickit"}
            for _, itemName in ipairs(requiredItems) do
                local item = QBCore.Shared.Items[itemName]
                local playerItem = playerItems[itemName]

                if not playerItem or playerItem.amount < item.amount then
                    missingItems = missingItems .. "\n- " .. item.label
                end
            end

            QBCore.Functions.Notify(missingItems, "error")
        end
    end)
end)

-- Trojan USB crafting client-side event
RegisterNetEvent("tmw-crafting:Trojanusb")
AddEventHandler("tmw-crafting:Trojanusb", function()
    QBCore.Functions.TriggerCallback('tmw-crafting:server:ingredientTrojanusb', function(HasItems)  
        if HasItems then
            QBCore.Functions.Progressbar("pickup_sla", "Soldering Trojan USB together..", 7000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "amb@world_human_welding@male@base",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent('tmw-crafting:server:finishTrojanusb')
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
            end)
        else
            local missingItems = "You are missing:"
            local playerItems = QBCore.Functions.GetPlayerData().items

            local requiredItems = {"metalscrap", "steel", "iron", "solder", "solderingiron", "loosewires"}
            for _, itemName in ipairs(requiredItems) do
                local item = QBCore.Shared.Items[itemName]
                local playerItem = playerItems[itemName]

                if not playerItem or playerItem.amount < item.amount then
                    missingItems = missingItems .. "\n- " .. item.label
                end
            end

            QBCore.Functions.Notify(missingItems, "error")
        end
    end)
end)

---drill crafting client-side event
RegisterNetEvent("tmw-crafting:drill")
AddEventHandler("tmw-crafting:drill", function()
    QBCore.Functions.TriggerCallback('tmw-crafting:server:ingredientdrill', function(HasItems)  
        if HasItems then
            QBCore.Functions.Progressbar("pickup_sla", "Soldering drill together..", 7000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "amb@world_human_welding@male@base",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent('tmw-crafting:server:finishdrill')
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
            end)
        else
            local missingItems = "You are missing:"
            local playerItems = QBCore.Functions.GetPlayerData().items

            -- Check each required item and add to the missingItems message if not found
            local requiredItems = {"metalscrap", "steel", "iron", "solder", "solderingiron", "loosewires"}
            for _, itemName in ipairs(requiredItems) do
                local item = QBCore.Shared.Items[itemName]
                local playerItem = playerItems[itemName]

                if not playerItem or playerItem.amount < item.amount then
                    missingItems = missingItems .. "\n- " .. item.label
                end
            end

            QBCore.Functions.Notify(missingItems, "error")
        end
    end)
end)
