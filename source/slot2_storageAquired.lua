
arrPos = 1

for k, v in pairs(json.decode(slot2.getItemsList())) do
    --system.print(v["name"])
    --system.print(v["quantity"])
    --system.print(v["unitVolume"])
    --system.print(v["unitMass"])
    
    tmpQ = v["quantity"]
    tmpUV = v["unitVolume"]
    tmpL = tmpQ * tmpUV
    --system.print(tmpL)
    Materials[arrPos] = v["name"]
    MaterialVols[arrPos] = tmpL
    arrPos = arrPos + 1
end

MaterialSlot = 1
Material = Materials[MaterialSlot]
currentVolume = math.floor(MaterialVols[MaterialSlot])
render()
unit.setTimer("tenSecond", 10)