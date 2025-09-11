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
## Creating Tab
```lua
local Tab = Window:MakeTab({
    Name = "Tab 1",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible only to premium users.
]]
```
## Creating Section
```lua
local Section = Tab:AddSection({
    Name = "Section"
})

--[[
Name = <string> - The name of the section.
]]
```
## Notifying The User
```lua
OrionLib:MakeNotification({
    Name = "Title!",
    Content = "Notification content...",
    Image = "rbxassetid://4483345998",
    Time = 5
})

--[[
Name = <string> - Notification title.
Content = <string> - Message shown in the notification.
Image = <string> - Icon image.
Time = <number> - Duration of the notification (in seconds).
]]
```
## Create Button
```lua
Tab:AddButton({
    Name = "Button!",
    Callback = function()
        print("button pressed")
    end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - Function executed when the button is pressed.
]]
```
## Create Toggle
```lua
local CoolToggle = Tab:AddToggle({
    Name = "This is a toggle!",
    Default = false,
    Callback = function(Value)
        print(Value)
    end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - Default value.
Callback = <function> - Function called when toggled.
]]
```
## Changing The Value Of Toggle
```lua
CoolToggle:Set(true)
```
## Creating Color Picker
```lua
local ColorPicker = Tab:AddColorpicker({
    Name = "Colorpicker",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(Value)
        print(Value)
    end	  
})

--[[
Name = <string> - The name of the colorpicker.
Default = <color3> - Default color.
Callback = <function> - Function executed when color changes.
]]
```

## Setting Color Picker Value
```lua
ColorPicker:Set(Color3.fromRGB(255,255,255))
```


## Creating Slider
```lua
local Slider = Tab:AddSlider({
    Name = "Slider",
    Min = 0,
    Max = 20,
    Default = 5,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "bananas",
    Callback = function(Value)
        print(Value)
    end    
})

--[[
Name = <string> - The name of the slider.
Min = <number> - The minimal value of the slider.
Max = <number> - The maximum value of the slider.
Increment = <number> - Step size.
Default = <number> - Default value.
ValueName = <string> - Label shown next to the value.
Callback = <function> - Function called when slider changes.
]]
```

## Change Slider Value
```lua
Slider:Set(2)
```

## Creating Label
```lua
local CoolLabel = Tab:AddLabel("Label")
```
## Updating a Label
```lua
CoolLabel:Set("Label New!")
```


## Creating Paragraph
```lua
local CoolParagraph = Tab:AddParagraph("Paragraph","Paragraph Content")
```

## Updating a Paragraph
```lua
CoolParagraph:Set("New Title", "New Paragraph Content!")
```


## Creating Textbox
```lua
Tab:AddTextbox({
    Name = "Textbox",
    Default = "default box input",
    TextDisappear = true,
    Callback = function(Value)
        print(Value)
    end	  
})

--[[
Name = <string> - The name of the textbox.
Default = <string> - Default text.
TextDisappear = <bool> - Clears text after focus is lost.
Callback = <function> - Function called with input value.
]]
```


## Creating a Keybind
```lua
local Bind = Tab:AddBind({
    Name = "Bind",
    Default = Enum.KeyCode.E,
    Hold = false,
    Callback = function()
        print("press")
    end    
})

--[[
Name = <string> - The name of the bind.
Default = <keycode> - Default key.
Hold = <bool> - If true, returns state while holding.
Callback = <function> - Function executed when key is pressed.
]]
```
## Changing Bind
```lua
Bind:Set(Enum.KeyCode.E)
```


## Creating Dropdown
```lua
local Dropdown = Tab:AddDropdown({
    Name = "Dropdown",
    Default = "1",
    Options = {"1", "2"},
    Callback = function(Value)
        print(Value)
    end    
})

--[[
Name = <string> - The name of the dropdown.
Default = <string> - Default selected option.
Options = <table> - List of options.
Callback = <function> - Function called when option is selected.
]]
```

## Refreshing Dropdown Options
```lua
Dropdown:Refresh({"3","4"}, true)
```

## Setting a Dropdown Option
```lua
Dropdown:Set("3")
```

## Finishing Your Script (Required)

At the very end of your code, you must add:
```lua
OrionLib:Init()
```


## Flags

Flags act as IDs for elements. They allow you to access element values anywhere in your code and are required for configs.
```lua
Tab:AddToggle({
    Name = "Toggle",
    Default = true,
    Save = true,
    Flag = "toggle"
})

print(OrionLib.Flags["toggle"].Value) -- prints the toggle’s value
```
Flags only work with: Toggle, Slider, Dropdown, Bind, and Colorpicker.



## Config System

To make your UI compatible with configs:

Add SaveConfig = true and ConfigFolder = "NameHere" in MakeWindow

Add Flag and Save = true to every element you want saved


Configs are created per-game and auto-loaded.


## Destroying the Interface
```lua
OrionLib:Destroy()
```

## Toggling the UI
```lua
OrionLib:ToggleUi()
```
