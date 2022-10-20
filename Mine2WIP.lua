
--takes input for mine length
io.write("Enter mine length: ")
length = io.read()

--hashtable of all ores the turtle will look to mine. 
targetores = {}
targetores["minecraft:diamond_ore"] = true
targetores["minecraft:iron_ore"] = true
targetores["minecraft:copper_ore"] = true
targetores["minecraft:gold_ore"] = true
targetores["minecraft:coal_ore"] = true
targetores["minecraft:lapis_ore"] = true
targetores["minecraft:redstone_ore"] = true
targetores["minecraft:lit_redstone_ore"] = true
targetores["minecraft:emerald_ore"] = true
targetores["minecraft:quartz_ore"] = true
targetores["minecraft:nether_gold_ore"] = true
targetores["minecraft:ancient_debris"] = true
targetores["minecraft:deepslate_coal_ore"] = true
targetores["minecraft:deepslate_copper_ore"] = true
targetores["minecraft:deepslate_diamond_ore"] = true
targetores["minecraft:deepslate_emerald_ore"] = true
targetores["minecraft:deepslate_gold_ore"] = true
targetores["minecraft:deepslate_iron_ore"] = true
targetores["minecraft:deepslate_lapis_ore"] = true
targetores["minecraft:deepslate_redstone_ore"] = true

--refuels from the turtles first inventory slot then prints the current fuel level
function fuelInfo()
    fuel = turtle.getFuelLevel()
    while fuel < 200 do
        turtle.refuel(1)
    end
    print(fuel)
end

--detects if the turtle is facing a block.
--if the turtle is facing a block it will mine that block and move forward into that space.
--once the turtle has moved forward it will inspect the blocks around it to see if they are listed in the targetores hashtable.
--if listed in the hashtable the turtle will mine those blocks.
function dig()
    for i = 1,length do
        if turtle.detect() then
            turtle.dig()
            turtle.forward()
            do local success, data = turtle.inspectUp()
                if targetores[data.name] then
                    turtle.digUp()
                end
            end
            do local success, data = turtle.inspectDown()
                if targetores[data.name] then
                    turtle.digUp()
                end
            end
            do turtle.turnLeft()
                do local success, data = turtle.inspect()
                    if targetores[data.name] then
                        turtle.digUp()
                    end
                end
            end
            do turtle.turnRight()
            end
            do turtle.turnRight()
                do local success, data = turtle.inspect()
                    if targetores[data.name] then
                        turtle.digUp()
                    end
                end
            end
            do turtle.turnLeft()
            end
        end
    end
end
    
--calls the fuelinfo function.
fuelInfo()

--calls the dig function.
dig()

