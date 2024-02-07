-- rand range 1.5 meters xy

local RENDER_DISTANCE_SPAWN = 70
local RENDER_DISTANCE_DESPAWN = 85

for k, v in pairs(Config.DropItems) do
    if type(v) ~= 'number' then
        Config.DropItems[k] = GetHashKey(v)
    end
end

local droppedItems = {
    -- [1] = {
    --     coords = vec3(-684.514282, -1104.131836, 14.519409),
    --     props = {
    --         `w_pi_combatpistol_luxe`,
    --         `prop_stockade_wheel_flat`,
    --         `v_res_tre_plant`,
    --         `prop_jerrycan_01a`,
    --     },
    --     placedProps = {}
    -- }
}

local function table_contains(tbl, x)
    found = false
    for _, v in pairs(tbl) do
        if v == x then 
            found = true 
        end
    end
    return found
end

local function GetPropsToAdd(dropId, newItems)
    local toAdd = {}

    for _, item in pairs(newItems) do
        if not table_contains(droppedItems[dropId].props, item) then
            table.insert(toAdd, item)
        end
    end

    return toAdd
end

local function GetPropsToRemove(dropId, newItems)
    local toAdd = {}

    for _, item in pairs(droppedItems[dropId].props) do
        if not table_contains(newItems, item) then
            table.insert(toAdd, item)
        end
    end

    return toAdd
end

local function filter_table(tbl, toRemove)
    local newData = {}

    for _, v in pairs(tbl) do
        if not table_contains(toRemove, v) then
            table.insert(newData, v)
        end
    end

    return newData
end

local scatterDistData = {
    {0.1, 0.2},
    {0.4, 0.55},
    {0.75, 0.95},
    {1.15, 1.7},
    {1.15, 1.7},
    {1.15, 1.7},
    {1.15, 1.7},
    {1.15, 1.7},
    {1.15, 1.7},
    {1.15, 1.7},
    {1.15, 1.7},
    
}

local function FindSpawnPointForProp(coord, itemCount, model, dropId)
    math.randomseed(tonumber(math.ceil(model/dropId*1000)))

    local maxSpread = 6

    itemCount = math.min(itemCount+1, maxSpread)

    for i = 1, 100 do
        local randomHeading = math.random(0, 360)
        local randomDist = math.random(scatterDistData[itemCount][1]*1000, scatterDistData[itemCount][2]*1000)/1000

        local offX = math.cos(math.rad(randomHeading)) * randomDist
        local offY = math.sin(math.rad(randomHeading)) * randomDist

        local f, gz = GetGroundZFor_3dCoord(coord.x + offX, coord.y + offY, coord.z)

        if f then
            local finalCoord = vector3(coord.x + offX, coord.y + offY, gz)

            if itemCount <= 1 or #(coord.xy - finalCoord.xy) > 0.4 then
                local ray = StartExpensiveSynchronousShapeTestLosProbe(
                    coord,
                    finalCoord, 
                    1 + 16,
                    nil, 
                    4
                )

                local f, hit, endCoords, normal = GetShapeTestResult(ray)

                if hit > 0 then
                    return endCoords
                end

                return finalCoord
            end

        end
    end

    return coord
end

local function SpawnGroundProp(model, coords)
    if IsModelInCdimage(model) then
        RequestModel(model)
        while not HasModelLoaded(model) do Wait(0) end
    else
        print("ERROR: Model", model, "could not be loaded")
    end

    local dropItem = CreateObject(
        model, 
        coords, 
        false, false, false
    )
    SetEntityRotation(dropItem, vector3(-90.0, 0.0, 0.0), 2)
    PlaceObjectOnGroundProperly(dropItem)
    ActivatePhysics(dropItem)

    Citizen.CreateThread(function()
        Wait(1000)
        FreezeEntityPosition(dropItem, true)
        SetEntityCollision(dropItem, false, false)
    end)

    return dropItem
end

local function tablelength(table)
    local count = 0
    for _ in pairs(table) do
        count = count + 1
    end
    return count
end

RegisterNetEvent('ps-inventory:setDropVisualData', function(data)
    droppedItems = data
end)

RegisterNetEvent('ps-inventory:updateDropVisualData', function(dropId, coords, itemsTable)
    local pedCoord = GetEntityCoords(PlayerPedId())

    if #itemsTable == 0 and droppedItems[dropId] then
        for _, obj in pairs(droppedItems[dropId].placedProps) do
            DeleteEntity(obj)
        end

        droppedItems[dropId] = nil
    elseif not droppedItems[dropId] then
        droppedItems[dropId] = {
            coords = coords,
            props = itemsTable,
            placedProps = {}
        }

        if #(pedCoord - coords) < RENDER_DISTANCE_SPAWN then
            for _, propModel in pairs(droppedItems[dropId].props) do
                local pos = FindSpawnPointForProp(droppedItems[dropId].coords, tablelength(droppedItems[dropId].placedProps), propModel, dropId)
                droppedItems[dropId].placedProps[propModel] = SpawnGroundProp(propModel, pos)
            end
        end
    else
        local itemsToAdd = GetPropsToAdd(dropId, itemsTable)
        local itemsToRemove = GetPropsToRemove(dropId, itemsTable)

        
        droppedItems[dropId].props = filter_table(droppedItems[dropId].props, itemsToRemove)

        for _, itm in pairs(itemsToRemove) do
            if droppedItems[dropId].placedProps[itm] then
                DeleteEntity(droppedItems[dropId].placedProps[itm])
                droppedItems[dropId].placedProps[itm] = nil
            end
        end

        for _, itm in pairs(itemsToAdd) do
            table.insert(droppedItems[dropId].props, itm)
            
            if #(pedCoord - coords) < RENDER_DISTANCE_SPAWN then
                local pos = FindSpawnPointForProp(droppedItems[dropId].coords, tablelength(droppedItems[dropId].placedProps), itm, dropId)
                droppedItems[dropId].placedProps[itm] = SpawnGroundProp(itm, pos)
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(1000)

        local pedCoord = GetEntityCoords(PlayerPedId())

        local timeout = 10

        for dropId, data in pairs(droppedItems) do
            timeout = timeout - 1

            if timeout < 10 then
                Wait(0)
                timeout = 10
            end
            if #(pedCoord - data.coords) < RENDER_DISTANCE_SPAWN then
                for _, modelName in pairs(data.props) do
                    if not data.placedProps[modelName] then
                        local pos = FindSpawnPointForProp(data.coords, tablelength(data.placedProps), modelName, dropId)
                        data.placedProps[modelName] = SpawnGroundProp(modelName, pos)
                    end
                end
            elseif #(pedCoord - data.coords) > RENDER_DISTANCE_DESPAWN then
                for idx, ent in pairs(data.placedProps) do
                    DeleteEntity(ent)
                    data.placedProps[idx] = nil
                end
            end
        end
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end

    for _, data in pairs(droppedItems) do
        for idx, ent in pairs(data.placedProps) do
            DeleteEntity(ent)
        end
    end
end)