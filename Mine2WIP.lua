io.write("Enter mine length: ")
length = io.read()

targetores = {}
targetores["minecraft:Diamond_ore"] = true 
targetores["minecraft:Iron_ore"] = true
targetores["minecraft:"]

function fuelInfo()
    fuel = turtle.getFuelLevel()
    while fuel < 200 do
        turtle.refuel(1)
    end
    print(fuel)
end
    

function dig()
    for i = 1,length do
        if turtle.detect() then
            turtle.dig()
            turtle.forward()
            do success, data = turtle.inspectUp()
                if targetores[data.name] do
                    turtle.digUp()
                end
            do meta, name = turtle.inspectDown()
                if data.name == minecraft:Diamondore do
                    turtle.digDown()
                end
            do turtle.turnLeft
                do meta, name = turtle.inspect()
                    if name == minecraft:Diamondore do
                        turtle.dig()
                    end
                end
            do turtle.turnRight
            do turtle.turnRight
                do meta, name = turtle.inspect()
                    if name == minecraft:Diamondore do
                        turtle.dig()
                    end
                end
            do turtle.turnLeft
        end
    end

end
    
function Set (list)
    local set = {}
    for _, l in ipairs(list) do set[l] = true end
    return set
  end

fuelInfo()

dig()


targetores = {"Diamond_ore", }

--success, blockinfo = turtle.inspect()
--if success then
--    if data.blockinfo.name == Diamond
--end
--turtle.dig()
--turtle.forward()