-- Load YOUR Orion Library
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Qanuir/orion-ui/refs/heads/main/source"))()

-- Create the main window
local Window = OrionLib:MakeWindow({
    Name = "My Orion Version Full Example",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "MyOrionConfig"
    Theme = "Light"
})

-- Create a tab (first tab)
local Tab = Window:MakeTab({
    Name = "Testing All",
    Icon = "",        -- put icon asset id if you have
    PremiumOnly = false
})

-- Add Label
Tab:AddLabel("Label: This is just a simple label")

-- Add Paragraph
Tab:AddParagraph("Paragraph Title", "This is paragraph content. It can wrap text and adjust height.")

-- Add Button
Tab:AddButton({
    Name = "Test Button",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "You clicked it",
            Content = "Button callback works!",
            Image = "",  -- asset id or empty
            Time = 4
        })
    end
})

-- Add Toggle
Tab:AddToggle({
    Name = "Test Toggle",
    Default = false,
    Save = true,
    Flag = "ToggleTest",
    Callback = function(val)
        print("ToggleTest value:", val)
    end
})

-- Add Slider
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
        print("SliderTest value:", val)
    end
})

-- If your version has Dropdown, Textbox, Colorpicker, Keybind etc, add them:

-- Example Dropdown
if Tab.AddDropdown then
    Tab:AddDropdown({
        Name = "Test Dropdown",
        Default = "Option A",
        Options = {"Option A", "Option B", "Option C"},
        Callback = function(selection)
            print("Dropdown selected:", selection)
        end
    })
end

-- Example Textbox
if Tab.AddTextbox then
    Tab:AddTextbox({
        Name = "Test Textbox",
        Default = "Hello world",
        TextDisappear = true,
        Callback = function(text)
            print("Textbox input:", text)
        end
    })
end

-- Example Colorpicker (only if implemented in your version)
if Tab.AddColorpicker then
    Tab:AddColorpicker({
        Name = "Test Colorpicker",
        Default = Color3.new(1,0,0),
        Save = true,
        Flag = "ColorTest",
        Callback = function(color)
            print("Picked color:", color)
        end
    })
end

-- Example Keybind (only if implemented)
if Tab.AddBind then
    Tab:AddBind({
        Name = "Test Keybind",
        Default = Enum.KeyCode.F,
        Hold = false,
        Save = true,
        Flag = "BindTest",
        Callback = function()
            print("Keybind triggered")
        end
    })
end

-- Finalize / Init the UI
OrionLib:Init()
