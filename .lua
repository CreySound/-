repeat task.wait() until game:IsLoaded()
if (game.TextChatService.ChatVersion == Enum.ChatVersion.TextChatService) then
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local ScreenGui = Instance.new("ScreenGui")
	local TextBox = Instance.new("TextBox")

	--Properties:

	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.ResetOnSpawn = false

	TextBox.Parent = ScreenGui
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(0.398157626, 0, 0.744336545, 0)
	TextBox.Size = UDim2.new(0, 200, 0, 50)
	TextBox.Font = Enum.Font.SourceSans
	TextBox.PlaceholderText = "press ; to bypass"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.TextSize = 14.000

	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(1111, 1111)
	UICorner.Parent = TextBox

	mouse = game.Players.LocalPlayer:GetMouse()

	function KeyD(key)
		key = key:lower()
		if key == ";" then
			wait()
			TextBox:CaptureFocus()
		end
	end
	mouse.KeyDown:connect(KeyD)

	TextBox.FocusLost:connect(function(enterPressed)
		if enterPressed and TextBox.Text ~= "" then 
			local chatService, players = game:GetService("Chat"), game:GetService("Players")

			local custom_chars = {
				--	[" "] = "￰",
				["s"] = "ѕ",
				["p"] = "р",
				["a"] = "а",
				["i"] = "і",
				["m"] = "m",
				["u"] = "υ",
				["v"] = "ν",
				["e"] = "е",
				["o"] = "о",
				["E"] = "Е",
				["A"] = "А",
				["B"] = "В",
				["H"] = "Н",
				["P"] = "Р",
				["О"] = "O",
				["K"] = "К",
				["T"] = "Т",
				["Z"] = "Ζ",
				["N"] = "Ν"
			}

			--game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.TextLabel.Text = "Chat bypass made by csy"

			local default = " ိ"

			local player = players.LocalPlayer
			local playerGui = player:WaitForChild("PlayerGui")

			do
				local randomstr = function()
					local characters = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}
					local str = ""
					local length = math.random(12, 32)

					for i = 1, length do
						str = str .. characters[math.random(#characters)]
					end
					return str
				end
			--[[task.spawn(function()
				while wait(.1) do
					--if chatBar:IsFocused() then
						chatService:FilterStringForBroadcast(randomstr(), player)
					--end
				end
			end)]]
			end

			local c = function()
				for i = 1, 2 do
					game.TextChatService.TextChannels.RBXGeneral:SendAsync("/e Hey how are you doing?", "All")
					game.TextChatService.TextChannels.RBXGeneral:SendAsync("/e How are you doing?", "All")
				end
			end

			local newMessage = TextBox.Text
			for i,v in pairs(custom_chars) do
				local rep = string.gsub(newMessage, i, v .. "⁥")
				newMessage = rep
			end
			newMessage = "`  ॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚   ̌̌̌  ᳚᳚᳚᳚᳚ť" .. newMessage

			coroutine.wrap(c)
			game.TextChatService.TextChannels.RBXGeneral:SendAsync(newMessage, "All");
			wait()
			TextBox.Text = ""
		end	
	end)	



else

	repeat task.wait() until game:IsLoaded()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua", true))()
	wait()
	local chatService, players = game:GetService("Chat"), game:GetService("Players")

	local custom_chars = {
		--	[" "] = "￰",
		["s"] = "ѕ",
		["p"] = "р",
		["a"] = "а",
		["i"] = "і",
		["m"] = "m",
		["u"] = "υ",
		["v"] = "ν",
		["e"] = "е",
		["o"] = "о",
		["E"] = "Е",
		["A"] = "А",
		["B"] = "В",
		["H"] = "Н",
		["P"] = "Р",
		["О"] = "O",
		["K"] = "К",
		["T"] = "Т",
		["Z"] = "Ζ",
		["N"] = "Ν"
	}

	game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.TextLabel.Text = "Chat bypass made by csy"

	local default = " ိ"

	local player = players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	local chatBar

	repeat task.wait() until game.CoreGui.ExperienceChat.appLayout.chatInputBar.Background.Container.TextContainer.TextBoxContainer:FindFirstChild("TextBox")
	chatBar = game.CoreGui.ExperienceChat.appLayout.chatInputBar.Background.Container.TextContainer.TextBoxContainer:FindFirstChild("TextBox")

	do
		local randomstr = function()
			local characters = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}
			local str = ""
			local length = math.random(12, 32)

			for i = 1, length do
				str = str .. characters[math.random(#characters)]
			end
			return str
		end
		task.spawn(function()
			while wait(.1) do
				if chatBar:IsFocused() then
					chatService:FilterStringForBroadcast(randomstr(), player)
				end
			end
		end)
	end

	local c = function()
		for i = 1, 2 do
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/e Hey how are you doing?", "All")
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/e How are you doing?", "All")
		end
	end

	local old
	old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
		local method = getnamecallmethod()
		local args = {...}

		if method == "FireServer" and self.Name == "SayMessageRequest" and #args == 2 and not checkcaller() then
			local newMessage = args[1]
			for i,v in pairs(custom_chars) do
				local rep = string.gsub(newMessage, i, v .. "⁥")
				newMessage = rep
			end
			newMessage = "`  ॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚॓᳚   ̌̌̌  ᳚᳚᳚᳚᳚ť" .. newMessage

			args[1] = newMessage
			coroutine.wrap(c)
			return old(self, unpack(args))
		end
		return old(self, ...)
	end))

end
