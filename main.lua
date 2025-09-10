local function createGui(parent)
	--ScreenGui1--
	local ScreenGui1 = Instance.new("ScreenGui",parent)
	ScreenGui1["ResetOnSpawn"] = false
	ScreenGui1["IgnoreGuiInset"] = true
	ScreenGui1["Name"] = "PiggyHubV2"
	ScreenGui1["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
	----ScreenGui1----
	--Script2--
	local Script2 = Instance.new("Script",ScreenGui1)
	Script2["Name"] = "Client"
	----Script2----
	--Folder3--
	local Folder3 = Instance.new("Folder",Script2)
	Folder3["Name"] = "Templates"
	----Folder3----
	--TextButton4--
	local TextButton4 = Instance.new("TextButton",Folder3)
	TextButton4["TextWrapped"] = true
	TextButton4["TextColor3"] = Color3.new(1, 1, 1)
	TextButton4["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton4["TextSize"] = 14
	TextButton4["Font"] = Enum.Font.Oswald
	TextButton4["Name"] = "ButtonTemplate"
	TextButton4["TextScaled"] = true
	TextButton4["Size"] = UDim2.new(1, 0, 0.150000006, 0)
	TextButton4["BackgroundTransparency"] = 0.5
	TextButton4["BorderSizePixel"] = 0
	TextButton4["BackgroundColor3"] = Color3.new(0.470588, 0.435294, 0.356863)
	----TextButton4----
	--UICorner5--
	local UICorner5 = Instance.new("UICorner",TextButton4)
	----UICorner5----
	--UIPadding6--
	local UIPadding6 = Instance.new("UIPadding",TextButton4)
	UIPadding6["PaddingBottom"] = UDim.new(0.150000006, 0)
	UIPadding6["PaddingTop"] = UDim.new(0.100000001, 0)
	UIPadding6["PaddingLeft"] = UDim.new(0.100000001, 0)
	UIPadding6["PaddingRight"] = UDim.new(0.100000001, 0)
	----UIPadding6----
	--UIStroke7--
	local UIStroke7 = Instance.new("UIStroke",TextButton4)
	UIStroke7["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke7["Thickness"] = 4
	UIStroke7["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke7----
	--UIGradient8--
	local UIGradient8 = Instance.new("UIGradient",TextButton4)
	UIGradient8["Rotation"] = 90
	UIGradient8["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient8----
	--Frame9--
	local Frame9 = Instance.new("Frame",Folder3)
	Frame9["BackgroundTransparency"] = 0.5
	Frame9["Size"] = UDim2.new(1, 0, 0.150000006, 0)
	Frame9["BorderColor3"] = Color3.new(0, 0, 0)
	Frame9["Name"] = "ToggleTemplate"
	Frame9["BorderSizePixel"] = 0
	Frame9["BackgroundColor3"] = Color3.new(0.470588, 0.435294, 0.356863)
	----Frame9----
	--UICorner10--
	local UICorner10 = Instance.new("UICorner",Frame9)
	----UICorner10----
	--UIStroke11--
	local UIStroke11 = Instance.new("UIStroke",Frame9)
	UIStroke11["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke11["Thickness"] = 4
	UIStroke11["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke11----
	--TextLabel12--
	local TextLabel12 = Instance.new("TextLabel",Frame9)
	TextLabel12["TextWrapped"] = true
	TextLabel12["Active"] = true
	TextLabel12["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel12["BorderSizePixel"] = 0
	TextLabel12["Size"] = UDim2.new(0.94310385, 0, 0.999999285, 0)
	TextLabel12["RichText"] = true
	TextLabel12["AutoLocalize"] = false
	TextLabel12["TextColor3"] = Color3.new(1, 1, 1)
	TextLabel12["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel12["Text"] = "Toggle"
	TextLabel12["TextXAlignment"] = Enum.TextXAlignment.Left
	TextLabel12["Font"] = Enum.Font.Oswald
	TextLabel12["BackgroundTransparency"] = 1
	TextLabel12["Position"] = UDim2.new(0.471551925, 0, 1.00000012, 0)
	TextLabel12["TextSize"] = 50
	TextLabel12["Name"] = "Text"
	TextLabel12["TextScaled"] = true
	TextLabel12["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel12----
	--UIGradient13--
	local UIGradient13 = Instance.new("UIGradient",TextLabel12)
	UIGradient13["Rotation"] = 90
	UIGradient13["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient13----
	--TextButton14--
	local TextButton14 = Instance.new("TextButton",Frame9)
	TextButton14["TextColor3"] = Color3.new(0, 0, 0)
	TextButton14["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton14["Text"] = ""
	TextButton14["TextSize"] = 14
	TextButton14["AutoButtonColor"] = false
	TextButton14["AnchorPoint"] = Vector2.new(0, 0.5)
	TextButton14["Font"] = Enum.Font.SourceSans
	TextButton14["Name"] = "Toggle"
	TextButton14["Position"] = UDim2.new(0.943000019, 0, 0.5, 0)
	TextButton14["Size"] = UDim2.new(0.0426665694, 0, 0.621890485, 0)
	TextButton14["BackgroundTransparency"] = 1
	TextButton14["BorderSizePixel"] = 0
	TextButton14["BackgroundColor3"] = Color3.new(1, 0.501961, 0.592157)
	----TextButton14----
	--UICorner15--
	local UICorner15 = Instance.new("UICorner",TextButton14)
	----UICorner15----
	--UIGradient16--
	local UIGradient16 = Instance.new("UIGradient",TextButton14)
	UIGradient16["Rotation"] = 90
	UIGradient16["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient16----
	--UIStroke17--
	local UIStroke17 = Instance.new("UIStroke",TextButton14)
	UIStroke17["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke17["Thickness"] = 4
	UIStroke17["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke17----
	--UIGradient18--
	local UIGradient18 = Instance.new("UIGradient",UIStroke17)
	UIGradient18["Rotation"] = 90
	UIGradient18["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient18----
	--UIGradient19--
	local UIGradient19 = Instance.new("UIGradient",Frame9)
	UIGradient19["Rotation"] = 90
	UIGradient19["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient19----
	--Frame20--
	local Frame20 = Instance.new("Frame",Folder3)
	Frame20["BackgroundTransparency"] = 0.5
	Frame20["Size"] = UDim2.new(1, 0, 0.150000006, 0)
	Frame20["BorderColor3"] = Color3.new(0, 0, 0)
	Frame20["Name"] = "TextboxToggleTemplate"
	Frame20["BorderSizePixel"] = 0
	Frame20["BackgroundColor3"] = Color3.new(0.470588, 0.435294, 0.356863)
	----Frame20----
	--UICorner21--
	local UICorner21 = Instance.new("UICorner",Frame20)
	----UICorner21----
	--UIStroke22--
	local UIStroke22 = Instance.new("UIStroke",Frame20)
	UIStroke22["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke22["Thickness"] = 4
	UIStroke22["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke22----
	--TextLabel23--
	local TextLabel23 = Instance.new("TextLabel",Frame20)
	TextLabel23["TextWrapped"] = true
	TextLabel23["Active"] = true
	TextLabel23["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel23["BorderSizePixel"] = 0
	TextLabel23["Size"] = UDim2.new(0.724999964, 0, 0.999999285, 0)
	TextLabel23["RichText"] = true
	TextLabel23["AutoLocalize"] = false
	TextLabel23["TextColor3"] = Color3.new(1, 1, 1)
	TextLabel23["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel23["Text"] = "Textbox Toggle"
	TextLabel23["TextXAlignment"] = Enum.TextXAlignment.Left
	TextLabel23["Font"] = Enum.Font.Oswald
	TextLabel23["BackgroundTransparency"] = 1
	TextLabel23["Position"] = UDim2.new(0.362499982, 0, 1.00000012, 0)
	TextLabel23["TextSize"] = 50
	TextLabel23["Name"] = "Text"
	TextLabel23["TextScaled"] = true
	TextLabel23["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel23----
	--UIGradient24--
	local UIGradient24 = Instance.new("UIGradient",TextLabel23)
	UIGradient24["Rotation"] = 90
	UIGradient24["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient24----
	--TextButton25--
	local TextButton25 = Instance.new("TextButton",Frame20)
	TextButton25["TextColor3"] = Color3.new(0, 0, 0)
	TextButton25["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton25["Text"] = ""
	TextButton25["TextSize"] = 14
	TextButton25["AutoButtonColor"] = false
	TextButton25["AnchorPoint"] = Vector2.new(0, 0.5)
	TextButton25["Font"] = Enum.Font.SourceSans
	TextButton25["Name"] = "Toggle"
	TextButton25["Position"] = UDim2.new(0.943000019, 0, 0.5, 0)
	TextButton25["Size"] = UDim2.new(0.0426665694, 0, 0.621890485, 0)
	TextButton25["BackgroundTransparency"] = 1
	TextButton25["BorderSizePixel"] = 0
	TextButton25["BackgroundColor3"] = Color3.new(1, 0.501961, 0.592157)
	----TextButton25----
	--UICorner26--
	local UICorner26 = Instance.new("UICorner",TextButton25)
	----UICorner26----
	--UIStroke27--
	local UIStroke27 = Instance.new("UIStroke",TextButton25)
	UIStroke27["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke27["Thickness"] = 4
	UIStroke27["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke27----
	--UIGradient28--
	local UIGradient28 = Instance.new("UIGradient",UIStroke27)
	UIGradient28["Rotation"] = 90
	UIGradient28["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient28----
	--UIGradient29--
	local UIGradient29 = Instance.new("UIGradient",TextButton25)
	UIGradient29["Rotation"] = 90
	UIGradient29["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient29----
	--TextBox30--
	local TextBox30 = Instance.new("TextBox",Frame20)
	TextBox30["ClearTextOnFocus"] = false
	TextBox30["TextWrapped"] = true
	TextBox30["Size"] = UDim2.new(0.200000003, 0, 0.621999979, 0)
	TextBox30["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextBox30["BorderColor3"] = Color3.new(0, 0, 0)
	TextBox30["Text"] = ""
	TextBox30["PlaceholderColor3"] = Color3.new(1, 1, 1)
	TextBox30["TextSize"] = 14
	TextBox30["AnchorPoint"] = Vector2.new(0, 0.5)
	TextBox30["Font"] = Enum.Font.Oswald
	TextBox30["BackgroundTransparency"] = 1
	TextBox30["Position"] = UDim2.new(0.725000024, 0, 0.5, 0)
	TextBox30["TextScaled"] = true
	TextBox30["PlaceholderText"] = "Value"
	TextBox30["BorderSizePixel"] = 0
	TextBox30["BackgroundColor3"] = Color3.new(1, 1, 1)
	----TextBox30----
	--UICorner31--
	local UICorner31 = Instance.new("UICorner",TextBox30)
	----UICorner31----
	--UIStroke32--
	local UIStroke32 = Instance.new("UIStroke",TextBox30)
	UIStroke32["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke32["Thickness"] = 4
	UIStroke32["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke32----
	--UIGradient33--
	local UIGradient33 = Instance.new("UIGradient",UIStroke32)
	UIGradient33["Rotation"] = 90
	UIGradient33["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient33----
	--UIGradient34--
	local UIGradient34 = Instance.new("UIGradient",TextBox30)
	UIGradient34["Rotation"] = 90
	UIGradient34["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient34----
	--UIGradient35--
	local UIGradient35 = Instance.new("UIGradient",Frame20)
	UIGradient35["Rotation"] = 90
	UIGradient35["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient35----
	--Frame36--
	local Frame36 = Instance.new("Frame",Folder3)
	Frame36["BackgroundTransparency"] = 0.5
	Frame36["Size"] = UDim2.new(1, 0, 0.150000006, 0)
	Frame36["BorderColor3"] = Color3.new(0, 0, 0)
	Frame36["Name"] = "TextboxTemplate"
	Frame36["BorderSizePixel"] = 0
	Frame36["BackgroundColor3"] = Color3.new(0.470588, 0.435294, 0.356863)
	----Frame36----
	--UICorner37--
	local UICorner37 = Instance.new("UICorner",Frame36)
	----UICorner37----
	--UIStroke38--
	local UIStroke38 = Instance.new("UIStroke",Frame36)
	UIStroke38["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke38["Thickness"] = 4
	UIStroke38["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke38----
	--TextLabel39--
	local TextLabel39 = Instance.new("TextLabel",Frame36)
	TextLabel39["TextWrapped"] = true
	TextLabel39["Active"] = true
	TextLabel39["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel39["BorderSizePixel"] = 0
	TextLabel39["Size"] = UDim2.new(0.724999964, 0, 0.999999285, 0)
	TextLabel39["RichText"] = true
	TextLabel39["AutoLocalize"] = false
	TextLabel39["TextColor3"] = Color3.new(1, 1, 1)
	TextLabel39["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel39["Text"] = "Textbox Set"
	TextLabel39["TextXAlignment"] = Enum.TextXAlignment.Left
	TextLabel39["Font"] = Enum.Font.Oswald
	TextLabel39["BackgroundTransparency"] = 1
	TextLabel39["Position"] = UDim2.new(0.362499982, 0, 1.00000012, 0)
	TextLabel39["TextSize"] = 50
	TextLabel39["Name"] = "Text"
	TextLabel39["TextScaled"] = true
	TextLabel39["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel39----
	--UIGradient40--
	local UIGradient40 = Instance.new("UIGradient",TextLabel39)
	UIGradient40["Rotation"] = 90
	UIGradient40["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient40----
	--TextButton41--
	local TextButton41 = Instance.new("TextButton",Frame36)
	TextButton41["TextColor3"] = Color3.new(0, 0, 0)
	TextButton41["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton41["Text"] = ""
	TextButton41["AnchorPoint"] = Vector2.new(0, 0.5)
	TextButton41["Font"] = Enum.Font.SourceSans
	TextButton41["Name"] = "Button"
	TextButton41["Position"] = UDim2.new(0.943000019, 0, 0.5, 0)
	TextButton41["TextSize"] = 14
	TextButton41["Size"] = UDim2.new(0.0426665694, 0, 0.621890485, 0)
	TextButton41["BorderSizePixel"] = 0
	TextButton41["BackgroundColor3"] = Color3.new(1, 0.501961, 0.592157)
	----TextButton41----
	--UICorner42--
	local UICorner42 = Instance.new("UICorner",TextButton41)
	----UICorner42----
	--UIStroke43--
	local UIStroke43 = Instance.new("UIStroke",TextButton41)
	UIStroke43["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke43["Thickness"] = 4
	UIStroke43["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke43----
	--UIGradient44--
	local UIGradient44 = Instance.new("UIGradient",UIStroke43)
	UIGradient44["Rotation"] = 90
	UIGradient44["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient44----
	--ImageLabel45--
	local ImageLabel45 = Instance.new("ImageLabel",TextButton41)
	ImageLabel45["Image"] = "rbxassetid://9468220156"
	ImageLabel45["BackgroundTransparency"] = 1
	ImageLabel45["BorderColor3"] = Color3.new(0, 0, 0)
	ImageLabel45["Size"] = UDim2.new(1, 0, 1, 0)
	ImageLabel45["BorderSizePixel"] = 0
	ImageLabel45["BackgroundColor3"] = Color3.new(1, 1, 1)
	----ImageLabel45----
	--UIGradient46--
	local UIGradient46 = Instance.new("UIGradient",TextButton41)
	UIGradient46["Rotation"] = 90
	UIGradient46["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient46----
	--TextBox47--
	local TextBox47 = Instance.new("TextBox",Frame36)
	TextBox47["ClearTextOnFocus"] = false
	TextBox47["TextWrapped"] = true
	TextBox47["Size"] = UDim2.new(0.200000003, 0, 0.621999979, 0)
	TextBox47["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextBox47["BorderColor3"] = Color3.new(0, 0, 0)
	TextBox47["Text"] = ""
	TextBox47["PlaceholderColor3"] = Color3.new(1, 1, 1)
	TextBox47["TextSize"] = 14
	TextBox47["AnchorPoint"] = Vector2.new(0, 0.5)
	TextBox47["Font"] = Enum.Font.Oswald
	TextBox47["BackgroundTransparency"] = 1
	TextBox47["Position"] = UDim2.new(0.725000024, 0, 0.5, 0)
	TextBox47["TextScaled"] = true
	TextBox47["PlaceholderText"] = "Value"
	TextBox47["BorderSizePixel"] = 0
	TextBox47["BackgroundColor3"] = Color3.new(1, 1, 1)
	----TextBox47----
	--UICorner48--
	local UICorner48 = Instance.new("UICorner",TextBox47)
	----UICorner48----
	--UIStroke49--
	local UIStroke49 = Instance.new("UIStroke",TextBox47)
	UIStroke49["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke49["Thickness"] = 4
	UIStroke49["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke49----
	--UIGradient50--
	local UIGradient50 = Instance.new("UIGradient",UIStroke49)
	UIGradient50["Rotation"] = 90
	UIGradient50["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient50----
	--UIGradient51--
	local UIGradient51 = Instance.new("UIGradient",TextBox47)
	UIGradient51["Rotation"] = 90
	UIGradient51["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient51----
	--UIGradient52--
	local UIGradient52 = Instance.new("UIGradient",Frame36)
	UIGradient52["Rotation"] = 90
	UIGradient52["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient52----
	--TextLabel53--
	local TextLabel53 = Instance.new("TextLabel",Folder3)
	TextLabel53["TextWrapped"] = true
	TextLabel53["RichText"] = true
	TextLabel53["AutoLocalize"] = false
	TextLabel53["Active"] = true
	TextLabel53["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel53["TextSize"] = 50
	TextLabel53["TextScaled"] = true
	TextLabel53["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextLabel53["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel53["Font"] = Enum.Font.Oswald
	TextLabel53["Name"] = "LabelTemplate"
	TextLabel53["Position"] = UDim2.new(0.499051869, 0, 0.110415608, 0)
	TextLabel53["Size"] = UDim2.new(1, 0, 0.150000006, 0)
	TextLabel53["BackgroundTransparency"] = 1
	TextLabel53["BorderSizePixel"] = 0
	TextLabel53["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel53----
	--TextButton54--
	local TextButton54 = Instance.new("TextButton",TextLabel53)
	TextButton54["TextWrapped"] = true
	TextButton54["TextScaled"] = true
	TextButton54["TextColor3"] = Color3.new(0.847059, 0.729412, 0.54902)
	TextButton54["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton54["Text"] = ""
	TextButton54["TextSize"] = 14
	TextButton54["AutoButtonColor"] = false
	TextButton54["AnchorPoint"] = Vector2.new(0, 0.5)
	TextButton54["Font"] = Enum.Font.Unknown
	TextButton54["Name"] = "Toggle"
	TextButton54["Position"] = UDim2.new(0.961262941, 0, 0.491842926, 0)
	TextButton54["Size"] = UDim2.new(0.0386958867, 0, 0.558807611, 0)
	TextButton54["BackgroundTransparency"] = 1
	TextButton54["BorderSizePixel"] = 0
	TextButton54["BackgroundColor3"] = Color3.new(1, 0.501961, 0.592157)
	----TextButton54----
	--UICorner55--
	local UICorner55 = Instance.new("UICorner",TextButton54)
	----UICorner55----
	--UIStroke56--
	local UIStroke56 = Instance.new("UIStroke",TextButton54)
	UIStroke56["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke56["Thickness"] = 4
	UIStroke56["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke56----
	--UIGradient57--
	local UIGradient57 = Instance.new("UIGradient",UIStroke56)
	UIGradient57["Rotation"] = 90
	UIGradient57["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient57----
	--UIGradient58--
	local UIGradient58 = Instance.new("UIGradient",TextButton54)
	UIGradient58["Rotation"] = 90
	UIGradient58["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient58----
	--UIGradient59--
	local UIGradient59 = Instance.new("UIGradient",TextLabel53)
	UIGradient59["Rotation"] = 90
	UIGradient59["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient59----
	--Script60--
	local Script60 = Instance.new("Script",ScreenGui1)
	Script60["Name"] = "LibUse"
	----Script60----
	--TextButton61--
	local TextButton61 = Instance.new("TextButton",ScreenGui1)
	TextButton61["LayoutOrder"] = 1
	TextButton61["TextWrapped"] = true
	TextButton61["AutoLocalize"] = false
	TextButton61["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton61["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextButton61["Text"] = "Piggy Hub V2"
	TextButton61["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton61["TextSize"] = 14
	TextButton61["AnchorPoint"] = Vector2.new(0.0500000007, 0.5)
	TextButton61["Font"] = Enum.Font.Oswald
	TextButton61["Name"] = "Toggle"
	TextButton61["Position"] = UDim2.new(0.0064275763, 0, 0.0995024815, 0)
	TextButton61["BackgroundTransparency"] = 0.30000001192092896
	TextButton61["Size"] = UDim2.new(0.130617976, 0, 0.0740825459, 0)
	TextButton61["TextScaled"] = true
	TextButton61["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextButton61----
	--UICorner62--
	local UICorner62 = Instance.new("UICorner",TextButton61)
	UICorner62["CornerRadius"] = UDim.new(0.100000001, 0)
	----UICorner62----
	--UIPadding63--
	local UIPadding63 = Instance.new("UIPadding",TextButton61)
	UIPadding63["PaddingLeft"] = UDim.new(0.200000003, 0)
	UIPadding63["PaddingRight"] = UDim.new(0.0500000007, 0)
	----UIPadding63----
	--UIStroke64--
	local UIStroke64 = Instance.new("UIStroke",TextButton61)
	UIStroke64["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke64["Thickness"] = 3
	UIStroke64["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke64----
	--TextButton65--
	local TextButton65 = Instance.new("TextButton",ScreenGui1)
	TextButton65["Visible"] = false
	TextButton65["TextWrapped"] = true
	TextButton65["AnchorPoint"] = Vector2.new(0.0500000007, 0.5)
	TextButton65["TextSize"] = 14
	TextButton65["Size"] = UDim2.new(0.130617976, 0, 0.0740825459, 0)
	TextButton65["AutoLocalize"] = false
	TextButton65["TextColor3"] = Color3.new(1, 0.870588, 0.741176)
	TextButton65["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextButton65["Text"] = "Run Info"
	TextButton65["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton65["Font"] = Enum.Font.Oswald
	TextButton65["Name"] = "StatsBtn"
	TextButton65["Position"] = UDim2.new(0.001999998, 0, 0.589552224, 0)
	TextButton65["LayoutOrder"] = 1
	TextButton65["BackgroundTransparency"] = 0.30000001192092896
	TextButton65["TextScaled"] = true
	TextButton65["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextButton65----
	--UICorner66--
	local UICorner66 = Instance.new("UICorner",TextButton65)
	UICorner66["CornerRadius"] = UDim.new(0.100000001, 0)
	----UICorner66----
	--UIPadding67--
	local UIPadding67 = Instance.new("UIPadding",TextButton65)
	UIPadding67["PaddingLeft"] = UDim.new(0.200000003, 0)
	UIPadding67["PaddingRight"] = UDim.new(0.0500000007, 0)
	----UIPadding67----
	--UIStroke68--
	local UIStroke68 = Instance.new("UIStroke",TextButton65)
	UIStroke68["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke68["Thickness"] = 3
	UIStroke68["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke68----
	--Frame69--
	local Frame69 = Instance.new("Frame",ScreenGui1)
	Frame69["LayoutOrder"] = 3
	Frame69["AutoLocalize"] = false
	Frame69["Active"] = true
	Frame69["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	Frame69["AnchorPoint"] = Vector2.new(0.5, 0.5)
	Frame69["Visible"] = false
	Frame69["BackgroundTransparency"] = 0.3499999940395355
	Frame69["Position"] = UDim2.new(0.458260268, 0, 0.579999983, 0)
	Frame69["Size"] = UDim2.new(0.699999988, 0, 0.600000024, 0)
	Frame69["Name"] = "MainUi"
	Frame69["BorderSizePixel"] = 0
	Frame69["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----Frame69----
	--UICorner70--
	local UICorner70 = Instance.new("UICorner",Frame69)
	----UICorner70----
	--UIStroke71--
	local UIStroke71 = Instance.new("UIStroke",Frame69)
	UIStroke71["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke71["Thickness"] = 4
	UIStroke71["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke71----
	--UIStroke72--
	local UIStroke72 = Instance.new("UIStroke",UIStroke71)
	UIStroke72["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke72["Thickness"] = 3.4000000953674316
	UIStroke72["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke72----
	--TextLabel73--
	local TextLabel73 = Instance.new("TextLabel",Frame69)
	TextLabel73["LayoutOrder"] = 3
	TextLabel73["TextWrapped"] = true
	TextLabel73["Active"] = true
	TextLabel73["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel73["BorderSizePixel"] = 0
	TextLabel73["Size"] = UDim2.new(0.214014798, 0, 1.00623477, 0)
	TextLabel73["RichText"] = true
	TextLabel73["AutoLocalize"] = false
	TextLabel73["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel73["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel73["Text"] = ""
	TextLabel73["Font"] = Enum.Font.Oswald
	TextLabel73["Name"] = "Title"
	TextLabel73["Position"] = UDim2.new(1.10700738, 0, 1.00623477, 0)
	TextLabel73["TextSize"] = 50
	TextLabel73["BackgroundTransparency"] = 1
	TextLabel73["TextScaled"] = true
	TextLabel73["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel73----
	--UICorner74--
	local UICorner74 = Instance.new("UICorner",TextLabel73)
	----UICorner74----
	--UIGridLayout75--
	local UIGridLayout75 = Instance.new("UIGridLayout",TextLabel73)
	UIGridLayout75["VerticalAlignment"] = Enum.VerticalAlignment.Center
	UIGridLayout75["FillDirection"] = Enum.FillDirection.Vertical
	UIGridLayout75["CellPadding"] = UDim2.new(0, 0, 0.0250000004, 0)
	UIGridLayout75["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIGridLayout75["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
	UIGridLayout75["CellSize"] = UDim2.new(0.899999976, 0, 0.131999999, 0)
	----UIGridLayout75----
	--TextButton76--
	local TextButton76 = Instance.new("TextButton",TextLabel73)
	TextButton76["TextWrapped"] = true
	TextButton76["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton76["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton76["Text"] = "ESP"
	TextButton76["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton76["TextSize"] = 14
	TextButton76["TextScaled"] = true
	TextButton76["Font"] = Enum.Font.Oswald
	TextButton76["BackgroundTransparency"] = 0.5
	TextButton76["Position"] = UDim2.new(-0.147082791, 0, 2.28603077, 0)
	TextButton76["Name"] = "ESP"
	TextButton76["Size"] = UDim2.new(0.333249986, 0, 0.75000006, 0)
	TextButton76["BorderSizePixel"] = 0
	TextButton76["BackgroundColor3"] = Color3.new(0.470588, 0.435294, 0.356863)
	----TextButton76----
	--UICorner77--
	local UICorner77 = Instance.new("UICorner",TextButton76)
	----UICorner77----
	--UIPadding78--
	local UIPadding78 = Instance.new("UIPadding",TextButton76)
	UIPadding78["PaddingBottom"] = UDim.new(0.150000006, 0)
	UIPadding78["PaddingTop"] = UDim.new(0.100000001, 0)
	UIPadding78["PaddingLeft"] = UDim.new(0.100000001, 0)
	UIPadding78["PaddingRight"] = UDim.new(0.100000001, 0)
	----UIPadding78----
	--UIStroke79--
	local UIStroke79 = Instance.new("UIStroke",TextButton76)
	UIStroke79["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke79["Thickness"] = 4
	UIStroke79["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke79----
	--UIGradient80--
	local UIGradient80 = Instance.new("UIGradient",TextButton76)
	UIGradient80["Rotation"] = 90
	UIGradient80["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient80----
	--TextButton81--
	local TextButton81 = Instance.new("TextButton",TextButton76)
	TextButton81["TextWrapped"] = true
	TextButton81["TextScaled"] = true
	TextButton81["TextColor3"] = Color3.new(0.847059, 0.729412, 0.54902)
	TextButton81["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton81["Text"] = ""
	TextButton81["TextSize"] = 14
	TextButton81["AutoButtonColor"] = false
	TextButton81["AnchorPoint"] = Vector2.new(0, 0.5)
	TextButton81["Font"] = Enum.Font.Unknown
	TextButton81["Name"] = "Toggle"
	TextButton81["Position"] = UDim2.new(0.890631974, 0, 0.526479542, 0)
	TextButton81["Size"] = UDim2.new(0.198677853, 0, 0.93288523, 0)
	TextButton81["BackgroundTransparency"] = 1
	TextButton81["BorderSizePixel"] = 0
	TextButton81["BackgroundColor3"] = Color3.new(1, 0.501961, 0.592157)
	----TextButton81----
	--UICorner82--
	local UICorner82 = Instance.new("UICorner",TextButton81)
	----UICorner82----
	--UIGradient83--
	local UIGradient83 = Instance.new("UIGradient",TextButton81)
	UIGradient83["Rotation"] = 90
	UIGradient83["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient83----
	--UIStroke84--
	local UIStroke84 = Instance.new("UIStroke",TextButton81)
	UIStroke84["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke84["Thickness"] = 4
	UIStroke84["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke84----
	--UIGradient85--
	local UIGradient85 = Instance.new("UIGradient",UIStroke84)
	UIGradient85["Rotation"] = 90
	UIGradient85["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient85----
	--TextButton86--
	local TextButton86 = Instance.new("TextButton",TextLabel73)
	TextButton86["TextWrapped"] = true
	TextButton86["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton86["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton86["Text"] = "Bypasses"
	TextButton86["TextScaled"] = true
	TextButton86["TextSize"] = 14
	TextButton86["Font"] = Enum.Font.Oswald
	TextButton86["BackgroundTransparency"] = 0.5
	TextButton86["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton86["Size"] = UDim2.new(0.333249986, 0, 0.75000006, 0)
	TextButton86["Name"] = "Bypasses"
	TextButton86["BorderSizePixel"] = 0
	TextButton86["BackgroundColor3"] = Color3.new(0.470588, 0.435294, 0.356863)
	----TextButton86----
	--UICorner87--
	local UICorner87 = Instance.new("UICorner",TextButton86)
	----UICorner87----
	--UIPadding88--
	local UIPadding88 = Instance.new("UIPadding",TextButton86)
	UIPadding88["PaddingBottom"] = UDim.new(0.150000006, 0)
	UIPadding88["PaddingTop"] = UDim.new(0.100000001, 0)
	UIPadding88["PaddingLeft"] = UDim.new(0.100000001, 0)
	UIPadding88["PaddingRight"] = UDim.new(0.100000001, 0)
	----UIPadding88----
	--UIStroke89--
	local UIStroke89 = Instance.new("UIStroke",TextButton86)
	UIStroke89["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke89["Thickness"] = 4
	UIStroke89["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke89----
	--UIGradient90--
	local UIGradient90 = Instance.new("UIGradient",TextButton86)
	UIGradient90["Rotation"] = 90
	UIGradient90["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient90----
	--TextButton91--
	local TextButton91 = Instance.new("TextButton",TextButton86)
	TextButton91["TextWrapped"] = true
	TextButton91["TextScaled"] = true
	TextButton91["TextColor3"] = Color3.new(0.847059, 0.729412, 0.54902)
	TextButton91["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton91["Text"] = ""
	TextButton91["TextSize"] = 14
	TextButton91["AutoButtonColor"] = false
	TextButton91["AnchorPoint"] = Vector2.new(0, 0.5)
	TextButton91["Font"] = Enum.Font.Unknown
	TextButton91["Name"] = "Toggle"
	TextButton91["Position"] = UDim2.new(0.890631974, 0, 0.526479542, 0)
	TextButton91["Size"] = UDim2.new(0.198677853, 0, 0.93288523, 0)
	TextButton91["BackgroundTransparency"] = 1
	TextButton91["BorderSizePixel"] = 0
	TextButton91["BackgroundColor3"] = Color3.new(1, 0.501961, 0.592157)
	----TextButton91----
	--UICorner92--
	local UICorner92 = Instance.new("UICorner",TextButton91)
	----UICorner92----
	--UIGradient93--
	local UIGradient93 = Instance.new("UIGradient",TextButton91)
	UIGradient93["Rotation"] = 90
	UIGradient93["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient93----
	--UIStroke94--
	local UIStroke94 = Instance.new("UIStroke",TextButton91)
	UIStroke94["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke94["Thickness"] = 4
	UIStroke94["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke94----
	--UIGradient95--
	local UIGradient95 = Instance.new("UIGradient",UIStroke94)
	UIGradient95["Rotation"] = 90
	UIGradient95["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient95----
	--TextButton96--
	local TextButton96 = Instance.new("TextButton",TextLabel73)
	TextButton96["TextWrapped"] = true
	TextButton96["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton96["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton96["Text"] = "More"
	TextButton96["TextScaled"] = true
	TextButton96["TextSize"] = 14
	TextButton96["Font"] = Enum.Font.Oswald
	TextButton96["BackgroundTransparency"] = 0.5
	TextButton96["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton96["Size"] = UDim2.new(0.333249986, 0, 0.75000006, 0)
	TextButton96["Name"] = "More"
	TextButton96["BorderSizePixel"] = 0
	TextButton96["BackgroundColor3"] = Color3.new(0.470588, 0.435294, 0.356863)
	----TextButton96----
	--UICorner97--
	local UICorner97 = Instance.new("UICorner",TextButton96)
	----UICorner97----
	--UIPadding98--
	local UIPadding98 = Instance.new("UIPadding",TextButton96)
	UIPadding98["PaddingBottom"] = UDim.new(0.150000006, 0)
	UIPadding98["PaddingTop"] = UDim.new(0.100000001, 0)
	UIPadding98["PaddingLeft"] = UDim.new(0.100000001, 0)
	UIPadding98["PaddingRight"] = UDim.new(0.100000001, 0)
	----UIPadding98----
	--UIStroke99--
	local UIStroke99 = Instance.new("UIStroke",TextButton96)
	UIStroke99["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke99["Thickness"] = 4
	UIStroke99["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke99----
	--UIGradient100--
	local UIGradient100 = Instance.new("UIGradient",TextButton96)
	UIGradient100["Rotation"] = 90
	UIGradient100["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient100----
	--TextButton101--
	local TextButton101 = Instance.new("TextButton",TextButton96)
	TextButton101["TextWrapped"] = true
	TextButton101["TextScaled"] = true
	TextButton101["TextColor3"] = Color3.new(0.847059, 0.729412, 0.54902)
	TextButton101["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton101["Text"] = ""
	TextButton101["TextSize"] = 14
	TextButton101["AutoButtonColor"] = false
	TextButton101["AnchorPoint"] = Vector2.new(0, 0.5)
	TextButton101["Font"] = Enum.Font.Unknown
	TextButton101["Name"] = "Toggle"
	TextButton101["Position"] = UDim2.new(0.890631974, 0, 0.526478708, 0)
	TextButton101["Size"] = UDim2.new(0.198677853, 0, 0.93288523, 0)
	TextButton101["BackgroundTransparency"] = 1
	TextButton101["BorderSizePixel"] = 0
	TextButton101["BackgroundColor3"] = Color3.new(1, 0.501961, 0.592157)
	----TextButton101----
	--UICorner102--
	local UICorner102 = Instance.new("UICorner",TextButton101)
	----UICorner102----
	--UIGradient103--
	local UIGradient103 = Instance.new("UIGradient",TextButton101)
	UIGradient103["Rotation"] = 90
	UIGradient103["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient103----
	--UIStroke104--
	local UIStroke104 = Instance.new("UIStroke",TextButton101)
	UIStroke104["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke104["Thickness"] = 4
	UIStroke104["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke104----
	--UIGradient105--
	local UIGradient105 = Instance.new("UIGradient",UIStroke104)
	UIGradient105["Rotation"] = 90
	UIGradient105["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient105----
	--UIPadding106--
	local UIPadding106 = Instance.new("UIPadding",TextLabel73)
	UIPadding106["PaddingBottom"] = UDim.new(0.150000006, 0)
	UIPadding106["PaddingTop"] = UDim.new(0.100000001, 0)
	----UIPadding106----
	--ScrollingFrame107--
	local ScrollingFrame107 = Instance.new("ScrollingFrame",Frame69)
	ScrollingFrame107["ScrollBarImageColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame107["Active"] = true
	ScrollingFrame107["BorderColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame107["ScrollBarThickness"] = 0
	ScrollingFrame107["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	ScrollingFrame107["CanvasSize"] = UDim2.new(0, 0, 0, 0)
	ScrollingFrame107["Name"] = "ESP"
	ScrollingFrame107["ScrollingDirection"] = Enum.ScrollingDirection.Y
	ScrollingFrame107["Size"] = UDim2.new(1, 0, 1, 0)
	ScrollingFrame107["BackgroundTransparency"] = 1
	ScrollingFrame107["BorderSizePixel"] = 0
	ScrollingFrame107["BackgroundColor3"] = Color3.new(1, 1, 1)
	----ScrollingFrame107----
	--UIListLayout108--
	local UIListLayout108 = Instance.new("UIListLayout",ScrollingFrame107)
	UIListLayout108["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout108["Padding"] = UDim.new(0, 15)
	----UIListLayout108----
	--UIPadding109--
	local UIPadding109 = Instance.new("UIPadding",ScrollingFrame107)
	UIPadding109["PaddingBottom"] = UDim.new(0.0500000007, 0)
	UIPadding109["PaddingTop"] = UDim.new(0.0500000007, 0)
	UIPadding109["PaddingLeft"] = UDim.new(0.0250000004, 0)
	UIPadding109["PaddingRight"] = UDim.new(0.0250000004, 0)
	----UIPadding109----
	--TextLabel110--
	local TextLabel110 = Instance.new("TextLabel",ScrollingFrame107)
	TextLabel110["LayoutOrder"] = 999999999
	TextLabel110["TextWrapped"] = true
	TextLabel110["Active"] = true
	TextLabel110["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel110["BorderSizePixel"] = 0
	TextLabel110["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel110["RichText"] = true
	TextLabel110["AutoLocalize"] = false
	TextLabel110["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel110["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel110["Text"] = ""
	TextLabel110["Font"] = Enum.Font.Oswald
	TextLabel110["Name"] = "EndBarrier"
	TextLabel110["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel110["TextSize"] = 50
	TextLabel110["BackgroundTransparency"] = 1
	TextLabel110["TextScaled"] = true
	TextLabel110["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel110----
	--UIGradient111--
	local UIGradient111 = Instance.new("UIGradient",TextLabel110)
	UIGradient111["Rotation"] = 90
	UIGradient111["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient111----
	--UIAspectRatioConstraint112--
	local UIAspectRatioConstraint112 = Instance.new("UIAspectRatioConstraint",Frame69)
	UIAspectRatioConstraint112["AspectRatio"] = 2.3014094829559326
	----UIAspectRatioConstraint112----
	--ScrollingFrame113--
	local ScrollingFrame113 = Instance.new("ScrollingFrame",Frame69)
	ScrollingFrame113["ScrollBarImageColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame113["Active"] = true
	ScrollingFrame113["BorderColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame113["ScrollBarThickness"] = 0
	ScrollingFrame113["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	ScrollingFrame113["CanvasSize"] = UDim2.new(0, 0, 0, 0)
	ScrollingFrame113["Name"] = "Bypasses"
	ScrollingFrame113["ScrollingDirection"] = Enum.ScrollingDirection.Y
	ScrollingFrame113["Size"] = UDim2.new(1, 0, 1, 0)
	ScrollingFrame113["BackgroundTransparency"] = 1
	ScrollingFrame113["BorderSizePixel"] = 0
	ScrollingFrame113["BackgroundColor3"] = Color3.new(1, 1, 1)
	----ScrollingFrame113----
	--UIListLayout114--
	local UIListLayout114 = Instance.new("UIListLayout",ScrollingFrame113)
	UIListLayout114["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout114["Padding"] = UDim.new(0, 15)
	----UIListLayout114----
	--UIPadding115--
	local UIPadding115 = Instance.new("UIPadding",ScrollingFrame113)
	UIPadding115["PaddingBottom"] = UDim.new(0.0500000007, 0)
	UIPadding115["PaddingTop"] = UDim.new(0.0500000007, 0)
	UIPadding115["PaddingLeft"] = UDim.new(0.0250000004, 0)
	UIPadding115["PaddingRight"] = UDim.new(0.0250000004, 0)
	----UIPadding115----
	--TextLabel116--
	local TextLabel116 = Instance.new("TextLabel",ScrollingFrame113)
	TextLabel116["LayoutOrder"] = 999999999
	TextLabel116["TextWrapped"] = true
	TextLabel116["Active"] = true
	TextLabel116["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel116["BorderSizePixel"] = 0
	TextLabel116["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel116["RichText"] = true
	TextLabel116["AutoLocalize"] = false
	TextLabel116["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel116["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel116["Text"] = ""
	TextLabel116["Font"] = Enum.Font.Oswald
	TextLabel116["Name"] = "EndBarrier"
	TextLabel116["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel116["TextSize"] = 50
	TextLabel116["BackgroundTransparency"] = 1
	TextLabel116["TextScaled"] = true
	TextLabel116["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel116----
	--UIGradient117--
	local UIGradient117 = Instance.new("UIGradient",TextLabel116)
	UIGradient117["Rotation"] = 90
	UIGradient117["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient117----
	--ScrollingFrame118--
	local ScrollingFrame118 = Instance.new("ScrollingFrame",Frame69)
	ScrollingFrame118["ScrollBarImageColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame118["Active"] = true
	ScrollingFrame118["BorderColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame118["ScrollBarThickness"] = 0
	ScrollingFrame118["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	ScrollingFrame118["CanvasSize"] = UDim2.new(0, 0, 0, 0)
	ScrollingFrame118["Name"] = "More"
	ScrollingFrame118["ScrollingDirection"] = Enum.ScrollingDirection.Y
	ScrollingFrame118["Size"] = UDim2.new(1, 0, 1, 0)
	ScrollingFrame118["BackgroundTransparency"] = 1
	ScrollingFrame118["BorderSizePixel"] = 0
	ScrollingFrame118["BackgroundColor3"] = Color3.new(1, 1, 1)
	----ScrollingFrame118----
	--UIListLayout119--
	local UIListLayout119 = Instance.new("UIListLayout",ScrollingFrame118)
	UIListLayout119["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout119["Padding"] = UDim.new(0, 15)
	----UIListLayout119----
	--UIPadding120--
	local UIPadding120 = Instance.new("UIPadding",ScrollingFrame118)
	UIPadding120["PaddingBottom"] = UDim.new(0.0500000007, 0)
	UIPadding120["PaddingTop"] = UDim.new(0.0500000007, 0)
	UIPadding120["PaddingLeft"] = UDim.new(0.0250000004, 0)
	UIPadding120["PaddingRight"] = UDim.new(0.0250000004, 0)
	----UIPadding120----
	--TextLabel121--
	local TextLabel121 = Instance.new("TextLabel",ScrollingFrame118)
	TextLabel121["LayoutOrder"] = 999999999
	TextLabel121["TextWrapped"] = true
	TextLabel121["Active"] = true
	TextLabel121["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel121["BorderSizePixel"] = 0
	TextLabel121["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel121["RichText"] = true
	TextLabel121["AutoLocalize"] = false
	TextLabel121["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel121["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel121["Text"] = ""
	TextLabel121["Font"] = Enum.Font.Oswald
	TextLabel121["Name"] = "EndBarrier"
	TextLabel121["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel121["TextSize"] = 50
	TextLabel121["BackgroundTransparency"] = 1
	TextLabel121["TextScaled"] = true
	TextLabel121["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel121----
	--UIGradient122--
	local UIGradient122 = Instance.new("UIGradient",TextLabel121)
	UIGradient122["Rotation"] = 90
	UIGradient122["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient122----
	--TextLabel123--
	local TextLabel123 = Instance.new("TextLabel",ScrollingFrame118)
	TextLabel123["LayoutOrder"] = 999999999
	TextLabel123["TextWrapped"] = true
	TextLabel123["Active"] = true
	TextLabel123["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel123["BorderSizePixel"] = 0
	TextLabel123["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel123["RichText"] = true
	TextLabel123["AutoLocalize"] = false
	TextLabel123["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel123["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel123["Text"] = ""
	TextLabel123["Font"] = Enum.Font.Oswald
	TextLabel123["Name"] = "EndBarrier"
	TextLabel123["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel123["TextSize"] = 50
	TextLabel123["BackgroundTransparency"] = 1
	TextLabel123["TextScaled"] = true
	TextLabel123["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel123----
	--UIGradient124--
	local UIGradient124 = Instance.new("UIGradient",TextLabel123)
	UIGradient124["Rotation"] = 90
	UIGradient124["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient124----
	--Script125--
	local Script125 = Instance.new("Script",ScreenGui1)
	Script125["Name"] = "CompileLoader"
	Script125["Enabled"] = false
	----Script125----
	spawn(function() --Source for Script2
		local script = Script2
		local GuiLib = {}
		local ProximityPromptService = game:GetService("ProximityPromptService")
		local CurrentCamera = workspace.CurrentCamera
		local Players = game:GetService("Players")
		local player = game.Players.LocalPlayer
		local InputService = game:GetService("UserInputService")
		local character = player.Character or player.CharacterAdded:Wait()
		local Lightings = game:GetService("Lighting")
		local hrp = character.PrimaryPart
		local humanoid = character:WaitForChild("Humanoid")
		local CollectionService = game:GetService("CollectionService")
		local RunService = game:GetService("RunService")
		local FieldOfView = 70
		
		
		function refreshCharacter(c)
			character = c
			hrp = c.PrimaryPart
			humanoid = c:WaitForChild("Humanoid")
		end
		
		player.CharacterAdded:Connect(refreshCharacter)
		clicksound = Instance.new("Sound")
		clicksound.SoundId = "rbxassetid://6895079853"
		clicksound.Volume = 0.5
		clicksound.Parent = script
		GuiLib.Tabs = {
			ESP = script.Parent.MainUi:WaitForChild("ESP"),
			Bypasses = script.Parent.MainUi:WaitForChild("Bypasses"),
			More = script.Parent.MainUi:WaitForChild("More")
		}
		GuiLib.TabToggleButtons = {
			ESP = script.Parent.MainUi.Title:WaitForChild("ESP").Toggle,
			Bypasses = script.Parent.MainUi.Title:WaitForChild("Bypasses").Toggle,
			More = script.Parent.MainUi.Title:WaitForChild("More").Toggle
		}
		GuiLib.ToggleStates = {}
		
		
		
		function setupButton(button)
			if button:IsA("GuiButton") then
				button.MouseButton1Click:Connect(function()
					clicksound:Play()
				end)
			end
		end
		
		for _, button in pairs(script.Parent:GetDescendants()) do
			setupButton(button)
		end
		script.Parent.DescendantAdded:Connect(function(d)
			setupButton(d)
		end)
		
		local function checkToggles(tab)
			local tabframe = GuiLib.Tabs[tab]
			if not tabframe then return end
			local allon = true
			for _, child in ipairs(tabframe:GetChildren()) do
				if child:IsA("Frame") and child:FindFirstChild("Toggle") then
					local id = tab.."_"..child.Text.Text
					if not GuiLib.ToggleStates[id] then
						allon = false
						break
					end
				end
			end
			local tabbtn = GuiLib.TabToggleButtons[tab]
			if allon then
				tabbtn.BackgroundTransparency = 0
				tabbtn.Text = ""
			else
				tabbtn.BackgroundTransparency = 1
			end
		end
		
		for tabname, button in pairs(GuiLib.TabToggleButtons) do
			local istoggled = false
		
			button.MouseButton1Click:Connect(function()
				istoggled = not istoggled 
				button.BackgroundTransparency = istoggled and 0 or 1
				local tabframe = GuiLib.Tabs[tabname]
				if not tabframe then return end
				for _, child in ipairs(tabframe:GetChildren()) do
					if child:IsA("Frame") and child:FindFirstChild("Toggle") then
						local id = tabname.."_"..child.Text.Text
						GuiLib.ToggleStates[id] = istoggled
						child.Toggle.BackgroundTransparency = istoggled and 0 or 1
						local cb = GuiLib.ToggleStates[id.."_Callback"]
						if cb then cb(istoggled) end
					end
				end
			end)
		end
		
		
		
		
		for tab, button in pairs(GuiLib.TabToggleButtons) do
			local istoggled = false
			button.MouseButton1Click:Connect(function()
				istoggled = not istoggled
				button.BackgroundTransparency = istoggled and 0 or 1
				local tabframe = GuiLib.Tabs[tab]
				if not tabframe then return end
				for _, child in ipairs(tabframe:GetChildren()) do
					if child:IsA("Frame") and child:FindFirstChild("Toggle") then
						local id = tab.."_"..child.Text.Text
						GuiLib.ToggleStates[id] = istoggled
						child.Toggle.BackgroundTransparency = istoggled and 0 or 1
						local cb = GuiLib.ToggleStates[id.."_Callback"]
						if cb then
							cb(istoggled)
						end
					end
				end
			end)
		end
		
		
		
		local ESPS = {
			["Piggy"] = {Enabled = false, DisplayName = "Piggy", ESPColor = Color3.fromRGB(255, 128, 151), LayoutOrder = 1, MainName = "Piggy"},
			["Players"] = {Enabled = false, DisplayName = "Players", ESPColor = Color3.fromRGB(128, 151, 255), LayoutOrder = 2, MainName = "Players"},
			["Traitor"] = {Enabled = false, DisplayName = "Traitor", ESPColor = Color3.fromRGB(255, 0, 0), LayoutOrder = 3, MainName = "Traitor"},
			["Items"] = {Enabled = false, DisplayName = "Items", ESPColor = Color3.fromRGB(0, 0, 0), LayoutOrder = 4, MainName = "Items"},
			["Traps"] = {Enabled = false, DisplayName = "Traps", ESPColor = Color3.fromRGB(150, 150, 150), LayoutOrder = 5, MainName = "Traps"},
		}
		
		workspace.DescendantRemoving:Connect(function(d)
			
		end)
		
		
		function createHighlight(part, color, othername, esp)
			if not part:FindFirstChild("Highlight") then
				print(part, color, othername, esp, esp.Enabled, esp.DisplayName)
				local highlight = Instance.new("Highlight")
				highlight:AddTag(esp.MainName)
				highlight.Adornee = part
				highlight.FillColor = color
				highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
				highlight.Enabled = esp.Enabled
				highlight.Parent = part
				local bg = Instance.new("BillboardGui")
				bg:AddTag(esp.MainName)
				bg.Enabled = esp.Enabled
				bg.AlwaysOnTop = true
				if part:IsA("BasePart") then
					bg.Adornee = part
				elseif part:IsA("Model") then
					bg.Adornee = part.PrimaryPart 
				end
				bg.Size = UDim2.new(4, 0, 1, 0)
				bg.Parent = part
		
				local tl = Instance.new("TextLabel")
				tl.TextScaled = true
				tl.Size = UDim2.new(1, 0, 1, 0)
				tl.BackgroundTransparency = 1 
				tl.TextColor3 = Color3.fromRGB(255, 255, 255)
				tl.TextStrokeTransparency = 0
				if othername ~= "Items" then
					tl.Text = othername
				else
					tl.Text = othername
				end
				tl.Parent = bg
			end
		end
		
		function checkTraitor(c)
			local chr = c.Character or c.CharacterAdded:Wait()
			c.CharacterAdded:Connect(function(ch)
				chr = ch
			end)
			local b = c.Backpack
			if b:FindFirstChild("Knife") then
				createHighlight(chr, ESPS.Traitor.ESPColor, chr.Name, "Traitor")
			end
		
			b.ChildAdded:Connect(function(item)
				if item.Name == "Knife" then
					createHighlight(chr, ESPS.Traitor.ESPColor, chr.Name, "Traitor")
				end
			end)
		end
		
		for _, c in pairs(Players:GetPlayers()) do
			checkTraitor(c)
		end
		
		Players.PlayerAdded:Connect(function(c)
			checkTraitor(c)
		end)
		
		RunService.RenderStepped:Connect(function()
			if FieldOfView ~= CurrentCamera.FieldOfView then
				CurrentCamera.FieldOfView = FieldOfView
			end
		
			--if Lighting.FullBright.Enabled == true then
			--	Lightings.Brightness = 3
			--	Lightings.Ambient = Color3.new(1, 1, 1)
			--	Lightings.ColorShift_Bottom = Color3.new(1, 1, 1)
			--	Lightings.ColorShift_Top = Color3.new(1, 1, 1)
			--else
			--	Lightings.Brightness = 0
			--	Lightings.Ambient = Color3.fromRGB(67, 51, 56)
			--	Lightings.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
			--	Lightings.ColorShift_Top = Color3.fromRGB(255, 255 ,255)
			--end
			for name, data in pairs(ESPS) do
				for _, obj in ipairs(CollectionService:GetTagged(name)) do
					if obj:IsA("Highlight") or obj:IsA("BillboardGui") then
						obj.Enabled = data.Enabled
					end
				end
			end
			for tabName, _ in pairs(GuiLib.TabToggleButtons) do
				checkToggles(tabName)
			end
		end)
		
		local function attemptAction(d)
			if d:FindFirstChild("IsStunned") then
				createHighlight(d, ESPS.Piggy.ESPColor, d.Name, ESPS.Piggy)
				return
			end
			if d.Parent == workspace then
				local subplayer = Players:FindFirstChild(d.Name)
				if subplayer and d.Name ~= player.Name then
					createHighlight(d, ESPS.Players.ESPColor, subplayer.Name, ESPS.Players)
					return
				end
			end
			if d:FindFirstChild("ItemPickupScript") then
				createHighlight(d, d.Color, d.Name, ESPS.Items)
			end
			if d:FindFirstChild("Trap Sound") or d:FindFirstChild("TrapSound") then
				createHighlight(d, ESPS.Traps.ESPColor, d.Name, ESPS.Traps)
			end
		end
		
		
		for _, d in ipairs(workspace:GetDescendants()) do
			attemptAction(d)
		end
		
		workspace.DescendantAdded:Connect(function(d)
			attemptAction(d)
		end)
		
		function GuiLib:AddLabel(TabName, Text, LayoutOrder)
			local Tab = GuiLib.Tabs[TabName]
			if not Tab then return end
			local Template = script.Templates:FindFirstChild("LabelTemplate")
			if not Template then return end
			local Label = Template:Clone()
			Label.Visible = true
			Label.Parent = Tab
			Label.Text = Text
			if LayoutOrder then
				Label.LayoutOrder = LayoutOrder
			end
		
			local ToggleButton = Label:WaitForChild("Toggle")
			ToggleButton.BackgroundTransparency = 1
			local toggled = false
		
			local function updateLabelToggle()
				local allChildren = {}
				local nextLabelOrder = math.huge
		
				for _, lbl in ipairs(Tab:GetChildren()) do
					if lbl:IsA("TextLabel") and lbl ~= Label then
						if lbl.LayoutOrder > LayoutOrder and lbl.LayoutOrder < nextLabelOrder then
							nextLabelOrder = lbl.LayoutOrder
						end
					end
				end
		
				for _, child in ipairs(Tab:GetChildren()) do
					if child:IsA("Frame") and child:FindFirstChild("Toggle") then
						if child.LayoutOrder > LayoutOrder and child.LayoutOrder < nextLabelOrder then
							table.insert(allChildren, child)
						end
					end
				end
		
				local allOn = true
				for _, child in ipairs(allChildren) do
					local id = TabName.."_"..child.Text.Text
					if not GuiLib.ToggleStates[id] then
						allOn = false
						break
					end
				end
				toggled = allOn
				ToggleButton.BackgroundTransparency = toggled and 0 or 1
			end
		
			ToggleButton.MouseButton1Click:Connect(function()
				toggled = not toggled
				ToggleButton.BackgroundTransparency = toggled and 0 or 1
		
				local nextLabelOrder = math.huge
				for _, lbl in ipairs(Tab:GetChildren()) do
					if lbl:IsA("TextLabel") and lbl ~= Label then
						if lbl.LayoutOrder > LayoutOrder and lbl.LayoutOrder < nextLabelOrder then
							nextLabelOrder = lbl.LayoutOrder
						end
					end
				end
		
				for _, child in ipairs(Tab:GetChildren()) do
					if child:IsA("Frame") and child:FindFirstChild("Toggle") then
						if child.LayoutOrder > LayoutOrder and child.LayoutOrder < nextLabelOrder then
							local id = TabName.."_"..child.Text.Text
							GuiLib.ToggleStates[id] = toggled
							child.Toggle.BackgroundTransparency = toggled and 0 or 1
							local cb = GuiLib.ToggleStates[id.."_Callback"]
							if cb then cb(toggled) end
						end
					end
				end
			end)
		
			game:GetService("RunService").RenderStepped:Connect(function()
				updateLabelToggle()
			end)
		
			return Label
		end
		
		
		
		function GuiLib:AddButton(TabName, Text, LayoutOrder, Callback)
			local Tab = GuiLib.Tabs[TabName]
			if not Tab then return end
			local Template = script.Templates:FindFirstChild("ButtonTemplate")
			if not Template then return end
			local Button = Template:Clone()
			Button.Visible = true
			Button.Parent = Tab
			Button.Text = Text
			if LayoutOrder then
				Button.LayoutOrder = LayoutOrder
			end
			Button.MouseButton1Click:Connect(Callback)
		end
		
		function GuiLib:AddToggle(TabName, Text, LayoutOrder, Callback)
			local Tab = GuiLib.Tabs[TabName]
			if not Tab then return end
			local Template = script.Templates:FindFirstChild("ToggleTemplate")
			if not Template then return end
			local ToggleFrame = Template:Clone()
			ToggleFrame.Visible = true
			ToggleFrame.Parent = Tab
			ToggleFrame.Text.Text = Text
			if LayoutOrder then
				ToggleFrame.LayoutOrder = LayoutOrder
			end
			local ToggleButton = ToggleFrame:WaitForChild("Toggle")
			ToggleButton.Visible = true
			local Id = TabName.."_"..Text
			GuiLib.ToggleStates[Id] = false
			GuiLib.ToggleStates[Id.."_Callback"] = Callback
			ToggleButton.BackgroundTransparency = 1
			ToggleButton.MouseButton1Click:Connect(function()
				GuiLib.ToggleStates[Id] = not GuiLib.ToggleStates[Id]
				ToggleButton.BackgroundTransparency = GuiLib.ToggleStates[Id] and 0 or 1
				Callback(GuiLib.ToggleStates[Id])
			end)
			return Id
		end
		
		
		function GuiLib:AddTextbox(TabName, Text, LayoutOrder, Callback)
			local Tab = GuiLib.Tabs[TabName]
			if not Tab then return end
			local Template = script.Templates:FindFirstChild("TextboxTemplate")
			if not Template then return end
			local TextboxFrame = Template:Clone()
			TextboxFrame.Visible = true
			TextboxFrame.Parent = Tab
			TextboxFrame.Text.Text = Text
			if LayoutOrder then
				TextboxFrame.LayoutOrder = LayoutOrder
			end
			local Button = TextboxFrame:WaitForChild("Button")
			local TextBox = TextboxFrame:WaitForChild("TextBox")
			Button.Visible = true
			Button.MouseButton1Click:Connect(function()
				Callback(TextBox.Text)
			end)
		end
		
		function GuiLib:AddTextboxToggle(TabName, Text, LayoutOrder, Callback)
			local Tab = GuiLib.Tabs[TabName]
			if not Tab then return end
			local Template = script.Templates:FindFirstChild("TextboxToggleTemplate")
			if not Template then return end
			local ToggleFrame = Template:Clone()
			ToggleFrame.Visible = true
			ToggleFrame.Parent = Tab
			ToggleFrame.Text.Text = Text
			if LayoutOrder then
				ToggleFrame.LayoutOrder = LayoutOrder
			end
			local ToggleButton = ToggleFrame:WaitForChild("Toggle")
			local TextBox = ToggleFrame:WaitForChild("TextBox")
			local Id = TabName.."_"..Text
			GuiLib.ToggleStates[Id] = false
			GuiLib.ToggleStates[Id.."_Callback"] = Callback
			ToggleButton.BackgroundTransparency = 1
			local function fireCallback()
				Callback(GuiLib.ToggleStates[Id], TextBox.Text)
			end
			ToggleButton.MouseButton1Click:Connect(function()
				GuiLib.ToggleStates[Id] = not GuiLib.ToggleStates[Id]
				ToggleButton.BackgroundTransparency = GuiLib.ToggleStates[Id] and 0 or 1
				fireCallback()
			end)
			TextBox.FocusLost:Connect(function(enterPressed)
				if enterPressed then
					fireCallback()
				end
			end)
			return Id
		end
		
		
		
		GuiLib:AddLabel("ESP", "List of ESPs", 0)
		
		for name, data in pairs(ESPS) do
			GuiLib:AddToggle("ESP", data.DisplayName, data.LayoutOrder, function(value)
				data.Enabled = value
			end)
		end
		GuiLib:AddLabel("Bypasses", "List of bypasses", 1)
		
		
		GuiLib:AddLabel("More", "Camera", 0)
		
		
		GuiLib:AddTextboxToggle("More", "FOV", 1, function(enabled, text)
			if enabled then
				local val = tonumber(text)
				if val then
					FieldOfView = val
				end
			else
				FieldOfView = 70
			end
		end)
		
		
		
		return GuiLib
		
	end)
	spawn(function() --Source for Script60
		local script = Script60
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		local RunService = game:GetService("RunService")
		local TweenService = game:GetService("TweenService")
		local UserInputService = game:GetService("UserInputService")
		local currenttween
		local loaded = false
		local openedui = false
		local tabbuttons = script.Parent.MainUi:WaitForChild("Title")
		for _, button in pairs(tabbuttons:GetChildren()) do
			if button:IsA("GuiButton") then
				button.MouseButton1Click:Connect(function()
					for _, scrollingframe in pairs(script.Parent.MainUi:GetChildren()) do
						if scrollingframe:IsA("ScrollingFrame") then
							scrollingframe.Visible = false
						end
					end
					if script.Parent.MainUi:FindFirstChild(button.Name) then
						script.Parent.MainUi:FindFirstChild(button.Name).Visible = true
					end
				end)
			end
		end
		
		function toggleUi()
			script.Parent.MainUi.Visible = not script.Parent.MainUi.Visible
			if not openedui then
				openedui = true
				wait(1)
				for _, scrollingframe in pairs(script.Parent.MainUi:GetChildren()) do
					if scrollingframe:IsA("ScrollingFrame") then
						scrollingframe.Visible = false
					end
				end
				script.Parent.MainUi.ESP.Visible = true
			end
		end
		
		UserInputService.InputBegan:Connect(function(i, gameProcessedEvent)
			if i.KeyCode == Enum.KeyCode.M and not gameProcessedEvent  then
				toggleUi()
			end
		end)
		script.Parent.Toggle.MouseButton1Click:Connect(toggleUi)
	end)
	spawn(function() --Source for Script125
		local script = Script125
		local load_guicoreV2 = false
		if game:GetService("RunService"):IsClient() then
			local coregui = game.CoreGui
			if coregui then
				if not coregui:FindFirstChild("PiggyHubV2") then
					print("Succesfully loaded!")
					load_guicoreV2 = true
				elseif coregui:FindFirstChild("PiggyHubV2") then
					print("Gui has already been loaded! Stoping load process.")
					load_guicoreV2 = true
				end
			end
		end
	end)
end
createGui(game.CoreGui) --coregui by default you should but change it
