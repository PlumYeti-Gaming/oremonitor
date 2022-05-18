MaterialSlot = MaterialSlot + 1

if( MaterialSlot > #Materials )
then
   MaterialSlot = 1
end
Material = Materials[MaterialSlot]
currentVolume = math.floor(MaterialVols[MaterialSlot])
render()