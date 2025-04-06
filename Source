local ui = {}
local screengui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
screengui.IgnoreGuiInset = true
screengui.ResetOnSpawn = false

local uis = game:GetService("UserInputService")

local openCloseKeybind
function ui.SetKeybind(keybind:Enum.KeyCode)
	openCloseKeybind = keybind
end

uis.InputBegan:Connect(function(input: InputObject)
	if input.KeyCode == openCloseKeybind then
		if screengui then
			screengui.Enabled = not screengui.Enabled
		end
	end
end)

function ui.MakeWindow(UIName:string, Draggable:boolean, startpos:UDim2, startSize:UDim2)
	if startpos and startSize then
		local Window = Instance.new("Frame", screengui)
		Window.Draggable = Draggable
		Window.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
		Window.Position = startpos
		Window.Size = startSize
		Window.AnchorPoint = Vector2.new(0.5, 0.5)
		
		local TextLabel = Instance.new("TextLabel", Window)
		TextLabel.AnchorPoint = Vector2.new(0.5, 0)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Text = UIName
		TextLabel.TextScaled = true
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.Size = UDim2.new(1, 0, 0.1, 0)
		TextLabel.Position = UDim2.fromScale(0.5, 0)

		local UIStroke = Instance.new("UIStroke", TextLabel)
		UIStroke.Color = Color3.fromRGB(0, 0, 0)
		UIStroke.Thickness = 2
		
		local UICorner = Instance.new("UICorner", Window)
		UICorner.CornerRadius = UDim.new(0.2, 0)
		
		local UIStroke = Instance.new("UIStroke", Window)
		UIStroke.Color = Color3.fromRGB(0, 0, 0)
		UIStroke.Thickness = 5
		UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		
		local buttonCount = 0
		local buttons = {}
		
		function buttons:AddMobileButton()
			local ButtonGUI = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
			ButtonGUI.IgnoreGuiInset = true
			ButtonGUI.ResetOnSpawn = false
			
			local ToggleButton = Instance.new("TextButton", ButtonGUI)
			ToggleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
			ToggleButton.Text = "Open/Close"
			ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleButton.Size = UDim2.fromScale(0.1, 0.1)
			ToggleButton.AnchorPoint = Vector2.new(0.5, 0.5)
			ToggleButton.Position = UDim2.fromScale(0.3, 0.1)
			ToggleButton.Draggable = true
		
			local UIStroke = Instance.new("UIStroke", ToggleButton)
			UIStroke.Color = Color3.fromRGB(0, 0, 0)
			UIStroke.Thickness = 2
		
			local UIStroke = Instance.new("UIStroke", ToggleButton)
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Color = Color3.fromRGB(0, 0, 0)
			UIStroke.Thickness = 2
		
			local UICorner = Instance.new("UICorner", ToggleButton)
			UICorner.CornerRadius = UDim.new(0.5, 0)
			
			ToggleButton.MouseButton1Down:Connect(function()
				screengui.Enabled = not screengui.Enabled
			end)
		end
		
		function buttons.MakeButton(Name:string, func)
			buttonCount += 1
			
			--make the button/Frame
			local button = Instance.new("Frame", Window)
			button.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
			button.AnchorPoint = Vector2.new(0.5, 0.5)
			button.Position = UDim2.new(0.5, 0, 0.2 * buttonCount, 0)
			button.Size = UDim2.fromScale(0.8, 0.15)
			
			local UICorner = Instance.new("UICorner", button)
			UICorner.CornerRadius = UDim.new(0.2, 0)
			
			local UIStroke = Instance.new("UIStroke", button)
			UIStroke.Thickness = 3
			
			--Makes the Textlabel
			local TextLabel = Instance.new("TextLabel", button)
			TextLabel.Text = Name
			TextLabel.TextScaled = true
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
			TextLabel.Position = UDim2.fromScale(0.5, 0.5)
			TextLabel.Size = UDim2.new(1, 0, 1, 0)
			TextLabel.BackgroundTransparency = 1

			local UIStroke = Instance.new("UIStroke", TextLabel)
			UIStroke.Color = Color3.fromRGB(0, 0, 0)
			UIStroke.Thickness = 2
			
			--Makes the function to work
			button.InputBegan:Connect(function(input: InputObject)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					func()
				end
			end)
		end
		
		function buttons.MakeToggle(Name:string, func)
			buttonCount += 1
			
			-- Make the Frame
			local toggle = Instance.new("Frame", Window)
			toggle.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
			toggle.AnchorPoint = Vector2.new(0.5, 0.5)
			toggle.Position = UDim2.new(0.5, 0, 0.2 * buttonCount, 0)
			toggle.Size = UDim2.fromScale(0.8, 0.15)

			local UICorner = Instance.new("UICorner", toggle)
			UICorner.CornerRadius = UDim.new(0.2, 0)

			local UIStroke = Instance.new("UIStroke", toggle)
			UIStroke.Thickness = 3
			
			--Make the TextLabel
			local TextLabel = Instance.new("TextLabel", toggle)
			TextLabel.Text = Name
			TextLabel.TextScaled = true
			TextLabel.BackgroundTransparency = 1
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.AnchorPoint = Vector2.new(0, 0.5)
			TextLabel.Size = UDim2.fromScale(0.7, 1)
			TextLabel.Position = UDim2.fromScale(0, 0.5)

			local UIStroke = Instance.new("UIStroke", TextLabel)
			UIStroke.Thickness = 3
			
			--Makes the actuall toggle/Button
			local Button = Instance.new("ImageButton", toggle)
			Button.Image = ""
			Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			Button.AnchorPoint = Vector2.new(0, 0.5)
			Button.Size = UDim2.new(0.2, 0, 0.5, 0)
			Button.Position = UDim2.new(0.75, 0, 0.5)

			local UICorner = Instance.new("UICorner", Button)
			UICorner.CornerRadius = UDim.new(0.2, 0)

			local UIStroke = Instance.new("UIStroke", Button)
			UIStroke.Thickness = 3
			
			--function of the Button
			local Toggled = false
			
			Button.MouseButton1Down:Connect(function()
				Toggled = not Toggled
				if Toggled == false then
					Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
				else
					Button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
				end
				
				func(Toggled)
			end)
		end
		return buttons
	end
end

return ui
