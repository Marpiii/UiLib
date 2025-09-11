# 🚀 Orion Showcase Script

```lua
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/YOUR_USERNAME/OrionLib/main/Orion.lua"))()

local Window = OrionLib:MakeWindow({
    Name = "Orion Showcase",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionShowcase"
})

--## 🗂️ Main Tab
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--## 🔖 Label
Tab:AddLabel("This is a label")

--## 📑 Paragraph
Tab:AddParagraph("About", "This is a longer paragraph that describes something important.")

--## 🔘 Button
Tab:AddButton({
    Name = "Click Me",
    Callback = function()
        print("Button pressed")
    end
})

--## ✅ Toggle
Tab:AddToggle({
    Name = "Enable Feature",
    Default = false,
    Save = true,
    Flag = "Toggle1",
    Callback = function(Value)
        print("Toggle is now:", Value)
    end
})

--## 🎚️ Slider
Tab:AddSlider({
    Name = "Speed",
    Min = 0,
    Max = 100,
    Default = 50,
    Increment = 5,
    ValueName = "Speed",
    Color = Color3.fromRGB(255,255,255),
    Save = true,
    Flag = "Slider1",
    Callback = function(Value)
        print("Speed set to:", Value)
    end
})

--## 📂 Dropdown
Tab:AddDropdown({
    Name = "Select Option",
    Default = "Option1",
    Options = {"Option1","Option2","Option3"},
    Save = true,
    Flag = "Dropdown1",
    Callback = function(Value)
        print("Dropdown selected:", Value)
    end
})

--## ⌨️ Keybind
Tab:AddBind({
    Name = "Hotkey",
    Default = Enum.KeyCode.E,
    Save = true,
    Flag = "Bind1",
    Callback = function()
        print("Hotkey pressed!")
    end
})

--## 📝 Textbox
Tab:AddTextbox({
    Name = "Enter Text",
    Default = "Hello",
    TextDisappear = true,
    Callback = function(Value)
        print("You typed:", Value)
    end
})

--## 🎨 Colorpicker
Tab:AddColorpicker({
    Name = "Pick a Color",
    Default = Color3.fromRGB(255, 0, 0),
    Save = true,
    Flag = "Color1",
    Callback = function(Value)
        print("Color picked:", Value)
    end
})

--## 🔔 Notification Example
OrionLib:MakeNotification({
    Name = "Welcome",
    Content = "Orion Showcase Loaded!",
    Image = "rbxassetid://4483345998",
    Time = 5
})

--## 🏁 Init (must be last)
OrionLib:Init()
