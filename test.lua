print("how deep")
nDeep=io.read()
nDeep=tonumber(nDeep)

print("Marco YOLO")

for i=1,4 do

 for i=1,nDeep do
     turtle.digDown()
     turtle.down()
 end

 for i=1,nDeep do
     turtle.up()
 end

 turtle.forward()
end
