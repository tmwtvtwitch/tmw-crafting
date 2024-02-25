local QBCore = exports['qb-core']:GetCoreObject()

-- Tools crafting
--- Handcuffs crafting client-side event
RegisterNetEvent("tmw-crafting:Handcuffs")
AddEventHandler("tmw-crafting:Handcuffs", function()
    QBCore.Functions.TriggerCallback('tmw-crafting:server:ingredientHandcuffs', function(HasItems)  
        if HasItems then
            QBCore.Functions.Progressbar("pickup_sla", "Crafting Handcuffs..", 7000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "amb@world_human_welding@male@base",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent('tmw-crafting:server:finishHandcuffs')
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
            end)
        else
            local missingItems = "You are missing:"
            local playerItems = QBCore.Functions.GetPlayerData().items

            local requiredItems = {"steel", "iron", "aluminum"}
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