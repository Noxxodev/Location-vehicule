ESX = exports["es_extended"]:getSharedObject()

--Spawn le véhicule / Spawn the vehicle--

function spawnCar(car)
    local car = GetHashKey(car)
    local timetoend = Config.timetoend / 60

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end
    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, Config.car_pos1, 241.51, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    SetVehicleNumberPlateText(vehicle, "LOCATION") 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
        local time = Config.time -- 1 heure
        while (time ~= 0) do
        Wait( 1000 ) -- Wait a second
        time = time - 1
        -- 1 Second should have past by now
        if time == Config.timetoend then
            DeleteVehicle(vehicle)
            ESX.ShowNotification("Location", 'Le temps de location est fini.', "info", 8000, "top-left")
            --ESX.ShowNotification('Le temps de location est fini.', "info", 8000)
        end
        end
    
end

function spawnCar2(car)
    local car = GetHashKey(car)
    local timetoend = Config.timetoend / 60

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end
    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, Config.car_pos2, 241.51, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    SetVehicleNumberPlateText(vehicle, "LOCATION") 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
        local time = Config.time -- 1 heure
        while (time ~= 0) do
        Wait( 1000 ) -- Wait a second
        time = time - 1
        -- 1 Second should have past by now
        if time == Config.timetoend then
            DeleteVehicle(vehicle)
            ESX.ShowNotification("Location", 'Le temps de location est fini.', "info", 8000, "top-left")
            --ESX.ShowNotification('Le temps de location est fini.', "info", 8000)
        end
        end
    
end

function spawnCar3(car)
    local car = GetHashKey(car)
    local timetoend = Config.timetoend / 60

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end
    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, Config.car_pos3, 241.51, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    SetVehicleNumberPlateText(vehicle, "LOCATION") 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
        local time = Config.time -- 1 heure
        while (time ~= 0) do
        Wait( 1000 ) -- Wait a second
        time = time - 1
        -- 1 Second should have past by now
        if time == Config.timetoend then
            DeleteVehicle(vehicle)
            ESX.ShowNotification("Location", 'Le temps de location est fini.', "info", 8000, "top-left")
            --ESX.ShowNotification('Le temps de location est fini.', "info", 8000)
        end
        end
    
end

function spawnCar4(car)
    local car = GetHashKey(car)
    local timetoend = Config.timetoend / 60

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end
    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, Config.car_pos4, 241.51, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    SetVehicleNumberPlateText(vehicle, "LOCATION") 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
        local time = Config.time -- 1 heure
        while (time ~= 0) do
        Wait( 1000 ) -- Wait a second
        time = time - 1
        -- 1 Second should have past by now
        if time == Config.timetoend then
            DeleteVehicle(vehicle)
            ESX.ShowNotification("Location", 'Le temps de location est fini.', "info", 8000, "top-left")
            --ESX.ShowNotification('Le temps de location est fini.', "info", 8000)
        end
        end
    
end

function spawnCar5(car)
    local car = GetHashKey(car)
    local timetoend = Config.timetoend / 60

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end
    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, Config.car_pos5, 241.51, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    SetVehicleNumberPlateText(vehicle, "LOCATION") 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
        local time = Config.time -- 1 heure
        while (time ~= 0) do
        Wait( 1000 ) -- Wait a second
        time = time - 1
        -- 1 Second should have past by now
        if time == Config.timetoend then
            DeleteVehicle(vehicle)
            ESX.ShowNotification("Location", 'Le temps de location est fini.', "info", 8000, "top-left")
            --ESX.ShowNotification('Le temps de location est fini.')
        end
        end
    
end

--Blips--
Citizen.CreateThread(function()
    local blipMarker = Config.Blips.loca1
    local blip = AddBlipForCoord(blipMarker.Pos.x, blipMarker.Pos.y, blipMarker.Pos.z)
    SetBlipSprite(blip, blipMarker.Sprite)
    SetBlipScale(blip, blipMarker.Scale)
    SetBlipColour(blip, blipMarker.Colour)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString("Location de véhicule")
    EndTextCommandSetBlipName(blip)
end)

Citizen.CreateThread(function()
    local blipMarker = Config.Blips.loca2
    local blip = AddBlipForCoord(blipMarker.Pos.x, blipMarker.Pos.y, blipMarker.Pos.z)
    SetBlipSprite(blip, blipMarker.Sprite)
    SetBlipScale(blip, blipMarker.Scale)
    SetBlipColour(blip, blipMarker.Colour)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString("Location de véhicule")
    EndTextCommandSetBlipName(blip)
end)

Citizen.CreateThread(function()
    local blipMarker = Config.Blips.loca3
    local blip = AddBlipForCoord(blipMarker.Pos.x, blipMarker.Pos.y, blipMarker.Pos.z)
    SetBlipSprite(blip, blipMarker.Sprite)
    SetBlipScale(blip, blipMarker.Scale)
    SetBlipColour(blip, blipMarker.Colour)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString("Location de véhicule")
    EndTextCommandSetBlipName(blip)
end)

Citizen.CreateThread(function()
    local blipMarker = Config.Blips.loca4
    local blip = AddBlipForCoord(blipMarker.Pos.x, blipMarker.Pos.y, blipMarker.Pos.z)
    SetBlipSprite(blip, blipMarker.Sprite)
    SetBlipScale(blip, blipMarker.Scale)
    SetBlipColour(blip, blipMarker.Colour)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString("Location de véhicule")
    EndTextCommandSetBlipName(blip)
end)

Citizen.CreateThread(function()
    local blipMarker = Config.Blips.loca5
    local blip = AddBlipForCoord(blipMarker.Pos.x, blipMarker.Pos.y, blipMarker.Pos.z)
    SetBlipSprite(blip, blipMarker.Sprite)
    SetBlipScale(blip, blipMarker.Scale)
    SetBlipColour(blip, blipMarker.Colour)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString("Location de véhicule")
    EndTextCommandSetBlipName(blip)
end)




local Options = {}


exports.qtarget:AddBoxZone("locmenu", Config.Loca.loca.pos1, 2.4, 1, {
    name="locmenu",
    heading=187.53,
    minZ=51.5,
    maxZ=54.5
      }, {
          options = {
              {
                  
                  icon = "fa-sharp fa-solid fa-car",
                  label = "Location",
                  action = function()
                    lib.showContext('locmenu')
                  end,
              },
          },
          distance = 3.5
})

exports.qtarget:AddBoxZone("locmenu2", Config.Loca.loca.pos2, 2.4, 1, {
    name="locmenu2",
    heading=187.53,
    minZ=51.5,
    maxZ=54.5
      }, {
          options = {
              {
                  
                  icon = "fa-sharp fa-solid fa-car",
                  label = "Location",
                  action = function()
                    lib.showContext('locmenu2')
                  end,
              },
          },
          distance = 3.5
})

exports.qtarget:AddBoxZone("locmenu", Config.Loca.loca.pos3, 2.4, 1, {
    name="locmenu",
    heading=187.53,
    minZ=51.5,
    maxZ=54.5
      }, {
          options = {
              {
                  
                  icon = "fa-sharp fa-solid fa-car",
                  label = "Location",
                  action = function()
                    lib.showContext('locmenu3')
                  end,
              },
          },
          distance = 3.5
})

exports.qtarget:AddBoxZone("locmenu", Config.Loca.loca.pos4, 2.4, 1, {
    name="locmenu",
    heading=187.53,
    minZ=51.5,
    maxZ=54.5
      }, {
          options = {
              {
                  
                  icon = "fa-sharp fa-solid fa-car",
                  label = "Location",
                  action = function()
                    lib.showContext('locmenu4')
                  end,
              },
          },
          distance = 3.5
})

exports.qtarget:AddBoxZone("locmenu", Config.Loca.loca.pos5, 2.4, 1, {
    name="locmenu",
    heading=187.53,
    minZ=51.5,
    maxZ=54.5
      }, {
          options = {
              {
                  
                  icon = "fa-sharp fa-solid fa-car",
                  label = "Location",
                  action = function()
                    lib.showContext('locmenu5')
                  end,
              },
          },
          distance = 3.5
})
  

lib.registerContext({
    id = 'locmenu',
    title = "Menu location",
    options = {
        {
            title = Config.Veh.veh1.title,
            description = Config.Veh.veh1.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh1.price)
                    spawnCar(Config.Veh.veh1.veh)
            end            
        },
        {
            title = Config.Veh.veh2.title,
            description = Config.Veh.veh2.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh2.price)
                spawnCar(Config.Veh.veh2.veh)
            end            
        },
        {
            title = Config.Veh.veh3.title,
            description = Config.Veh.veh3.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh3.price)
                spawnCar(Config.Veh.veh3.veh)
            end            
        },
        --[[{
            title = Config.Veh.veh4.title,
            description = Config.Veh.veh4.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh4.price)
                spawnCar4(Config.Veh.veh4.veh)
            end            
        },
        {
            title = Config.Veh.veh5.title,
            description = Config.Veh.veh5.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh5.price)
                spawnCar4(Config.Veh.veh5.veh)
            end            
        },

        --[[{
            title = 'Panto',
            description = '300$',
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', 300)
                spawnCar("panto")
            end            
        },
        {
            title = 'BMX',
            description = '100$',
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', 100)
                spawnCar("bmx")
            end            
        },]]
    },
})

lib.registerContext({
    id = 'locmenu2',
    title = "Menu location",
    options = {
        {
            title = Config.Veh.veh1.title,
            description = Config.Veh.veh1.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh1.price)
                    spawnCar2(Config.Veh.veh1.veh)
            end            
        },
        {
            title = Config.Veh.veh2.title,
            description = Config.Veh.veh2.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh2.price)
                spawnCar2(Config.Veh.veh2.veh)
            end            
        },
        {
            title = Config.Veh.veh3.title,
            description = Config.Veh.veh3.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh3.price)
                spawnCar2(Config.Veh.veh3.veh)
            end            
        },
        --[[{
            title = Config.Veh.veh4.title,
            description = Config.Veh.veh4.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh4.price)
                spawnCar4(Config.Veh.veh4.veh)
            end            
        },
        {
            title = Config.Veh.veh5.title,
            description = Config.Veh.veh5.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh5.price)
                spawnCar4(Config.Veh.veh5.veh)
            end            
        },]]
    },
})

lib.registerContext({
    id = 'locmenu3',
    title = "Menu location",
    options = {
        {
            title = Config.Veh.veh1.title,
            description = Config.Veh.veh1.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh1.price)
                    spawnCar3(Config.Veh.veh1.veh)
            end            
        },
        {
            title = Config.Veh.veh2.title,
            description = Config.Veh.veh2.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh2.price)
                spawnCar3(Config.Veh.veh2.veh)
            end            
        },
        {
            title = Config.Veh.veh3.title,
            description = Config.Veh.veh3.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh3.price)
                spawnCar3(Config.Veh.veh3.veh)
            end            
        },
        --[[{
            title = Config.Veh.veh4.title,
            description = Config.Veh.veh4.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh4.price)
                spawnCar4(Config.Veh.veh4.veh)
            end            
        },
        {
            title = Config.Veh.veh5.title,
            description = Config.Veh.veh5.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh5.price)
                spawnCar4(Config.Veh.veh5.veh)
            end            
        },]]
    },
})

lib.registerContext({
    id = 'locmenu4',
    title = "Menu location",
    options = {
        {
            title = Config.Veh.veh1.title,
            description = Config.Veh.veh1.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh1.price)
                    spawnCar4(Config.Veh.veh1.veh)
            end            
        },
        {
            title = Config.Veh.veh2.title,
            description = Config.Veh.veh2.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh2.price)
                spawnCar4(Config.Veh.veh2.veh)
            end            
        },
        {
            title = Config.Veh.veh3.title,
            description = Config.Veh.veh3.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh3.price)
                spawnCar4(Config.Veh.veh3.veh)
            end            
        },
        --[[{
            title = Config.Veh.veh4.title,
            description = Config.Veh.veh4.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh4.price)
                spawnCar4(Config.Veh.veh4.veh)
            end            
        },
        {
            title = Config.Veh.veh5.title,
            description = Config.Veh.veh5.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh5.price)
                spawnCar4(Config.Veh.veh5.veh)
            end            
        },]]
    },
})

lib.registerContext({
    id = 'locmenu5',
    title = "Menu location",
    options = {
        --[[{
            title = Config.Veh.veh1.title,
            description = Config.Veh.veh1.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh1.price)
                    spawnCar5(Config.Veh.veh1.veh)
            end            
        },
        {
            title = Config.Veh.veh2.title,
            description = Config.Veh.veh2.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh2.price)
                spawnCar5(Config.Veh.veh2.veh)
            end            
        },]]
        {
            title = Config.Veh.veh3.title,
            description = Config.Veh.veh3.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh3.price)
                spawnCar5(Config.Veh.veh3.veh)
            end            
        },
        {
            title = Config.Veh.veh4.title,
            description = Config.Veh.veh4.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh4.price)
                spawnCar5(Config.Veh.veh4.veh)
            end            
        },
        --[[{
            title = Config.Veh.veh5.title,
            description = Config.Veh.veh5.desc,
            onSelect = function()
                TriggerServerEvent('nox_loca:vehicule', Config.Veh.veh5.price)
                spawnCar5(Config.Veh.veh5.veh)
            end            
        },]]
    },
})

