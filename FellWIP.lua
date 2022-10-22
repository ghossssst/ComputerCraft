
--function fuelInfo()
--    fuel = turtle.getFuelLevel()
--    while fuel < 200 do
--        turtle.select(1)
--        turtle.refuel(1)
--    end
--    print(fuel)
--end

function chop()
    print ("hello")
    do local success, data = turtle.inspect()
        if data.name == "minecraft:spruce_log" then
            turtle.dig()
            turtle.forward()
            print("ok")
        end
    end

    wood = "true"

    while wood == "true" do
        do local success, data = turtle.inspectUp()
            if data.name == "minecraft:spruce_log" then
                turtle.dig()
                turtle.forward()
                turtle.turnRight()
                turtle.dig()
                turtle.forward()
                turtle.turnRight()
                turtle.dig()
                turtle.forward()
                turtle.turnRight()
                turtle.forward()
                turtle.digUp()
                turtle.up()
                turtle.turnRight()
                wood = "true"
            else
                wood = "false"
            end
        end
    end

    while( true )
    do turtle.down()
    end
end

--fuelInfo()

chop()
