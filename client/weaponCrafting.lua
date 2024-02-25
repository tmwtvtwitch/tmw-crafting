local QBCore = exports['qb-core']:GetCoreObject()

--- Weapon crafting 

--- Pistol crafting client-side event
RegisterNetEvent("tmw-crafting:weapon_pistol")
AddEventHandler("tmw-crafting:weapon_pistol", function()
    QBCore.Functions.TriggerCallback('tmw-crafting:server:ingredientweapon_pistol', function(HasItems)  
        if HasItems then
            QBCore.Functions.Progressbar("pickup_sla", "Making weapon pistol..", 7000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "mp_common",
                anim = "givetake1_a",
                flags = 8,
            }, {}, {}, function() -- Done
                TriggerServerEvent('tmw-crafting:server:finishweapon_pistol')
            end, function()
                QBCore.Functions.Notify("Cancelled..", "error")
            end)
        else
            local missingItems = "You are missing:"
            local playerItems = QBCore.Functions.GetPlayerData().items

            local requiredItems = {"metalscrap", "steel", "iron", "aluminum", "rubber", "pistol_blueprint"}
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