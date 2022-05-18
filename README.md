# Ore Display

Forked from du-ore-pure-gas-display https://github.com/brendonh/du-lua

Displays ALL ores on a HUB. Shows a different one every 10 seconds.

Changes
* Switched to new Screen Render API
* WIP use aquireStorage (Doesnt work with auto configure yet due to event)
* Working assets.prod.novaquark.com images

TODO
* Update the stored data after 10 minutes.


### Original Readme Below

LUA display for t1-t5 ores, minerals, and gasses as of patch Beta 1 r0.28.6 3/22/22

![Image of Screen](source/example.jpg?raw=true)

**Instructions:**
  - Link Programming Board: Screen & Hub or Container (link order not important)
  - Copy contents of config.json and right click on programming board > Advanced > Paste Lua configuration from clipboard
  - Edit Lua Parameters: Set Material Name and Container Size in KL
  - Turn on Screen & Activate Board

**Optional:**
  - Link relay to programming boards then link pressure tile to relay (forces update when standing on pressure tile)
  - 
**Supports the following materials:**

  * Bauxite
  * Aluminium
  * Coal
  * Carbon
  * Hematite
  * Iron
  * Quartz
  * Silicon
  * Chromite
  * Chromium
  * Limestone
  * Calcium
  * Malachite
  * Copper
  * Natron
  * Sodium
  * Acanthite
  * Silver
  * Garnierite
  * Nickel
  * Petalite
  * Lithium
  * Pyrite
  * Sulfur
  * Cobaltite
  * Cobalt
  * Cryolite
  * Fluorine
  * GoldNuggets
  * Gold
  * Kolbeckite
  * Scandium
  * Columbite
  * Niobium
  * Ilmenite
  * Titanium
  * Rhodonite
  * Manganese
  * Thoramine
  * Trithorium
  * Vanadinite
  * Vanadium
  * Hydrogen
  * Oxygen
