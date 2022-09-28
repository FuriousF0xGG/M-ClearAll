TriggerEvent('chat:addSuggestion', '/clearall', '[STAFF ONLY] Wipes a Certain entity from the Map.', {{ name="Entity", help="PROPS, CARS, PEDS, ALL" }})

RegisterNetEvent("M:ClearAll:Cars")
AddEventHandler("M:ClearAll:Cars", function ()
    for vehicle in EnumerateVehicles() do
        if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then 
            SetVehicleHasBeenOwnedByPlayer(vehicle, false) 
            SetEntityAsMissionEntity(vehicle, false, false) 
            DeleteVehicle(vehicle)
            if (DoesEntityExist(vehicle)) then 
                DeleteVehicle(vehicle) 
            end
        end
    end
end)
RegisterNetEvent("M:ClearAll:Peds")
AddEventHandler("M:ClearAll:Peds", function ()
    for ped in EnumeratePeds() do
            SetEntityAsMissionEntity(ped, false, false) 
            DeletePed(ped)
            if (DoesEntityExist(ped)) then 
                DeletePed(ped)
            end
        end
    end)
RegisterNetEvent("M:ClearAll:Props")
AddEventHandler("M:ClearAll:Props", function ()
    for object in EnumerateObjects() do
            SetEntityAsMissionEntity(object, false, false) 
            DeleteObject(object)
            if (DoesEntityExist(object)) then 
                DeleteObject(object)
            end
        end
    end)

RegisterNetEvent("M:ClearAll:Entities")
AddEventHandler("M:ClearAll:Entities", function ()
    for entity in EnumerateObjects() do
            SetEntityAsMissionEntity(entity, false, false) 
            DeleteObject(entity)
            if (DoesEntityExist(entity)) then 
                DeleteObject(entity)
            end
        end
    end)

    RegisterNetEvent("M:ClearAll:All")
    AddEventHandler("M:ClearAll:All", function()
       TriggerEvent("M:ClearAll:Cars")
       TriggerEvent("M:ClearAll:Peds")
       TriggerEvent("M:ClearAll:Props")
       TriggerEvent("M:ClearAll:Entities")
    end)
