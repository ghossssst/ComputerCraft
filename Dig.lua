print("Enter High: ")
inputy = io.read()

print("Enter Width: ")
inputx = io.read()

print("Enter Length: ")
inputz = io.read()

y = tonumber(inputy)
x = tonumber(inputx)
z = tonumber(inputz)



function excavate()

    rz = 0

        while rz < z do

            rx = 0

            while rx < x do
                turtle.dig()
                turtle.forward()
                rx = rx + 1
                if rx == x and rx % 2 == 0 then
                    turtle.turnRight()
                    turtle.dig()
                    turtle.forward()
                    turtle.turnRight()
                elseif rx == x and rx % 2 ~= 0 then
                    turtle.turnLeft()
                    turtle.dig()
                    turtle.forward()
                    turtle.turnLeft()
                end
            end

            rz = rz + 1
            

        end
end

excavate()

