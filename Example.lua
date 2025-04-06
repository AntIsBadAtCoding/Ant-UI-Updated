local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/AntIsBadAtCoding/Ant-UI-Updated/refs/heads/main/Source.lua'))

lib.SetKeybind(Enum.KeyCode.LeftControl)--Makes a keybind to open.close the ui

local window = lib.MakeWindow("Name", false, UDim2.new(0.7, 0, 0.5, 0),UDim2.new(0.2, 0, 0.7, 0)) --ui name, draggable, start position, start size

window.MakeButton("Button name", function()
	print("Button Pressed")
end)

window.MakeToggle("Toggle name", function(Pressed) --will return true or false
	print(Pressed)
end)
