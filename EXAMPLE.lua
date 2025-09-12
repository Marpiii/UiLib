-- Load Orion Library
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Qanuir/orion-ui/refs/heads/main/source.lua"))()

-- Main window
local Window = OrionLib:MakeWindow({
    Name = "Orion Full Example",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "MyOrionConfig"
})

-- First Tab: Showcase of components
local Tab = Window:MakeTab({
    Name = "Testing All",
    Icon = "rbxassetid://7072717697",
    PremiumOnly = false
})

Tab:AddLabel("This is a simple label")
Tab:AddParagraph("Paragraph Title", "This is paragraph content. It can wrap text and resize.")

Tab:AddButton({
    Name = "Click Me",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Notification",
            Content = "Button clicked!",
            Time = 4
        })
    end
})

Tab:AddToggle({
    Name = "Test Toggle",
    Default = false,
    Save = true,
    Flag = "ToggleTest",
    Callback = function(val)
        print("Toggle value:", val)
    end
})

Tab:AddSlider({
    Name = "Test Slider",
    Min = 0,
    Max = 100,
    Default = 50,
    Increment = 5,
    ValueName = "Value",
    Save = true,
    Flag = "SliderTest",
    Callback = function(val)
        print("Slider value:", val)
    end
})

Tab:AddDropdown({
    Name = "Test Dropdown",
    Default = "Option A",
    Options = {"Option A", "Option B", "Option C"},
    Callback = function(selection)
        print("Dropdown selected:", selection)
    end
})

Tab:AddTextbox({
    Name = "Test Textbox",
    Default = "Hello World",
    TextDisappear = true,
    Callback = function(text)
        print("Textbox input:", text)
    end
})

Tab:AddColorpicker({
    Name = "Test Colorpicker",
    Default = Color3.fromRGB(255, 0, 0),
    Save = true,
    Flag = "ColorTest",
    Callback = function(color)
        print("Picked color:", color)
    end
})

Tab:AddBind({
    Name = "Test Keybind",
    Default = Enum.KeyCode.F,
    Hold = false,
    Save = true,
    Flag = "BindTest",
    Callback = function()
        print("Keybind pressed!")
    end
})

-- Second Tab: Experiment area
local ExpTab = Window:MakeTab({
    Name = "Experiment",
    Icon = "rbxassetid://7072718362",
    PremiumOnly = false
})

ExpTab:AddLabel("This tab is for your experiments.")
ExpTab:AddButton({
    Name = "Experiment Button",
    Callback = function()
        print("Experiment button clicked!")
    end
})

-- Finalize
OrionLib:Init()
