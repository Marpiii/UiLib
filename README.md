# Orion Library
This documentation is for the stable release of Orion Library.  
A clean and modern **Roblox UI Library** for exploit environments (Synapse X, Script-Ware, etc).  

It provides draggable windows, animations, themes, config saving, and a full set of UI elements.

---

## Booting the Library
```lua
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/YOUR_USERNAME/OrionLib/main/Orion.lua"))()
```
## Creating Window
```lua
local Window = OrionLib:MakeWindow({
    Name = "Title of the library",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest"
})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details show Premium status.
SaveConfig = <bool> - Enables saving of configs.
ConfigFolder = <string> - The folder name where configs are saved.
IntroEnabled = <bool> - Whether to show the intro animation.
IntroText = <string> - Text to display in the intro animation.
IntroIcon = <string> - Image asset for the intro animation.
Icon = <string> - Image asset for the window icon.
CloseCallback = <function> - Function executed when the window is closed.
]]
```
