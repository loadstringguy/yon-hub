local Library = {}
local mainKeybind = "Insert"
local TS = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService");
local mouse = game:GetService('Players').LocalPlayer:GetMouse()

local SolarLoader = Instance.new('ScreenGui', gethui())
local LoaderMain = Instance.new('Frame', SolarLoader)
local LML = Instance.new('ImageLabel', LoaderMain)
local LMT = Instance.new('TextLabel', LoaderMain)
local LMC = Instance.new('UICorner', LoaderMain)
local LMS = Instance.new('UIStroke', LoaderMain)
local SliderBack = Instance.new('Frame', LoaderMain)
local SliderBackCorner = Instance.new('UICorner', SliderBack)
local SliderBackStroke = Instance.new('UIStroke', SliderBack)
local SliderMain = Instance.new('Frame', SliderBack)
local SliderBackCorner = Instance.new('UICorner', SliderBack)
local LoaderText = Instance.new('TextLabel', LoaderMain)

SolarLoader.Name = "SolarLoader"
SolarLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LoaderMain.Name = "LoaderMain"
LoaderMain.Position = UDim2.new(0.4997,0,0.5,0)
LoaderMain.Size = UDim2.new(0,250,0,250)
LoaderMain.BackgroundColor3 = Color3.fromRGB(12, 14, 17)
LoaderMain.BorderSizePixel = 0
LoaderMain.BorderColor3 = Color3.new(0,0,0)
LoaderMain.AnchorPoint = Vector2.new(0.5,0.5)
LoaderMain.ZIndex = 100
LML.Name = "LML"
LML.Position = UDim2.new(0.2122,0,0.2136,0)
LML.Size = UDim2.new(0,142,0,142)
LML.BackgroundColor3 = Color3.new(1,1,1)
LML.BackgroundTransparency = 1
LML.BorderSizePixel = 0
LML.ImageTransparency = 1
LML.BorderColor3 = Color3.new(0,0,0)
LML.Image = "http://www.roblox.com/asset/?id=17493172571"
LML.ZIndex = 101
LMT.Name = "LMT"
LMT.Position = UDim2.new(0.1467,0,0.022,0)
LMT.Size = UDim2.new(0,76,0,50)
LMT.BackgroundColor3 = Color3.new(1,1,1)
LMT.BackgroundTransparency = 1
LMT.BorderSizePixel = 0
LMT.BorderColor3 = Color3.new(0,0,0)
LMT.Text = "sigma"
LMT.TextColor3 = Color3.new(0.9216,0.9216,0.9216)
LMT.Font = Enum.Font.GothamBold
LMT.TextTransparency = 1
LMT.TextSize = 32
LMT.ZIndex = 102
LMS.Color = Color3.new(0.3216,0.4431,1)
SliderBack.Name = "SliderBack"
SliderBack.Position = UDim2.new(0.5,0,0.79,0)
SliderBack.Size = UDim2.new(0,339,0,7)
SliderBack.BackgroundColor3 = Color3.new(1,1,1)
SliderBack.BackgroundTransparency = 1
SliderBack.BorderSizePixel = 0
SliderBack.BorderColor3 = Color3.new(0,0,0)
SliderBack.AnchorPoint = Vector2.new(0.5,0)
SliderBack.ZIndex = 113
SliderBackCorner.CornerRadius = UDim.new(0,100)
SliderBackStroke.Color = Color3.new(0.2745,0.2706,0.3333)
SliderBackStroke.Transparency = 1
SliderMain.Name = "SliderMain"
SliderMain.Size = UDim2.new(0,5,0,7)
SliderMain.BackgroundColor3 = Color3.new(0.2353,0.3294,0.7373)
SliderMain.BorderSizePixel = 0
SliderMain.BackgroundTransparency = 1
SliderMain.BorderColor3 = Color3.new(0,0,0)
SliderMain.ZIndex = 113
SliderBackCorner.CornerRadius = UDim.new(0,100)
LoaderText.Name = "LoaderText"
LoaderText.Position = UDim2.new(0.1347,0,0.6943,0)
LoaderText.Size = UDim2.new(0,338,0,19)
LoaderText.BackgroundColor3 = Color3.new(1,1,1)
LoaderText.BackgroundTransparency = 1
LoaderText.TextTransparency = 1
LoaderText.BorderSizePixel = 0
LoaderText.BorderColor3 = Color3.new(0,0,0)
LoaderText.Text = "Loading..."
LoaderText.TextColor3 = Color3.new(0.6549,0.6549,0.6549)
LoaderText.Font = Enum.Font.Gotham
LoaderText.TextSize = 14
LoaderText.ZIndex = 112

TS:Create(LML, TweenInfo.new(0.5, Enum.EasingStyle.Circular), {ImageTransparency = 0}):Play() wait(.5)
TS:Create(LoaderMain, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {Size = UDim2.new(0, 464, 0, 263)}):Play()
TS:Create(LML, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {Position = UDim2.new(0.011, 0, -0.002, 0)}):Play() wait(.1)
TS:Create(LML, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {Size = UDim2.new(0,63,0,63)}):Play() wait(.6)
TS:Create(LMT, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play() wait(.3)
TS:Create(SliderBackStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Transparency = 0}):Play() wait(.5)
TS:Create(LoaderText, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
TS:Create(SliderMain, TweenInfo.new(1.5, Enum.EasingStyle.Quad), {Size = UDim2.new(0,339,0,7)}):Play()
TS:Create(SliderMain, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play() wait(1.5)
LoaderText.Text = "Successfully loaded!"

wait(1)

SolarLoader.Enabled = false

local function CreateDrag(gui)
	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		TS:Create(gui, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)}):Play();
	end

	local lastEnd = 0
	local lastMoved = 0
	local con
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

		end
	end)

	UIS.InputEnded:Connect(function(input)

		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)


	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
			lastMoved = os.clock()
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end

function Library:NewWindow(title, mode)
	
	local window = {
		CurrentTab = nil
	}
	
	local Solar = Instance.new('ScreenGui', gethui())
	local Main = Instance.new('Frame', Solar)
	local Logo = Instance.new('ImageLabel', Main)
	local Title = Instance.new('TextLabel', Main)
	local Divider2 = Instance.new('Frame', Main)
	local Divider1 = Instance.new('Frame', Main)
	local TabFrame = Instance.new('ScrollingFrame', Main)
	local MainCorner = Instance.new('UICorner', Main)
	local TabLayout = Instance.new('UIListLayout', TabFrame)
	local TabPad = Instance.new('UIPadding', TabFrame)
	local Exit = Instance.new('ImageButton', Main)
	local Search = Instance.new('ImageButton', Main)
	local SearchInput = Instance.new('Frame', Main)
	local SearchStroke = Instance.new('UIStroke', SearchInput)
	local SearchCorner = Instance.new('UICorner', SearchInput)
	local SearchBox = Instance.new('TextBox', SearchInput)

	SearchInput.Name = "SearchInput"
	SearchInput.Position = UDim2.new(0.896, 0, 0.039, 0)
	SearchInput.Size = UDim2.new(0,0,0,28)
	SearchInput.BackgroundColor3 = Color3.new(0,0,0)
	SearchInput.BackgroundTransparency = 0.8
	SearchInput.BorderSizePixel = 0
	SearchInput.BorderColor3 = Color3.new(0,0,0)
	SearchInput.ZIndex = 111
	SearchInput.AnchorPoint = Vector2.new(1, 0)
	SearchStroke.Color = Color3.new(0.2745,0.2706,0.3333)
	SearchStroke.Transparency = 1
	SearchBox.Name = "SearchBox"
	SearchBox.Position = UDim2.new(0.0223,0,0,0)
	SearchBox.Size = UDim2.new(0,0,0,28)
	SearchBox.BackgroundColor3 = Color3.new(1,1,1)
	SearchBox.BackgroundTransparency = 1
	SearchBox.BorderSizePixel = 0
	SearchBox.BorderColor3 = Color3.new(0,0,0)
	SearchBox.Text = ""
	SearchBox.TextColor3 = Color3.new(0,0,0)
	SearchBox.Font = Enum.Font.Gotham
	SearchBox.TextSize = 12
	SearchBox.ZIndex = 112
	SearchBox.TextTransparency = 1
	SearchBox.TextXAlignment = Enum.TextXAlignment.Left
	SearchBox.PlaceholderText = "Search..."
	SearchBox.PlaceholderColor3 = Color3.new(0.6549,0.6549,0.6549)
	SearchBox.TextColor3 = Color3.new(0.6549,0.6549,0.6549)
	Search.Name = "Search"
	Search.Position = UDim2.new(0.9272,0,0.0394,0)
	Search.Size = UDim2.new(0,28,0,28)
	Search.BackgroundColor3 = Color3.new(1,1,1)
	Search.BackgroundTransparency = 1
	Search.BorderSizePixel = 0
	Search.BorderColor3 = Color3.new(0,0,0)
	Search.Image = "rbxassetid://15197354452"
	Search.ImageColor3 = Color3.new(0.5765,0.5765,0.5765)
	Search.ZIndex = 121
	Search.Visible = false
	Solar.Name = "Solar"
	Solar.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Main.Name = "Main"
	Main.Position = UDim2.new(0.2754,0,0.2005,0)
	Main.Size = UDim2.new(0,700,0,418)
	Main.BackgroundColor3 = Color3.fromRGB(12, 14, 17)
	Main.BorderSizePixel = 0
	Main.BorderColor3 = Color3.new(0,0,0)
	Main.ZIndex = 100
	Logo.Name = "Logo"
	Logo.Position = UDim2.new(0.0114,0,-0.0024,0)
	Logo.Size = UDim2.new(0,63,0,63)
	Logo.BackgroundColor3 = Color3.new(1,1,1)
	Logo.BackgroundTransparency = 1
	Logo.BorderSizePixel = 0
	Logo.BorderColor3 = Color3.new(0,0,0)
	Logo.Image = "http://www.roblox.com/asset/?id=17493172571"
	Logo.ZIndex = 101
	Title.Name = "Title"
	Title.Position = UDim2.new(0.1014,0,0.0144,0)
	Title.Size = UDim2.new(0,76,0,50)
	Title.BackgroundColor3 = Color3.new(1,1,1)
	Title.BackgroundTransparency = 1
	Title.BorderSizePixel = 0
	Title.BorderColor3 = Color3.new(0,0,0)
	Title.Text = title
	Title.TextColor3 = Color3.new(0.9216,0.9216,0.9216)
	Title.Font = Enum.Font.GothamBold
	Title.TextSize = 32
	Title.ZIndex = 102
	Divider2.Name = "Divider2"
	Divider2.Position = UDim2.new(0.2543,0,0.1483,0)
	Divider2.Size = UDim2.new(0,1,0,356)
	Divider2.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	Divider2.BorderSizePixel = 0
	Divider2.BorderColor3 = Color3.new(0,0,0)
	Divider2.ZIndex = 103
	Divider1.Name = "Divider1"
	Divider1.Position = UDim2.new(0,0,0.1483,0)
	Divider1.Size = UDim2.new(0,700,0,1)
	Divider1.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	Divider1.BorderSizePixel = 0
	Divider1.BorderColor3 = Color3.new(0,0,0)
	Divider1.ZIndex = 103
	TabFrame.Name = "TabFrame"
	TabFrame.Position = UDim2.new(0,0,0.1507,0)
	TabFrame.Size = UDim2.new(0,178,0,355)
	TabFrame.BackgroundColor3 = Color3.new(1,1,1)
	TabFrame.BackgroundTransparency = 1
	TabFrame.BorderSizePixel = 0
	TabFrame.BorderColor3 = Color3.new(0,0,0)
	TabFrame.ZIndex = 105
	TabFrame.ScrollBarThickness = 0
	TabFrame.ScrollBarImageColor3 = Color3.new(0,0,0)
	TabLayout.Name = "TabLayout"
	TabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
	TabLayout.Padding = UDim.new(0,5)
	TabPad.Name = "TabPad"
	TabPad.PaddingTop = UDim.new(0,7)
	Exit.Name = "Exit"
	Exit.Position = UDim2.new(0.9186,0,0.0335,0)
	Exit.Size = UDim2.new(0,34,0,34)
	Exit.BackgroundColor3 = Color3.new(1,1,1)
	Exit.BackgroundTransparency = 1
	Exit.BorderSizePixel = 0
	Exit.BorderColor3 = Color3.new(0,0,0)
	Exit.Image = "rbxassetid://3926305904"
	Exit.ImageColor3 = Color3.new(0.6549,0.6549,0.6549)
	Exit.ImageRectOffset = Vector2.new(764,804)
	Exit.ImageRectSize = Vector2.new(36,36)
	Exit.ZIndex = 120
	Exit.AutoButtonColor = false
	Exit.Visible = false
	
	local canSearch = true

	Exit.MouseButton1Click:Connect(function()
		Solar.Enabled = not Solar.Enabled
	end)
	
	Search.MouseButton1Click:Connect(function()
		if canSearch then
			TS:Create(SearchInput, TweenInfo.new(.2, Enum.EasingStyle.Quad), {Size = UDim2.new(0,448,0,28)}):Play()
			TS:Create(SearchBox, TweenInfo.new(.2, Enum.EasingStyle.Quad), {Size = UDim2.new(0,438,0,28)}):Play()
			TS:Create(SearchBox, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
			--TS:Create(SearchInput, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 0.8}):Play()
			TS:Create(SearchStroke, TweenInfo.new(.2, Enum.EasingStyle.Quad), {Transparency = 0}):Play()
			canSearch = false
		else
			TS:Create(SearchInput, TweenInfo.new(.2, Enum.EasingStyle.Quad), {Size = UDim2.new(0,0,0,28)}):Play()
			TS:Create(SearchBox, TweenInfo.new(.2, Enum.EasingStyle.Quad), {Size = UDim2.new(0,0,0,28)}):Play()
			TS:Create(SearchBox, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
			--TS:Create(SearchInput, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
			TS:Create(SearchStroke, TweenInfo.new(.2, Enum.EasingStyle.Quad), {Transparency = 1}):Play()
			SearchBox.Text = ""
			canSearch = true
		end
	end)
	
	SearchBox:GetPropertyChangedSignal('Text'):Connect(function()
		local InputText = string.upper(SearchBox.Text)
		for i, v in pairs(Main:GetDescendants()) do
			if v.Name == "ComponentTitle" then
				if InputText=="" or string.find(string.upper(v.Text), InputText) ~= nil then 
					v.Parent.Visible = true
				else
					v.Parent.Visible = false
				end
			end
		end
	end)
	
	if mode:lower() == "search" then
		Search.Visible = true
	elseif mode:lower() == "exit" then
		Exit.Visible = true
	end

	UIS.InputBegan:Connect(function(key, gp)
		if gp then return end;

		if key.KeyCode == Enum.KeyCode[mainKeybind] then
			Solar.Enabled = not Solar.Enabled
		end
	end)
	
	CreateDrag(Main)
	
	function window:NewTab(title)
		
		local tab = {
			Active = false
		}
		
		local Tab = Instance.new('TextButton', TabFrame)
		local TabCorner = Instance.new('UICorner', Tab)
		
		Tab.Name = "Tab"
		Tab.Position = UDim2.new(0.0229,0,0.177,0)
		Tab.Size = UDim2.new(0,145,0,28)
		Tab.BackgroundColor3 = Color3.new(0.1647,0.2275,0.5098)
		Tab.BorderSizePixel = 0
		Tab.BackgroundTransparency = 1
		Tab.AutoButtonColor = false
		Tab.BorderColor3 = Color3.new(0,0,0)
		Tab.Text = title
		Tab.TextColor3 = Color3.new(0.6549,0.6549,0.6549)
		Tab.Font = Enum.Font.Gotham
		Tab.TextSize = 14
		Tab.ZIndex = 110
		
		local Canvas = Instance.new('ScrollingFrame', Main)
		local CanvasLayout = Instance.new('UIListLayout', Canvas)
		local UIPadding = Instance.new('UIPadding', Canvas)
		
		Canvas.Name = "Canvas"
		Canvas.Position = UDim2.new(0.2557,0,0.1507,0)
		Canvas.Size = UDim2.new(0,521,0,355)
		Canvas.BackgroundColor3 = Color3.new(1,1,1)
		Canvas.BackgroundTransparency = 1
		Canvas.BorderSizePixel = 0
		Canvas.BorderColor3 = Color3.new(0,0,0)
		Canvas.ZIndex = 110
		Canvas.AutomaticCanvasSize = Enum.AutomaticSize.X
		Canvas.ScrollBarThickness = 0
		Canvas.Visible = false
		Canvas.ScrollBarImageColor3 = Color3.new(0,0,0)
		CanvasLayout.Name = "CanvasLayout"
		CanvasLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		CanvasLayout.SortOrder = Enum.SortOrder.LayoutOrder
		CanvasLayout.Padding = UDim.new(0,10)
		UIPadding.PaddingTop = UDim.new(0,10)
		
		function tab:Activate()
			if not tab.Active then
				if window.CurrentTab ~= nil then
					window.CurrentTab:Deactivate()
				end
				Tab.BackgroundTransparency = 0
				tab.Active = true
				Canvas.Visible = true
				Tab.TextColor3 = Color3.new(0.9216,0.9216,0.9216)
				window.CurrentTab = tab
			end
		end
		
		function tab:Deactivate()
			if tab.Active then
				tab.Active = false
				Canvas.Visible = false
				Tab.BackgroundTransparency = 1
				Tab.TextColor3 = Color3.new(0.6549,0.6549,0.6549)
			end
		end
		
		if window.CurrentTab == nil then
			tab:Activate()	
		end
		
		Tab.MouseButton1Click:Connect(function()
			tab:Activate()
		end)
		
		function tab:NewToggle(title, default, callback)
			
			local toggle = {
				State = false
			}
			
			local Toggle = Instance.new('ImageButton', Canvas)
			local ToggleStroke = Instance.new('UIStroke', Toggle)
			local ToggleCorner = Instance.new('UICorner', Toggle)
			local ToggleTitle = Instance.new('TextButton', Toggle)
			local ToggleBack = Instance.new('Frame', Toggle)
			local ToggleBackCorner = Instance.new('UICorner', ToggleBack)
			local ToggleBackStroke = Instance.new('UIStroke', ToggleBack)
			local ToggleMain = Instance.new('Frame', ToggleBack)
			local ToggleMainCorner = Instance.new('UICorner', ToggleMain)
			local ToggleMainStroke = Instance.new('UIStroke', ToggleMain)
			
			Toggle.Name = "Toggle"
			Toggle.Position = UDim2.new(0.2952,0,0.2582,0)
			Toggle.Size = UDim2.new(0,476,0,34)
			Toggle.AutoButtonColor = false
			Toggle.BackgroundColor3 = Color3.new(0,0,0)
			Toggle.BackgroundTransparency = 0.8
			Toggle.BorderSizePixel = 0
			Toggle.BorderColor3 = Color3.new(0,0,0)
			Toggle.ZIndex = 111
			ToggleStroke.Color = Color3.new(0.1647,0.2275,0.5098)
			ToggleTitle.Name = "ComponentTitle"
			ToggleTitle.Position = UDim2.new(0.0271,0,0.0023,0)
			ToggleTitle.Size = UDim2.new(0,463,0,33)
			ToggleTitle.BackgroundColor3 = Color3.new(1,1,1)
			ToggleTitle.BackgroundTransparency = 1
			ToggleTitle.BorderSizePixel = 0
			ToggleTitle.AutoButtonColor = false
			ToggleTitle.BorderColor3 = Color3.new(0,0,0)
			ToggleTitle.Text = title
			ToggleTitle.TextColor3 = Color3.new(0.6549,0.6549,0.6549)
			ToggleTitle.Font = Enum.Font.Gotham
			ToggleTitle.TextSize = 14
			ToggleTitle.ZIndex = 112
			ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
			ToggleBack.Name = "ToggleBack"
			ToggleBack.Position = UDim2.new(0.8803,0,0.2059,0)
			ToggleBack.Size = UDim2.new(0,42,0,20)
			ToggleBack.BackgroundColor3 = Color3.new(1,1,1)
			ToggleBack.BackgroundTransparency = 0.99
			ToggleBack.BorderSizePixel = 0
			ToggleBack.BorderColor3 = Color3.new(0,0,0)
			ToggleBack.ZIndex = 113
			ToggleBackCorner.CornerRadius = UDim.new(0,100)
			ToggleBackStroke.Color = Color3.new(0.2745,0.2706,0.3333)
			ToggleMain.Name = "ToggleMain"
			ToggleMain.Position = UDim2.new(0.194,0,0.2059,0)
			ToggleMain.Size = UDim2.new(0,12,0,12)
			ToggleMain.BackgroundColor3 = Color3.new(1,1,1)
			ToggleMain.BackgroundTransparency = 0.99
			ToggleMain.BorderSizePixel = 0
			ToggleMain.BorderColor3 = Color3.new(0,0,0)
			ToggleMain.ZIndex = 113
			ToggleMainCorner.CornerRadius = UDim.new(0,100)
			ToggleMainStroke.Color = Color3.new(0.2745,0.2706,0.3333)
			
			callback(default)
			
			function toggle:Toggle(boolean)
				if boolean == nil then
					toggle.State = not toggle.State
				else
					toggle.State = boolean
				end

				if toggle.State then
					TS:Create(ToggleStroke, TweenInfo.new(.1, Enum.EasingStyle.Quad), {Color = Color3.new(0.3216,0.4431,1)}):Play()
					TS:Create(ToggleTitle, TweenInfo.new(.1, Enum.EasingStyle.Quad), {TextColor3 = Color3.new(1, 1, 1)}):Play()
					TS:Create(ToggleMainStroke, TweenInfo.new(.1, Enum.EasingStyle.Quad), {Color = Color3.new(0.3216,0.4431,1)}):Play()
					TS:Create(ToggleBackStroke, TweenInfo.new(.1, Enum.EasingStyle.Quad), {Color = Color3.new(0.3216,0.4431,1)}):Play()
					TS:Create(ToggleMain, TweenInfo.new(.1, Enum.EasingStyle.Quad), {Position = UDim2.new(0.55,0,0.206,0)}):Play()
				else
					TS:Create(ToggleStroke, TweenInfo.new(.1, Enum.EasingStyle.Quad), {Color = Color3.new(0.1647,0.2275,0.5098)}):Play()
					TS:Create(ToggleMainStroke, TweenInfo.new(.1, Enum.EasingStyle.Quad), {Color = Color3.new(0.2745,0.2706,0.3333)}):Play()
					TS:Create(ToggleBackStroke, TweenInfo.new(.1, Enum.EasingStyle.Quad), {Color = Color3.new(0.2745,0.2706,0.3333)}):Play()
					TS:Create(ToggleMain, TweenInfo.new(.1, Enum.EasingStyle.Quad), {Position = UDim2.new(0.194,0,0.2059,0)}):Play()
					TS:Create(ToggleTitle, TweenInfo.new(.1, Enum.EasingStyle.Quad), {TextColor3 = Color3.new(0.6549,0.6549,0.6549)}):Play()
				end

				callback(toggle.State)
			end
			
			ToggleTitle.MouseButton1Down:Connect(function()
				toggle:Toggle()
			end)
			
			return toggle
		end
		
		function tab:NewSlider(title, min, max, default, callback)
			
			local slider = {
				connections = {}
			}
			

			local Slider = Instance.new('ImageButton', Canvas)
			local SliderStroke = Instance.new('UIStroke', Slider)
			local SliderCorner = Instance.new('UICorner', Slider)
			local SliderTitle = Instance.new('TextLabel', Slider)
			local SliderBack = Instance.new('Frame', Slider)
			local SliderBackCorner = Instance.new('UICorner', SliderBack)
			local SliderBackStroke = Instance.new('UIStroke', SliderBack)
			local SliderMain = Instance.new('Frame', SliderBack)
			local SliderMainCorner = Instance.new('UICorner', SliderMain)
			local SliderAmt = Instance.new('TextBox', Slider)

			Slider.Name = "Slider"
			Slider.Position = UDim2.new(0.0432,0,0.2551,0)
			Slider.Size = UDim2.new(0,476,0,48)
			Slider.BackgroundColor3 = Color3.new(0,0,0)
			Slider.BackgroundTransparency = 0.8
			Slider.BorderSizePixel = 0
			Slider.BorderColor3 = Color3.new(0,0,0)
			Slider.AutoButtonColor = false
			Slider.ZIndex = 117
			SliderStroke.Color = Color3.new(0.1647,0.2275,0.5098)
			SliderTitle.Name = "ComponentTitle"
			SliderTitle.Position = UDim2.new(0.0271,0,0.0023,0)
			SliderTitle.Size = UDim2.new(0,463,0,32)
			SliderTitle.BackgroundColor3 = Color3.new(1,1,1)
			SliderTitle.BackgroundTransparency = 1
			SliderTitle.BorderSizePixel = 0
			SliderTitle.BorderColor3 = Color3.new(0,0,0)
			SliderTitle.Text = title
			SliderTitle.TextColor3 = Color3.new(0.6549,0.6549,0.6549)
			SliderTitle.Font = Enum.Font.Gotham
			SliderTitle.TextSize = 14
			SliderTitle.ZIndex = 112
			SliderTitle.TextXAlignment = Enum.TextXAlignment.Left
			SliderBack.Name = "SliderBack"
			SliderBack.Position = UDim2.new(0.0252,0,0.6875,0)
			SliderBack.Size = UDim2.new(0,449,0,7)
			SliderBack.BackgroundColor3 = Color3.new(1,1,1)
			SliderBack.BackgroundTransparency = 0.99
			SliderBack.BorderSizePixel = 0
			SliderBack.BorderColor3 = Color3.new(0,0,0)
			SliderBack.ZIndex = 113
			SliderBackCorner.CornerRadius = UDim.new(0,100)
			SliderBackStroke.Color = Color3.new(0.2745,0.2706,0.3333)
			SliderMain.Name = "SliderMain"
			SliderMain.Size = UDim2.new(0,135,0,7)
			SliderMain.BackgroundColor3 = Color3.fromRGB(60, 84, 188)
			SliderMain.BorderSizePixel = 0
			SliderMain.BorderColor3 = Color3.new(0,0,0)
			SliderMain.ZIndex = 113
			SliderBackCorner.CornerRadius = UDim.new(0,100)
			SliderAmt.Name = "SliderAmt"
			SliderAmt.Position = UDim2.new(0.8974,0,0.0023,0)
			SliderAmt.Size = UDim2.new(0,47,0,32)
			SliderAmt.BackgroundColor3 = Color3.new(1,1,1)
			SliderAmt.BackgroundTransparency = 1
			SliderAmt.BorderSizePixel = 0
			SliderAmt.BorderColor3 = Color3.new(0,0,0)
			SliderAmt.Text = "25"
			SliderAmt.TextColor3 = Color3.new(0.6549,0.6549,0.6549)
			SliderAmt.Font = Enum.Font.Gotham
			SliderAmt.TextSize = 14
			SliderAmt.ZIndex = 113
			

			function slider:SetValue(v)
				if v == nil then
					local percentage = math.clamp((mouse.X - SliderBack.AbsolutePosition.X) / (SliderBack.AbsoluteSize.X), 0, 1)
					local value = ((max - min) * percentage) + min
					if value % 1 == 0 then
						SliderAmt.Text = string.format("%.0f", value)
					else
						SliderAmt.Text = string.format("%.1f", value)
					end
					--Library:tween(SliderMain, {Size = UDim2.fromScale(percentage, 1)})
					SliderMain.Size = UDim2.fromScale(percentage, 1)
				else
					if v % 1 == 0 then
						SliderAmt.Text = string.format("%.0f", v)
					else
						SliderAmt.Text = tostring(v)
					end
					--SliderMain.Size = UDim2.fromScale(((v - min) / (max - min)), 1)
					TS:Create(SliderMain, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {Size = UDim2.fromScale(((v - min) / (max - min)), 1)}):Play()
				end
				callback(slider:GetValue())
			end

			function slider:GetValue()
				return tonumber(SliderAmt.Text)
			end

			slider:SetValue(default)

			SliderAmt.FocusLost:Connect(function()
				local toNum
				pcall(function()
					toNum = tonumber(SliderAmt.Text)
				end)
				if toNum then
					toNum = math.clamp(toNum, min, max)
					slider:SetValue(toNum)
				else
					SliderAmt.Text = "no :<"
				end
			end)

			local Connection;
			table.insert(slider.connections, UIS.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					pcall(function()
						SliderStroke.Color = Color3.new(0.1647,0.2275,0.5098)
						Connection:Disconnect();
						Connection = nil;
						SliderTitle.TextColor3 = Color3.new(0.6549,0.6549,0.6549)
						SliderAmt.TextColor3 = Color3.new(0.6549,0.6549,0.6549)
						SliderMain.BackgroundColor3 = Color3.fromRGB(60, 84, 188)
					end)
				end
			end))

			table.insert(slider.connections, Slider.MouseButton1Down:Connect(function()
				if(Connection) then
					Connection:Disconnect();
				end;

				Connection = RS.Heartbeat:Connect(function()
					--callback()
					--if slider.Hover then
					SliderMain.BackgroundColor3 = Color3.new(0.3216,0.4431,1)
					SliderStroke.Color = Color3.new(0.3216,0.4431,1)
					SliderTitle.TextColor3 = Color3.new(1, 1, 1)
					SliderAmt.TextColor3 = Color3.new(1, 1, 1)
					slider:SetValue()
					slider.val = slider:GetValue()
					--end
				end)
			end))
			
			return slider
		end
		
		function tab:NewDropdown(title, options, default, callback)
			
			local dropdown = {}
			
			local Dropdown = Instance.new('Frame', Canvas)
			local DropdownStroke = Instance.new('UIStroke', Dropdown)
			local DropdownCorner = Instance.new('UICorner', Dropdown)
			local DropdownTitle = Instance.new('TextButton', Dropdown)
			local SelectedOption = Instance.new('Frame', Dropdown)
			local SOC = Instance.new('UICorner', SelectedOption)
			local SOS = Instance.new('UIStroke', SelectedOption)
			local SelectedText = Instance.new('TextLabel', SelectedOption)
			local SelectedPad = Instance.new('UIPadding', SelectedOption)
			local DropdownOptions = Instance.new('Frame', Dropdown)
			local OptionsStroke = Instance.new('UIStroke', DropdownOptions)
			local OptionsCorner = Instance.new('UICorner', DropdownOptions)

			Dropdown.Name = "Dropdown"
			Dropdown.Position = UDim2.new(0.2952,0,0.2582,0)
			Dropdown.Size = UDim2.new(0,476,0,34)
			Dropdown.BackgroundColor3 = Color3.new(0,0,0)
			Dropdown.BackgroundTransparency = 0.8
			Dropdown.BorderSizePixel = 0
			Dropdown.BorderColor3 = Color3.new(0,0,0)
			Dropdown.ZIndex = 111
			DropdownStroke.Color = Color3.new(0.1647,0.2275,0.5098)
			DropdownTitle.Name = "DropdownTitle"
			DropdownTitle.Position = UDim2.new(0.0271,0,0.0023,0)
			DropdownTitle.Size = UDim2.new(0,463,0,33)
			DropdownTitle.BackgroundColor3 = Color3.new(1,1,1)
			DropdownTitle.BackgroundTransparency = 1
			DropdownTitle.AutoButtonColor = false
			DropdownTitle.BorderSizePixel = 0
			DropdownTitle.BorderColor3 = Color3.new(0,0,0)
			DropdownTitle.Text = title
			DropdownTitle.TextColor3 = Color3.new(0.6549,0.6549,0.6549)
			DropdownTitle.Font = Enum.Font.Gotham
			DropdownTitle.TextSize = 14
			DropdownTitle.ZIndex = 112
			DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left
			SelectedOption.Name = "SelectedOption"
			SelectedOption.Position = UDim2.new(0.9685,0,0.2059,0)
			SelectedOption.Size = UDim2.new(0,42,0,20)
			SelectedOption.BackgroundColor3 = Color3.new(1,1,1)
			SelectedOption.BackgroundTransparency = 0.99
			SelectedOption.BorderSizePixel = 0
			SelectedOption.BorderColor3 = Color3.new(0,0,0)
			SelectedOption.AnchorPoint = Vector2.new(1,0)
			SelectedOption.AutomaticSize = Enum.AutomaticSize.X
			SelectedOption.ZIndex = 113
			SOC.CornerRadius = UDim.new(0,6)
			SOS.Color = Color3.new(0.2745,0.2706,0.3333)
			SelectedText.Name = "SelectedText"
			SelectedText.Size = UDim2.new(0,41,0,20)
			SelectedText.BackgroundColor3 = Color3.new(1,1,1)
			SelectedText.BackgroundTransparency = 1
			SelectedText.BorderSizePixel = 0
			SelectedText.BorderColor3 = Color3.new(0,0,0)
			SelectedText.Text = default or "Please enter default"
			SelectedText.TextColor3 = Color3.new(0.6549,0.6549,0.6549)
			SelectedText.Font = Enum.Font.Gotham
			SelectedText.TextSize = 14
			SelectedText.AutomaticSize = Enum.AutomaticSize.X
			SelectedText.ZIndex = 112
			SelectedPad.Name = "SelectedPad"
			SelectedPad.PaddingLeft = UDim.new(0,10)
			SelectedPad.PaddingRight = UDim.new(0,10)
			DropdownOptions.Name = "DropdownOptions"
			DropdownOptions.Position = UDim2.new(0.968,0,1.1766,0)
			DropdownOptions.Size = UDim2.new(0,22,0,50)
			DropdownOptions.BackgroundColor3 = Color3.fromRGB(10, 11, 14)
			DropdownOptions.BorderSizePixel = 0
			DropdownOptions.BorderColor3 = Color3.new(0,0,0)
			DropdownOptions.AnchorPoint = Vector2.new(1,0)
			DropdownOptions.Visible = false
			DropdownOptions.AutomaticSize = Enum.AutomaticSize.XY
			DropdownOptions.ZIndex = 115
			OptionsStroke.Color = Color3.new(0.3216,0.4431,1)
			
			callback(default)
			
			DropdownTitle.MouseButton1Down:Connect(function()
				DropdownOptions.Visible = not DropdownOptions.Visible
			end)
			
			for i, v in options do
				
				if i > 1 then
					local Divider = Instance.new('Frame', DropdownOptions)
					Divider.Name = "Divider"
					Divider.Position = UDim2.new(-0.1111,0,0.6557,0)
					Divider.Size = UDim2.new(0,76,0,1)
					Divider.BackgroundColor3 = Color3.new(0.2745,0.2706,0.3333)
					Divider.BorderSizePixel = 0
					Divider.BorderColor3 = Color3.new(0,0,0)
				end
				
				local Option = Instance.new('Frame', DropdownOptions)
				local OptionText = Instance.new('TextButton', Option)
				local OptionLayout = Instance.new('UIListLayout', DropdownOptions)
				local OptionPadding = Instance.new('UIPadding', DropdownOptions)
				
				Option.Name = "Option"
				Option.Position = UDim2.new(0.5,0,0.206,0)
				Option.Size = UDim2.new(0,42,0,20)
				Option.BackgroundColor3 = Color3.new(1,1,1)
				Option.BackgroundTransparency = 1
				Option.BorderSizePixel = 0
				Option.BorderColor3 = Color3.new(0,0,0)
				Option.AnchorPoint = Vector2.new(0.5,0)
				Option.AutomaticSize = Enum.AutomaticSize.X
				Option.ZIndex = 113
				OptionText.Name = "OptionText"
				OptionText.Size = UDim2.new(0,41,0,20)
				OptionText.BackgroundColor3 = Color3.new(1,1,1)
				OptionText.BackgroundTransparency = 1
				OptionText.BorderSizePixel = 0
				OptionText.BorderColor3 = Color3.new(0,0,0)
				OptionText.Text = v
				OptionText.TextColor3 = Color3.new(0.6549,0.6549,0.6549)
				OptionText.Font = Enum.Font.Gotham
				OptionText.TextSize = 14
				OptionText.AutoButtonColor = false
				OptionText.AutomaticSize = Enum.AutomaticSize.X
				OptionText.ZIndex = 112
				OptionLayout.Name = "OptionLayout"
				OptionLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				OptionLayout.VerticalAlignment = Enum.VerticalAlignment.Center
				OptionLayout.SortOrder = Enum.SortOrder.LayoutOrder
				OptionLayout.Padding = UDim.new(0,2)
				OptionPadding.Name = "OptionPadding"
				OptionPadding.PaddingBottom = UDim.new(0,3)
				OptionPadding.PaddingTop = UDim.new(0,3)
				OptionPadding.PaddingLeft = UDim.new(0,10)
				OptionPadding.PaddingRight = UDim.new(0,10)
				
				OptionText.MouseButton1Down:Connect(function()
					SelectedText.Text = v
					callback(v)
					DropdownOptions.Visible = false
				end)
				
			end
			
			return dropdown
		end
		
		return tab
	end

	return window
end

if getgenv().sigmhack then
    warn("Script already loaded or is loading")
    return
end
getgenv().sigmhack = true

print('Loading AC Bypass!')
if not LPH_OBFUSCATED then
    getfenv().LPH_NO_VIRTUALIZE = function(f) return f end
end

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Handshake = ReplicatedStorage.Remotes.CharacterSoundEvent
local Hooks = {}
local HandshakeInts = {}

LPH_NO_VIRTUALIZE(function()
    for i, v in pairs(getgc()) do
        if typeof(v) == "function" and islclosure(v) then
            if (#getprotos(v) == 1) and table.find(getconstants(getproto(v, 1)), 4000001) then
                hookfunction(v, function() end)
            end
        end
    end
end)()

Hooks.__namecall = hookmetamethod(game, "__namecall", LPH_NO_VIRTUALIZE(function(self, ...)
    local Method = getnamecallmethod()
    local Args = {...}

    if not checkcaller() and (self == Handshake) and (Method == "fireServer") and (string.find(Args[1], "AC")) then
        if (#HandshakeInts == 0) then
            HandshakeInts = {table.unpack(Args[2], 2, 18)}
        else
            for i, v in pairs(HandshakeInts) do
                Args[2][i + 1] = v
            end
        end
    end

    return Hooks.__namecall(self, ...)
end))

task.wait(1)
print('Success! Now Loading..')

local debris = game:GetService("Debris")
local contentProvider = game:GetService("ContentProvider")
local scriptContext = game:GetService("ScriptContext")
local players = game:GetService("Players")

local tweenService = game:GetService("TweenService")
local statsService = game:GetService("Stats")
local runService = game:GetService("RunService")
local userInputService = game:GetService("UserInputService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local httpService = game:GetService("HttpService")
local starterGui = game:GetService("StarterGui")

local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local camera = workspace.CurrentCamera
local values = replicatedStorage:FindFirstChild("Values")


local lib = Library:NewWindow("sigmhack", "Search")
local t1 = lib:NewTab("Catching", "Canvas")


local distance = 25

t1:NewToggle("Magnets", false, function(state)
    getfenv().mags = (state and true or false)
    local Workspace = game:GetService("Workspace")

    Workspace.ChildAdded:Connect(function(Child)
        if Child:IsA("BasePart") and Child.Name == "Football" then
            Child.Size = Vector3.new(distance, distance, distance)
            Child.CanCollide = false
        end
    end)
end)

t1:NewSlider("Magnets Distance", 0, 25, 5, function(v)
    distance = v
end)

t1:NewToggle("View Magnets Hitbox", false, function(state)
    getfenv().mshitbox = (state and true or false)

    local magnetEnabled = state
    local hitboxSize = Vector3.new(distance, distance, distance)

    local function createHitbox(target)
        if not target:IsA("BasePart") then return end

        local hitbox = Instance.new("Part")
        hitbox.Size = hitboxSize
        hitbox.Transparency = 0.05
        hitbox.Anchored = true
        hitbox.CanCollide = false
        hitbox.Material = Enum.Material.ForceField
        hitbox.Name = "MagnetHitbox"
        hitbox.CFrame = target.CFrame
        hitbox.CastShadow = false
        hitbox.Parent = target

        local function updateHitbox()
            while magnetEnabled and target and target.Parent do
                local offset = target.CFrame.LookVector * distance
                hitbox.CFrame = target.CFrame + offset
                task.wait()
            end
            hitbox:Destroy()
        end

        task.spawn(updateHitbox)
    end

    workspace.ChildAdded:Connect(function(child)
        if child.Name == "Football" and child:IsA("BasePart") and magnetEnabled then
            createHitbox(child)
        end
    end)
end)


local t2 = lib:NewTab("Physics", "Canvas")

t2:NewToggle("Quick TP", false, function(state)
    getgenv().quicktp = (state and true or false)
    local quickTPEnabled = getgenv().quicktp
    local tpDistance = 2

    local function handleQuickTP()
        if quickTPEnabled then
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local humanoidRootPart = character.HumanoidRootPart
                humanoidRootPart.CFrame = humanoidRootPart.CFrame + humanoidRootPart.CFrame.LookVector * tpDistance
            end
        end
    end

    local function onInputBegan(input, gameProcessed)
        if not gameProcessed and input.KeyCode == Enum.KeyCode.F then
            handleQuickTP()
        end
    end

    userInputService.InputBegan:Connect(onInputBegan)
end)

t2:NewToggle("Mobile Quick TP Button", false, function(state)
    getgenv().mobquickbutton = (state and true or false)

    if state then
        local ScreenGui = Instance.new("ScreenGui")
        local TextButton = Instance.new("TextButton")
        local UICorner = Instance.new("UICorner")

        ScreenGui.Parent = player:WaitForChild("PlayerGui")
        ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        TextButton.Parent = ScreenGui
        TextButton.BackgroundColor3 = Color3.new(0.0588, 0.0588, 0.0588)
        TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.47683534, 0, 0.461152881, 0)
        TextButton.Size = UDim2.new(0, 65, 0, 62)
        TextButton.Font = Enum.Font.SourceSans
        TextButton.Text = "TP"
        TextButton.TextColor3 = Color3.new(0.8314, 0.8314, 0.8314)
        TextButton.TextSize = 17.000
        TextButton.BackgroundTransparency = 0.76

        UICorner.Parent = TextButton

        local function dragify(button)
            local dragging, dragInput, dragStart, startPos

            local function update(input)
                local delta = input.Position - dragStart
                button.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            end

            button.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = true
                    dragStart = input.Position
                    startPos = button.Position

                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
                        end
                    end)
                end
            end)

            button.InputChanged:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                    dragInput = input
                end
            end)

            userInputService.InputChanged:Connect(function(input)
                if dragging and input == dragInput then
                    update(input)
                end
            end)
        end

        dragify(TextButton)

        local function teleportForward()
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local humanoidRootPart = character.HumanoidRootPart
                humanoidRootPart.CFrame = humanoidRootPart.CFrame + humanoidRootPart.CFrame.LookVector * tpDistance
            end
        end

        TextButton.MouseButton1Click:Connect(teleportForward)
    else
        local existingGui = player.PlayerGui:FindFirstChild("ScreenGui")
        if existingGui then
            existingGui:Destroy()
        end
    end
end)

t2:NewSlider("Teleport Distance", 0, 5, 2, function(v)
    tpDistance = v
end)

local ball = findClosestBall() if not ball then continue end

function beamProjectile(g, v0, x0, t1)
    local c = 0.5 * 0.5 * 0.5
    local p3 = 0.5 * g * t1 * t1 + v0 * t1 + x0
    local p2 = p3 - (g * t1 * t1 + v0 * t1) / 3
    local p1 = (c * g * t1 * t1 + 0.5 * v0 * t1 + x0 - c * (x0 + p3)) / (3 * c) - p2

    local curve0 = (p1 - x0).magnitude
    local curve1 = (p2 - p3).magnitude

    local b = (x0 - p3).unit
    local r1 = (p1 - x0).unit
    local u1 = r1:Cross(b).unit
    local r2 = (p2 - p3).unit
    local u2 = r2:Cross(b).unit
    b = u1:Cross(r1).unit

    local cf1 = CFrame.new(
        x0.x, x0.y, x0.z,
        r1.x, u1.x, b.x,
        r1.y, u1.y, b.y,
        r1.z, u1.z, b.z
    )

    local cf2 = CFrame.new(
        p3.x, p3.y, p3.z,
        r2.x, u2.x, b.x,
        r2.y, u2.y, b.y,
        r2.z, u2.z, b.z
    )

    return curve0, -curve1, cf1, cf2
end

t2:NewToggle("Ball Path Prediction", false, function(state)
    getgenv().ballPrediction = (state and true or false)


            local initialVelocity = ball.AssemblyLinearVelocity
            local a0, a1 = Instance.new("Attachment"), Instance.new("Attachment")
            a0.Parent = workspace.Terrain
            a1.Parent = workspace.Terrain

            local beam = Instance.new("Beam", workspace.Terrain)
            beam.Attachment0 = a0
            beam.Attachment1 = a1
            beam.Segments = 500
            beam.Width0 = 0.5
            beam.Width1 = 0.5
            beam.Transparency = NumberSequence.new(0)
            beam.Color = ColorSequence.new(Color3.new(1, 1, 1))

            local g = Vector3.new(0, -28, 0)
            local x0 = ball.Position
            local v0 = initialVelocity

            local curve0, curve1, cf1, cf2 = beamProjectile(g, v0, x0, 5)

            beam.CurveSize0 = curve0
            beam.CurveSize1 = curve1
            a0.CFrame = a0.Parent.CFrame:Inverse() * cf1
            a1.CFrame = a1.Parent.CFrame:Inverse() * cf2

            repeat task.wait() until ball.Parent ~= workspace

            beam:Destroy()
        end
    end)
end)

		
t2:NewToggle("No Jump Cooldown", false, function(state)
    getgenv().nojumpcd = (state and true or false)

    if not humanoid then
        player.CharacterAdded:Wait()
        humanoid = player.Character:FindFirstChild("Humanoid")
    end

    if state then
        if humanoid then
            while getgenv().nojpcd do
                task.wait()
                humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
            end
        else
            warn("Humanoid not found")
        end
    else
        if humanoid then
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
        end
    end
end)

t2:NewToggle("Optimal Jump", false, function(state)
    getgenv().optimalJumpPredictions = (state and true or false)

    task.spawn(function()

        local initialVelocity = ball.AssemblyLinearVelocity
        local optimalPosition = Vector3.new(0, 0, 0)
        local currentPosition = ball.Position
        local t = 0

        while getgenv().optimalJumpPredictions do
            t = t + 0.05
            initialVelocity = initialVelocity + Vector3.new(0, -28 * 0.05, 0)
            currentPosition = currentPosition + initialVelocity * 0.05

            local raycastParams = RaycastParams.new()
            raycastParams.FilterDescendantsInstances = {workspace:FindFirstChild("Models")}
            raycastParams.FilterType = Enum.RaycastFilterType.Include

            local rayLength = optimalJumpType.Value == "Jump" and -13 or -15
            local ray = workspace:Raycast(currentPosition, Vector3.new(0, rayLength, 0), raycastParams)
            local antiCrashRay = workspace:Raycast(currentPosition, Vector3.new(0, -500, 0), raycastParams)

            if ray and t > 0.75 then
                optimalPosition = ray.Position + Vector3.new(0, 2, 0)
                break
            end

            if not antiCrashRay then
                optimalPosition = currentPosition
                break
            end
        end

        local part = Instance.new("Part")
        part.Anchored = true
        part.Material = Enum.Material.ForceField
        part.Size = Vector3.new(1.5, 1.5, 1.5)
        part.Position = optimalPosition
        part.CanCollide = false
        part.Shape = Enum.PartType.Ball
        part.Color = Color3.fromRGB(255, 255, 255)
        part.Parent = workspace

        repeat task.wait() until ball.Parent ~= workspace

        part:Destroy()
    end)
end)


t2:NewToggle("Block Extender", false, function(state)
    getgenv().bextend = (state and true or false)

    task.spawn(function()
        while true do
            local blockPart = character and character:FindFirstChild("BlockPart")
            if not blockPart then
                task.wait()
                continue
            end

            blockPart.Size = bextend and Vector3.new(bextend, bextend, bextend) or Vector3.new(0.75, 5, 1.5)
            blockPart.Transparency = state and bltransparency or 1

            task.wait()
        end
    end)
end)

t2:NewSlider("Block Extender Distance", 0, 20, 5, function(v)
    bextend = v
end)

t2:NewSlider("Block Extender Transparency", 0, 1, 0.5, function(v)
    bltransparency = v
end)
