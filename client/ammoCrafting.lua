local QBCore = exports['qb-core']:GetCoreObject()

---weapon ammo crafting 

---smg ammo crafting client-side event
RegisterNetEvent("tmw-crafting:smg_ammo")
AddEventHandler("tmw-crafting:smg_ammo", function()
    	QBCore.Functions.TriggerCallback('tmw-crafting:server:ingredientsmg_ammo', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making smg ammo..", 7000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('tmw-crafting:server:finishsmg_ammo')
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
end)

RegisterNetEvent("tmw-crafting:rifle_ammo")
AddEventHandler("tmw-crafting:rifle_ammo", function()
    	QBCore.Functions.TriggerCallback('tmw-crafting:server:ingredientrifle_ammo', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making rifle ammo..", 7000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('tmw-crafting:server:finishrifle_ammo')
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
end)

RegisterNetEvent("tmw-crafting:shotgun_ammo")
AddEventHandler("tmw-crafting:shotgun_ammo", function()
    	QBCore.Functions.TriggerCallback('tmw-crafting:server:ingredientshotgun_ammo', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making shotgun ammo..", 7000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('tmw-crafting:server:finishshotgun_ammo')
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
end)