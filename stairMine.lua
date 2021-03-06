--[[ Code to be repeated to create a staircase mine
Series of turtle commands:
  - Dig Up
  - Move Up
  - Dig Up
  - Move down
  - dig down
  - move down
  - dig Forward
  - move forward ]]

print("how deep?")
nDeep=tonumber(io.read())

print("What slot is the fill material in?")
nSlot=tonumber(io.read())


function clear(direction)
  cont=true
  if direction == nil or direction == 'forward' then
    -- Loop to interate until space in front of turtle is clear
    while cont do
      if turtle.detect() then
        turtle.dig()
      else
        cont=false
      end
    end
  elseif direction == 'up' then
    -- Loop to interate until space in above turtle is clear
    while cont do
      if turtle.detectUp() then
        turtle.digUp()
      else
        cont=false
      end
    end
  elseif direction == 'down' then
    -- Loop to interate until space in below turtle is clear
    while cont do
      if turtle.detectDown() then
        turtle.digDown()
      else
        cont=false
      end
    end
  else
    error('function clear called incorrectly')
  end
end

function fillDown(slot)
  if not turtle.detectDown() then
    turtle.select(slot)
    turtle.placeDown()
  end
end

for i=1,nDeep do
  clear('up')
  turtle.up()
  clear('up')
  turtle.down()
  turtle.digDown()
  turtle.down()
  fillDown(nSlot)
  clear('forward')
  turtle.forward()
end
