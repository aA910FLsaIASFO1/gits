return {
          Prompt = function (Warn_Type,Content, Args)
                    local win_warn = Instance.new("ImageLabel")
                    local icon = Instance.new("ImageLabel")
                    local top = Instance.new("Frame")
                    local close = Instance.new("TextButton")
                    local ar = Instance.new("TextLabel")
                    local deco = Instance.new("Frame")
                    local UIListLayout = Instance.new("UIListLayout")
                    local fixer = Instance.new("Frame")
                    local title = Instance.new("TextLabel")
		local sound = Instance.new("Sound", win_warn)sound.Name=""
		sound.SoundId = "rbxassetid://8503530582"
		sound.Volume = 3
                    win_warn.Name = "win_warn"
                    win_warn.Parent = Instance.new("ScreenGui",game:GetService("CoreGui"))
                    win_warn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    win_warn.BorderColor3 = Color3.fromRGB(255, 0, 0)
                    win_warn.Position = UDim2.new(0.343209863, 0, 0.305555552, 0)
                    win_warn.Size = UDim2.new(0, 279, 0, 132)
                    win_warn.Draggable=true
		win_warn.Active=true
		win_warn.Parent.DisplayOrder=1000
			

                    icon.Name = "icon"
                    icon.Parent = win_warn
                    icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    icon.BorderSizePixel = 0
                    icon.Position = UDim2.new(0.0886738002, 0, 0.267591178, 0)
                    icon.Size = UDim2.new(0, 46, 0, 46)
                    icon.Image = ""
                    if Warn_Type == "info" then
			sound.SoundId = "rbxassetid://2389339814"
                              icon.Image="http://www.roblox.com/asset/?id=18354443269"
                    elseif Warn_Type == "error" then
			sound.SoundId =  "rbxassetid://8499261098"
                              icon.Image="http://www.roblox.com/asset/?id=17324780780"
                    elseif Warn_Type == "warn" then
			sound.SoundId =  "rbxassetid://8499261098"
                              icon.Image="http://www.roblox.com/asset/?id=18354579095"
                    elseif Warn_Type == nil then
                              icon.Image = ""
                    end
                    top.Name = "top"
                    top.Parent = win_warn
                    top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    top.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    top.BorderSizePixel = 0
                    top.Size = UDim2.new(0, 279, 0, 25)

                    close.Name = "close"
                    close.Parent = top
                    close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                    close.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    close.BorderSizePixel = 0
                    close.Position = UDim2.new(0.907999992, 0, 0, 0)
                    close.Size = UDim2.new(0, 27, 0, 25)
                    close.Font = Enum.Font.SourceSans
                    close.Text = "X"
                    close.TextColor3 = Color3.fromRGB(220, 220, 220)
                    close.TextSize = 14.000

                    ar.Name = "ar"
                    ar.Parent = win_warn
                    ar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    ar.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    ar.BorderSizePixel = 0
                    ar.Position = UDim2.new(0.318996429, 0, 0.265151501, 0)
                    ar.Size = UDim2.new(0, 173, 0, 46)
                    ar.Font = Enum.Font.SourceSans
                    ar.Text = tostring(Content)
                    ar.TextColor3 = Color3.fromRGB(0, 0, 0)
                    ar.TextSize = 14.000
                    ar.TextWrapped = true
                    ar.TextXAlignment = Enum.TextXAlignment.Left
                    ar.TextYAlignment = Enum.TextYAlignment.Top
		ar.AutomaticSize=Enum.AutomaticSize.Y

                    deco.Name = "deco"
                    deco.Parent = ar
                    deco.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    deco.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    deco.BorderSizePixel = 0
                    deco.Position = UDim2.new(-0.514450848, 0, 1.3112762, 0)
                    deco.Size = UDim2.new(0, 279, 0, 36)

                    UIListLayout.Parent = deco
                    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
                    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
                    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                    UIListLayout.Padding = UDim.new(0, 9)

                    fixer.Name = "fixer"
                    fixer.Parent = deco
                    fixer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    fixer.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    fixer.BorderSizePixel = 0
                    fixer.LayoutOrder = 9999

                    title.Name = "title"
                    title.Parent = win_warn
                    title.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                    title.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    title.BorderSizePixel = 0
                    title.Size = UDim2.new(0, 254, 0, 25)
                    title.Font = Enum.Font.SourceSans
                    title.Text = "     "..tostring(Args.title)
                    title.TextColor3 = Color3.fromRGB(255, 255, 255)
                    title.TextSize = 14.000
                    title.TextXAlignment = Enum.TextXAlignment.Left
                    local anim=function(b)
                              b.MouseEnter:Connect(function()
                                        b.BackgroundColor3=Color3.fromRGB(188, 210, 207)
                                        b.BorderColor3=Color3.fromRGB(0, 167, 209)
                              end)
                              b.MouseLeave:Connect(function()
                                        b.BackgroundColor3=Color3.fromRGB(210, 210, 210)
                                        b.BorderColor3=Color3.fromRGB(150,150,150)
                              end)
                    end
                    
                    local nbt = function (titl,fun)
                              if titl == nil then titl = ""end 
                              if fun == nil then fun = function() end end
                              local opt1 = Instance.new("TextButton")
                              opt1.Name = "opt1"
                              opt1.Parent = deco
                              opt1.BackgroundColor3 = Color3.fromRGB(210, 210, 210)
                              opt1.BorderColor3 = Color3.fromRGB(150, 150, 150)
                              opt1.Position = UDim2.new(0.727598548, 0, 0.194444448, 0)
                              opt1.Size = UDim2.new(0, 70, 0, 19)
                              opt1.Font = Enum.Font.SourceSans
                              opt1.Text = titl
                              opt1.TextColor3 = Color3.fromRGB(0, 0, 0)
                              opt1.TextSize = 14.000
                              anim(opt1)
                              opt1.MouseButton1Click:Connect(function()
                                        win_warn.Parent:Destroy()
                                        fun()
                              end)
                    end
                    close.MouseButton1Click:Connect(function()
                              win_warn.Parent:Destroy()
                    end)
                    for i, v in pairs(Args.buttons) do
                              nbt(v.text,v.fun)
                    end
                    title.BackgroundTransparency=1
                    close.BackgroundTransparency=1
                    top.BackgroundColor3=Color3.fromRGB(255,0,0)
                    win_warn.MouseEnter:Connect(function()
                              title.TextColor3=Color3.fromRGB(255,255,255)
                              close.TextColor3=Color3.fromRGB(255,255,255)
                              top.BackgroundTransparency=0
                    end)
                    win_warn.MouseLeave:Connect(function()
                              title.TextColor3=Color3.fromRGB(150,150,150)
                              close.TextColor3=Color3.fromRGB(150,150,150)
                              top.BackgroundTransparency=1
                    end)
          

          end
}
