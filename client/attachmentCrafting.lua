local QBCore = exports['qb-core']:GetCoreObject()

--- Weapon attachment crafting 

--- Pistol extended clip crafting client-side event
RegisterNetEvent("tmw-crafting:pistol_extendedclip")
AddEventHandler("tmw-crafting:pistol_extendedclip", function()
    QBCore.Functions.TriggerCallback('tmw-crafting:server:ingredientpistol_extendedclip', function(HasItems)  
        if HasItems then
            QBCore.Functions.Progressbar("pickup_sla", "Making pistol extended clip..", 4000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "givetake1_a",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent('tmw-crafting:server:finishpistol_extendedclip')
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
            end)
        else
            local missingItems = "You are missing:"
            local playerItems = QBCore.Functions.GetPlayerData().items

            local requiredItems = {"metalscrap", "steel", "rubber", "iron", "aluminum"}
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

--- Pistol suppressor client-side event
RegisterNetEvent("tmw-crafting:pistol_suppressor")
AddEventHandler("tmw-crafting:pistol_suppressor", function()
    QBCore.Functions.TriggerCallback('tmw-crafting:server:ingredientpistol_suppressor', function(HasItems)  
        if HasItems then
            QBCore.Functions.Progressbar("pickup_sla", "Making pistol suppressor..", 7000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "givetake1_a",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent('tmw-crafting:server:finishpistol_suppressor')
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
            end)
        else
            local missingItems = "You are missing:"
            local playerItems = QBCore.Functions.GetPlayerData().items

            local requiredItems = {"metalscrap", "steel", "rubber", "iron", "aluminum", "pistol_s_blueprint"}
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