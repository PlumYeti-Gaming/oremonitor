TimerStarted = 0

if( TimerStarted == 0 )
then

Material = "Coal"
Volume_Available_KL = "368" --export: (Default: 192000) Available Volume (KL) in Hub or Container
Materials = { "Coal", "Hematite", "Bauxite", "Quartz" }
MaterialVols = { 0,0,0,0 }
MaterialSlot = 1

--system.print("container " ..slot2.getMaxVolume())
--Volume_Available_KL = slot2.getMaxVolume()
end

unit.hide()

template = [[

local layer = createLayer() -- create a new layer
local rx, ry = getResolution() -- get the resolution of the screen
local fontPYG = loadFont("RobotoMono-Bold", 48) -- load the "Play" font at size 20pain
local font = loadFont("RobotoMono", 56) -- load the "Play" font at size 20pain
local fontBold = loadFont("RobotoMono-Bold", 64) -- load the "Play" font at size 20pain
setDefaultTextAlign (layer, AlignH_Center, AlignV_Middle)
addText(layer, fontPYG, "PYG Ore Monitor", rx/2, ry/16) -- add a text string using font

--Progress Bar Back
setNextFillColor(layer, 0.3, 0.3, 0.3, 1)
addBox(layer, 16, (ry/4) * 3, rx - 32, (ry/4) - 16) -- add a box in the center of the screen
setNextFillColor(layer, 0, 0, 0, 1)
addBox(layer, 16 + 8, ((ry/4) * 3) + 8, rx - 48, (ry/4) - 32) -- add a box in the center of the screen

-- Front 1
-- layer x y width height
setNextFillColor(layer, 0.5, 0.5, 0.5, 1)
addBox(layer, 16 + 8, ((ry/4) * 3) + 8, ((rx - 48) / 100) * ${percentAll}, (ry/4) - 32) -- add a box in the center of the screen

-- Front 2
-- layer x y width height
setNextFillColor(layer, ${color}, 1)
addBox(layer, 16 + 8, ((ry/4) * 3) + 8, ((rx - 48) / 100) * ${percent}, (ry/4) - 32) -- add a box in the center of the screen

layer = createLayer()
setDefaultTextAlign (layer, AlignH_Center, AlignV_Top)

local image = loadImage("https://assets.prod.novaquark.com/${pureName}.png")
addImage(layer, image, rx/6, ry/5, 256,256)

addText(layer, fontBold, "${Material}", (rx/3) * 2, ((ry/5) * 2) - 48 )
addText(layer, font, "${volume} kL", (rx/3) * 2, ((ry/5) * 2) + 32)
]]

local ores = {
  
  Bauxite="70186/2a660dc9-9af6-4f4b-87d3-bba4defb1964",
  Aluminium="70186/cfdec659-f969-415e-865b-2f45732c0721",
  Coal="70186/edc9f97e-7359-454e-8ba9-8f960037ae9b",
  Carbon="70186/1bbb1cd2-c592-4e73-a21f-459feafea9f1",
  Hematite="70186/4ff8e9b7-5ed8-4b62-9b02-219219081efa",
  Iron="70186/e4a55054-e4e4-4d31-b476-5a5be639cdfe",
  Quartz="70186/a8d1c39e-d3d3-4a75-bce1-348036588108",
  Silicon="33603/f278b764-df68-43c4-a927-5b95d13129f7",
  Chromite="70186/b7357f8d-43ce-4279-a7d3-75fb6fda4fcd",
  Chromium="70186/30f8a263-b1c5-4183-851a-ef2bdedcbd0c",
  Limestone="70186/dc16bf83-bc00-42b3-8f71-1683e8350efb",
  Calcium="33603/f1088f6b-2a8f-4014-9668-841a0e553b6c",
  Malachite="45824/36e5a9ca-c9f6-4e66-b2f4-fe64c9289224",
  Copper="33603/94c19b9e-c692-4517-9213-e903fdf2bf1a",
  Natron="70186/cec7c516-9f70-4b2b-9d60-6f9527ae36a8",
  Sodium="70186/20bdcf7a-57a1-4c7c-9448-d8bfeaa25807",
  Acanthite="70186/e5246f30-14b3-4bf8-bfc1-9bf20a40ed6e",
  Silver="70186/b8e973ac-7b9b-4d67-907d-569f7ea607a7",
  Garnierite="70186/b8a8443d-374d-4df2-b289-bfe69105a962",
  Nickel="70186/0fc41ba8-947c-49ad-925c-fe08802fd189";
  Petalite="70186/3ce3c407-4cfc-4c90-9258-c7af0a5bcf97",
  Lithium="70186/d3ff1b6d-8e4e-4d9a-92ba-471eb41748b3",
  Pyrite="70186/0423117d-8754-470c-873c-9b56bf3b9ae2",
  Sulfur="70186/f7b48d69-05dc-4ab9-8dcd-98db49ea1c4d",
  Cobaltite="70186/a1e3cbd0-c1c1-423d-abea-bf89fbbeb936",
  Cobalt="70186/d19ba950-6d03-4d48-8ccd-53cca2e75670",
  Cryolite="70186/54c5acf2-7c0c-4154-b38c-ffe22d349b80",
  Fluorine="70186/de954433-be17-41d1-bbc6-e869f299af27",
  GoldNuggets="70186/335baaee-7651-4b90-9e5a-290950ed0f5a",
  Gold="70186/93d6fc8a-b279-4888-b771-d8c6c1e5537b",
  Kolbeckite="70186/c4d32953-9bfb-4586-974d-de0a2ea0f954",
  Scandium="70186/cabbf832-0cd8-4c36-b2fd-447b4d59b255",
  Columbite="70186/891cbe02-e34c-4473-9cac-65ba67075e47",
  Niobium="70186/5f88a651-62ad-4a28-985f-b1f8ad8bded4",
  Ilmenite="70186/13f64ee1-4c8d-40bb-9eff-605e6e6e681f",
  Titanium="70186/b59240cd-f161-4939-a634-a8ba5f55e5a6",
  Rhodonite="70186/a2f5af65-de9e-4b49-a752-a47a42eca4e9",
  Manganese="70186/2f1b6ad3-b034-46d4-862d-c5d3fc8281eb",
  Thoramine="70186/d31d5c49-80d1-4d4e-aa87-9e15d161992b",
  --Trithorium="iconsLib/materialslib/trithorium_pure",
  Vanadinite="70186/34804219-fcbb-4900-9358-77688ef535fe",
  Vanadium="70186/6bab2dbf-b46a-4ecd-b931-fa9709f721f8",
  Hydrogen="70186/88781b09-fd68-4f5b-a128-376ca6a7457e",
  Oxygen="70186/828ca6c1-2ef0-4845-b5a6-b1a02d206b69"
}

local config = {}

function configure()
  if checkSlots(slot1, slot2) then
      config.screen = slot1
      config.container = slot2
      maxVolume = math.floor(slot2.getMaxVolume())
      currentVolume = math.floor(MaterialVols[MaterialSlot])
      currentVolumeAll = math.floor(slot2.getItemsVolume())
      
      slot2.acquireStorage()
      return true
  end

  if checkSlots(slot2, slot1) then
      config.screen = slot2
      config.container = slot1
      maxVolume = math.floor(slot1.getMaxVolume())
      currentVolume = math.floor(MaterialVols[MaterialSlot])
      currentVolumeAll = math.floor(slot1.getItemsVolume())
      
      slot1.acquireStorage()
      return true
  end

  system.print("Can't config")
  return false
end

function checkSlots(a, b)
  return (a ~= nil and b ~= nil and
              string.match(a.getElementClass(), "Screen") and
              string.match(b.getElementClass(), "Container"))
end

function render()
  local pureName = ores[Material]
  if pureName == nil then
      system.print("Invalid ore name")
      return
  end
  local volume = currentVolume / 1000
  local volumeAll = currentVolumeAll / 1000
  local percent = volume / Volume_Available_KL * 100
  local percentAll = volumeAll / Volume_Available_KL * 100
  volume = tonumber(string.format("%.3f", volume))
  
  --system.print("Volume: " ..volume.. " (volume)")
  --system.print("Percent: " ..percent.. " (Volume / Volume Available KL * 100)")
  local color
  if percent > 75 then
      color = "0, 0.666, 0"
  elseif percent > 50 then
      color = "0.666, 0.666, 0"
  else
      color = "0.666, 0, 0"
  end
  local params = {
      pureName=pureName,
      Material=Material,
      volume=volume,
      volumeAll=volumeAll,
      percent=percent,
      percentAll=percentAll,
      color=color
  }
  config.screen.setRenderScript(interp(template, params))
end

function interp(s, tab)
  return (s:gsub('($%b{})', function(w) return tab[w:sub(3, -2)] or w end))
end

if configure() then
  --render()
    if( TimerStarted == 1 )
    then
        render()
    end
end