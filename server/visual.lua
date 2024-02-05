local function FormatDropData(dropData)
    local items = {}

    for _, dropItem in pairs(dropData.items) do
        local propName = Config.DropItems[dropItem.name]

        if not propName then
            items[Config.ItemDropObject] = true
        else
            items[propName] = true
        end
    end

    local itemsTable = {}

    for itm, _ in pairs(items) do
        table.insert(itemsTable, itm)
    end

    return itemsTable
end

function OnDropUpdate(dropId, dropData)
    local itemsTable = FormatDropData(dropData)

    TriggerClientEvent('ps-inventory:updateDropVisualData', -1, dropId, dropData.coords, itemsTable)
end


AddEventHandler("playerJoining", function(source)
    local Source = source

    local dataToSend = {}

    for dropId, dropData in pairs(GetDrops()) do
        dataToSend[dropId] = {
            coords = dropData.coords,
            props = FormatDropData(dropData),
            placedProps = {}
        }
    end

    TriggerClientEvent('ps-inventory:setDropVisualData', Source, dataToSend)
end)
