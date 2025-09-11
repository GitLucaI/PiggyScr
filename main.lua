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
	--Script61--
	local Script61 = Instance.new("Script",ScreenGui1)
	Script61["Name"] = "CompileLoader"
	Script61["Enabled"] = false
	----Script61----
	--TextButton62--
	local TextButton62 = Instance.new("TextButton",ScreenGui1)
	TextButton62["LayoutOrder"] = 1
	TextButton62["TextWrapped"] = true
	TextButton62["AutoLocalize"] = false
	TextButton62["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton62["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextButton62["Text"] = "Piggy Hub V2"
	TextButton62["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton62["TextSize"] = 14
	TextButton62["AnchorPoint"] = Vector2.new(0.0500000007, 0.5)
	TextButton62["Font"] = Enum.Font.Oswald
	TextButton62["Name"] = "Toggle"
	TextButton62["Position"] = UDim2.new(0.0064275763, 0, 0.0995024815, 0)
	TextButton62["BackgroundTransparency"] = 0.30000001192092896
	TextButton62["Size"] = UDim2.new(0.130617976, 0, 0.0740825459, 0)
	TextButton62["TextScaled"] = true
	TextButton62["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextButton62----
	--UICorner63--
	local UICorner63 = Instance.new("UICorner",TextButton62)
	UICorner63["CornerRadius"] = UDim.new(0.100000001, 0)
	----UICorner63----
	--UIPadding64--
	local UIPadding64 = Instance.new("UIPadding",TextButton62)
	UIPadding64["PaddingLeft"] = UDim.new(0.200000003, 0)
	UIPadding64["PaddingRight"] = UDim.new(0.0500000007, 0)
	----UIPadding64----
	--UIStroke65--
	local UIStroke65 = Instance.new("UIStroke",TextButton62)
	UIStroke65["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke65["Thickness"] = 3
	UIStroke65["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke65----
	--TextButton66--
	local TextButton66 = Instance.new("TextButton",ScreenGui1)
	TextButton66["Visible"] = false
	TextButton66["TextWrapped"] = true
	TextButton66["AnchorPoint"] = Vector2.new(0.0500000007, 0.5)
	TextButton66["TextSize"] = 14
	TextButton66["Size"] = UDim2.new(0.130617976, 0, 0.0740825459, 0)
	TextButton66["AutoLocalize"] = false
	TextButton66["TextColor3"] = Color3.new(1, 0.870588, 0.741176)
	TextButton66["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextButton66["Text"] = "Run Info"
	TextButton66["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton66["Font"] = Enum.Font.Oswald
	TextButton66["Name"] = "StatsBtn"
	TextButton66["Position"] = UDim2.new(0.001999998, 0, 0.589552224, 0)
	TextButton66["LayoutOrder"] = 1
	TextButton66["BackgroundTransparency"] = 0.30000001192092896
	TextButton66["TextScaled"] = true
	TextButton66["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextButton66----
	--UICorner67--
	local UICorner67 = Instance.new("UICorner",TextButton66)
	UICorner67["CornerRadius"] = UDim.new(0.100000001, 0)
	----UICorner67----
	--UIPadding68--
	local UIPadding68 = Instance.new("UIPadding",TextButton66)
	UIPadding68["PaddingLeft"] = UDim.new(0.200000003, 0)
	UIPadding68["PaddingRight"] = UDim.new(0.0500000007, 0)
	----UIPadding68----
	--UIStroke69--
	local UIStroke69 = Instance.new("UIStroke",TextButton66)
	UIStroke69["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke69["Thickness"] = 3
	UIStroke69["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke69----
	--Frame70--
	local Frame70 = Instance.new("Frame",ScreenGui1)
	Frame70["LayoutOrder"] = 3
	Frame70["AutoLocalize"] = false
	Frame70["Active"] = true
	Frame70["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	Frame70["AnchorPoint"] = Vector2.new(0.5, 0.5)
	Frame70["Visible"] = false
	Frame70["BackgroundTransparency"] = 0.3499999940395355
	Frame70["Position"] = UDim2.new(0.458260268, 0, 0.579999983, 0)
	Frame70["Size"] = UDim2.new(0.699999988, 0, 0.600000024, 0)
	Frame70["Name"] = "MainUi"
	Frame70["BorderSizePixel"] = 0
	Frame70["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----Frame70----
	--UICorner71--
	local UICorner71 = Instance.new("UICorner",Frame70)
	----UICorner71----
	--UIStroke72--
	local UIStroke72 = Instance.new("UIStroke",Frame70)
	UIStroke72["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke72["Thickness"] = 4
	UIStroke72["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke72----
	--UIStroke73--
	local UIStroke73 = Instance.new("UIStroke",UIStroke72)
	UIStroke73["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke73["Thickness"] = 3.4000000953674316
	UIStroke73["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke73----
	--TextLabel74--
	local TextLabel74 = Instance.new("TextLabel",Frame70)
	TextLabel74["LayoutOrder"] = 3
	TextLabel74["TextWrapped"] = true
	TextLabel74["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel74["BorderSizePixel"] = 0
	TextLabel74["Size"] = UDim2.new(0.214014798, 0, 1.00623477, 0)
	TextLabel74["RichText"] = true
	TextLabel74["AutoLocalize"] = false
	TextLabel74["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel74["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel74["Text"] = ""
	TextLabel74["Font"] = Enum.Font.Oswald
	TextLabel74["Name"] = "Title"
	TextLabel74["Position"] = UDim2.new(1.10700738, 0, 1.00623477, 0)
	TextLabel74["TextSize"] = 50
	TextLabel74["BackgroundTransparency"] = 1
	TextLabel74["TextScaled"] = true
	TextLabel74["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel74----
	--UICorner75--
	local UICorner75 = Instance.new("UICorner",TextLabel74)
	----UICorner75----
	--UIGridLayout76--
	local UIGridLayout76 = Instance.new("UIGridLayout",TextLabel74)
	UIGridLayout76["VerticalAlignment"] = Enum.VerticalAlignment.Center
	UIGridLayout76["FillDirection"] = Enum.FillDirection.Vertical
	UIGridLayout76["CellPadding"] = UDim2.new(0, 0, 0.0250000004, 0)
	UIGridLayout76["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIGridLayout76["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
	UIGridLayout76["CellSize"] = UDim2.new(0.899999976, 0, 0.131999999, 0)
	----UIGridLayout76----
	--TextButton77--
	local TextButton77 = Instance.new("TextButton",TextLabel74)
	TextButton77["TextWrapped"] = true
	TextButton77["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton77["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton77["Text"] = "ESP"
	TextButton77["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton77["TextSize"] = 14
	TextButton77["TextScaled"] = true
	TextButton77["Font"] = Enum.Font.Oswald
	TextButton77["BackgroundTransparency"] = 0.5
	TextButton77["Position"] = UDim2.new(-0.147082791, 0, 2.28603077, 0)
	TextButton77["Name"] = "ESP"
	TextButton77["Size"] = UDim2.new(0.333249986, 0, 0.75000006, 0)
	TextButton77["BorderSizePixel"] = 0
	TextButton77["BackgroundColor3"] = Color3.new(0.470588, 0.435294, 0.356863)
	----TextButton77----
	--UICorner78--
	local UICorner78 = Instance.new("UICorner",TextButton77)
	----UICorner78----
	--UIPadding79--
	local UIPadding79 = Instance.new("UIPadding",TextButton77)
	UIPadding79["PaddingBottom"] = UDim.new(0.150000006, 0)
	UIPadding79["PaddingTop"] = UDim.new(0.100000001, 0)
	UIPadding79["PaddingLeft"] = UDim.new(0.100000001, 0)
	UIPadding79["PaddingRight"] = UDim.new(0.100000001, 0)
	----UIPadding79----
	--UIStroke80--
	local UIStroke80 = Instance.new("UIStroke",TextButton77)
	UIStroke80["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke80["Thickness"] = 4
	UIStroke80["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke80----
	--UIGradient81--
	local UIGradient81 = Instance.new("UIGradient",TextButton77)
	UIGradient81["Rotation"] = 90
	UIGradient81["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient81----
	--TextButton82--
	local TextButton82 = Instance.new("TextButton",TextButton77)
	TextButton82["TextWrapped"] = true
	TextButton82["TextScaled"] = true
	TextButton82["TextColor3"] = Color3.new(0.847059, 0.729412, 0.54902)
	TextButton82["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton82["Text"] = ""
	TextButton82["TextSize"] = 14
	TextButton82["AutoButtonColor"] = false
	TextButton82["AnchorPoint"] = Vector2.new(0, 0.5)
	TextButton82["Font"] = Enum.Font.Unknown
	TextButton82["Name"] = "Toggle"
	TextButton82["Position"] = UDim2.new(0.890631974, 0, 0.526479542, 0)
	TextButton82["Size"] = UDim2.new(0.198677853, 0, 0.93288523, 0)
	TextButton82["BackgroundTransparency"] = 1
	TextButton82["BorderSizePixel"] = 0
	TextButton82["BackgroundColor3"] = Color3.new(1, 0.501961, 0.592157)
	----TextButton82----
	--UICorner83--
	local UICorner83 = Instance.new("UICorner",TextButton82)
	----UICorner83----
	--UIGradient84--
	local UIGradient84 = Instance.new("UIGradient",TextButton82)
	UIGradient84["Rotation"] = 90
	UIGradient84["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient84----
	--UIStroke85--
	local UIStroke85 = Instance.new("UIStroke",TextButton82)
	UIStroke85["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke85["Thickness"] = 4
	UIStroke85["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke85----
	--UIGradient86--
	local UIGradient86 = Instance.new("UIGradient",UIStroke85)
	UIGradient86["Rotation"] = 90
	UIGradient86["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient86----
	--TextButton87--
	local TextButton87 = Instance.new("TextButton",TextLabel74)
	TextButton87["TextWrapped"] = true
	TextButton87["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton87["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton87["Text"] = "Bypasses"
	TextButton87["TextScaled"] = true
	TextButton87["TextSize"] = 14
	TextButton87["Font"] = Enum.Font.Oswald
	TextButton87["BackgroundTransparency"] = 0.5
	TextButton87["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton87["Size"] = UDim2.new(0.333249986, 0, 0.75000006, 0)
	TextButton87["Name"] = "Bypasses"
	TextButton87["BorderSizePixel"] = 0
	TextButton87["BackgroundColor3"] = Color3.new(0.470588, 0.435294, 0.356863)
	----TextButton87----
	--UICorner88--
	local UICorner88 = Instance.new("UICorner",TextButton87)
	----UICorner88----
	--UIPadding89--
	local UIPadding89 = Instance.new("UIPadding",TextButton87)
	UIPadding89["PaddingBottom"] = UDim.new(0.150000006, 0)
	UIPadding89["PaddingTop"] = UDim.new(0.100000001, 0)
	UIPadding89["PaddingLeft"] = UDim.new(0.100000001, 0)
	UIPadding89["PaddingRight"] = UDim.new(0.100000001, 0)
	----UIPadding89----
	--UIStroke90--
	local UIStroke90 = Instance.new("UIStroke",TextButton87)
	UIStroke90["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke90["Thickness"] = 4
	UIStroke90["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke90----
	--UIGradient91--
	local UIGradient91 = Instance.new("UIGradient",TextButton87)
	UIGradient91["Rotation"] = 90
	UIGradient91["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient91----
	--TextButton92--
	local TextButton92 = Instance.new("TextButton",TextButton87)
	TextButton92["TextWrapped"] = true
	TextButton92["TextScaled"] = true
	TextButton92["TextColor3"] = Color3.new(0.847059, 0.729412, 0.54902)
	TextButton92["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton92["Text"] = ""
	TextButton92["TextSize"] = 14
	TextButton92["AutoButtonColor"] = false
	TextButton92["AnchorPoint"] = Vector2.new(0, 0.5)
	TextButton92["Font"] = Enum.Font.Unknown
	TextButton92["Name"] = "Toggle"
	TextButton92["Position"] = UDim2.new(0.890631974, 0, 0.526479542, 0)
	TextButton92["Size"] = UDim2.new(0.198677853, 0, 0.93288523, 0)
	TextButton92["BackgroundTransparency"] = 1
	TextButton92["BorderSizePixel"] = 0
	TextButton92["BackgroundColor3"] = Color3.new(1, 0.501961, 0.592157)
	----TextButton92----
	--UICorner93--
	local UICorner93 = Instance.new("UICorner",TextButton92)
	----UICorner93----
	--UIGradient94--
	local UIGradient94 = Instance.new("UIGradient",TextButton92)
	UIGradient94["Rotation"] = 90
	UIGradient94["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient94----
	--UIStroke95--
	local UIStroke95 = Instance.new("UIStroke",TextButton92)
	UIStroke95["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke95["Thickness"] = 4
	UIStroke95["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke95----
	--UIGradient96--
	local UIGradient96 = Instance.new("UIGradient",UIStroke95)
	UIGradient96["Rotation"] = 90
	UIGradient96["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient96----
	--TextButton97--
	local TextButton97 = Instance.new("TextButton",TextLabel74)
	TextButton97["TextWrapped"] = true
	TextButton97["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton97["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton97["Text"] = "More"
	TextButton97["TextScaled"] = true
	TextButton97["TextSize"] = 14
	TextButton97["Font"] = Enum.Font.Oswald
	TextButton97["BackgroundTransparency"] = 0.5
	TextButton97["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton97["Size"] = UDim2.new(0.333249986, 0, 0.75000006, 0)
	TextButton97["Name"] = "More"
	TextButton97["BorderSizePixel"] = 0
	TextButton97["BackgroundColor3"] = Color3.new(0.470588, 0.435294, 0.356863)
	----TextButton97----
	--UICorner98--
	local UICorner98 = Instance.new("UICorner",TextButton97)
	----UICorner98----
	--UIPadding99--
	local UIPadding99 = Instance.new("UIPadding",TextButton97)
	UIPadding99["PaddingBottom"] = UDim.new(0.150000006, 0)
	UIPadding99["PaddingTop"] = UDim.new(0.100000001, 0)
	UIPadding99["PaddingLeft"] = UDim.new(0.100000001, 0)
	UIPadding99["PaddingRight"] = UDim.new(0.100000001, 0)
	----UIPadding99----
	--UIStroke100--
	local UIStroke100 = Instance.new("UIStroke",TextButton97)
	UIStroke100["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke100["Thickness"] = 4
	UIStroke100["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke100----
	--UIGradient101--
	local UIGradient101 = Instance.new("UIGradient",TextButton97)
	UIGradient101["Rotation"] = 90
	UIGradient101["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient101----
	--TextButton102--
	local TextButton102 = Instance.new("TextButton",TextButton97)
	TextButton102["TextWrapped"] = true
	TextButton102["TextScaled"] = true
	TextButton102["TextColor3"] = Color3.new(0.847059, 0.729412, 0.54902)
	TextButton102["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton102["Text"] = ""
	TextButton102["TextSize"] = 14
	TextButton102["AutoButtonColor"] = false
	TextButton102["AnchorPoint"] = Vector2.new(0, 0.5)
	TextButton102["Font"] = Enum.Font.Unknown
	TextButton102["Name"] = "Toggle"
	TextButton102["Position"] = UDim2.new(0.890631974, 0, 0.526478708, 0)
	TextButton102["Size"] = UDim2.new(0.198677853, 0, 0.93288523, 0)
	TextButton102["BackgroundTransparency"] = 1
	TextButton102["BorderSizePixel"] = 0
	TextButton102["BackgroundColor3"] = Color3.new(1, 0.501961, 0.592157)
	----TextButton102----
	--UICorner103--
	local UICorner103 = Instance.new("UICorner",TextButton102)
	----UICorner103----
	--UIGradient104--
	local UIGradient104 = Instance.new("UIGradient",TextButton102)
	UIGradient104["Rotation"] = 90
	UIGradient104["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient104----
	--UIStroke105--
	local UIStroke105 = Instance.new("UIStroke",TextButton102)
	UIStroke105["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke105["Thickness"] = 4
	UIStroke105["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke105----
	--UIGradient106--
	local UIGradient106 = Instance.new("UIGradient",UIStroke105)
	UIGradient106["Rotation"] = 90
	UIGradient106["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient106----
	--UIPadding107--
	local UIPadding107 = Instance.new("UIPadding",TextLabel74)
	UIPadding107["PaddingBottom"] = UDim.new(0.150000006, 0)
	UIPadding107["PaddingTop"] = UDim.new(0.100000001, 0)
	----UIPadding107----
	--ScrollingFrame108--
	local ScrollingFrame108 = Instance.new("ScrollingFrame",Frame70)
	ScrollingFrame108["ScrollBarImageColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame108["Active"] = true
	ScrollingFrame108["BorderColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame108["ScrollBarThickness"] = 0
	ScrollingFrame108["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	ScrollingFrame108["CanvasSize"] = UDim2.new(0, 0, 0, 0)
	ScrollingFrame108["Name"] = "ESP"
	ScrollingFrame108["ScrollingDirection"] = Enum.ScrollingDirection.Y
	ScrollingFrame108["Size"] = UDim2.new(1, 0, 1, 0)
	ScrollingFrame108["BackgroundTransparency"] = 1
	ScrollingFrame108["BorderSizePixel"] = 0
	ScrollingFrame108["BackgroundColor3"] = Color3.new(1, 1, 1)
	----ScrollingFrame108----
	--UIListLayout109--
	local UIListLayout109 = Instance.new("UIListLayout",ScrollingFrame108)
	UIListLayout109["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout109["Padding"] = UDim.new(0, 15)
	----UIListLayout109----
	--UIPadding110--
	local UIPadding110 = Instance.new("UIPadding",ScrollingFrame108)
	UIPadding110["PaddingBottom"] = UDim.new(0.0500000007, 0)
	UIPadding110["PaddingTop"] = UDim.new(0.0500000007, 0)
	UIPadding110["PaddingLeft"] = UDim.new(0.0250000004, 0)
	UIPadding110["PaddingRight"] = UDim.new(0.0250000004, 0)
	----UIPadding110----
	--TextLabel111--
	local TextLabel111 = Instance.new("TextLabel",ScrollingFrame108)
	TextLabel111["LayoutOrder"] = 999999999
	TextLabel111["TextWrapped"] = true
	TextLabel111["Active"] = true
	TextLabel111["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel111["BorderSizePixel"] = 0
	TextLabel111["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel111["RichText"] = true
	TextLabel111["AutoLocalize"] = false
	TextLabel111["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel111["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel111["Text"] = ""
	TextLabel111["Font"] = Enum.Font.Oswald
	TextLabel111["Name"] = "EndBarrier"
	TextLabel111["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel111["TextSize"] = 50
	TextLabel111["BackgroundTransparency"] = 1
	TextLabel111["TextScaled"] = true
	TextLabel111["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel111----
	--UIGradient112--
	local UIGradient112 = Instance.new("UIGradient",TextLabel111)
	UIGradient112["Rotation"] = 90
	UIGradient112["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient112----
	--UIAspectRatioConstraint113--
	local UIAspectRatioConstraint113 = Instance.new("UIAspectRatioConstraint",Frame70)
	UIAspectRatioConstraint113["AspectRatio"] = 2.3014094829559326
	----UIAspectRatioConstraint113----
	--ScrollingFrame114--
	local ScrollingFrame114 = Instance.new("ScrollingFrame",Frame70)
	ScrollingFrame114["ScrollBarImageColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame114["Active"] = true
	ScrollingFrame114["BorderColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame114["ScrollBarThickness"] = 0
	ScrollingFrame114["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	ScrollingFrame114["CanvasSize"] = UDim2.new(0, 0, 0, 0)
	ScrollingFrame114["Name"] = "Bypasses"
	ScrollingFrame114["ScrollingDirection"] = Enum.ScrollingDirection.Y
	ScrollingFrame114["Size"] = UDim2.new(1, 0, 1, 0)
	ScrollingFrame114["BackgroundTransparency"] = 1
	ScrollingFrame114["BorderSizePixel"] = 0
	ScrollingFrame114["BackgroundColor3"] = Color3.new(1, 1, 1)
	----ScrollingFrame114----
	--UIListLayout115--
	local UIListLayout115 = Instance.new("UIListLayout",ScrollingFrame114)
	UIListLayout115["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout115["Padding"] = UDim.new(0, 15)
	----UIListLayout115----
	--UIPadding116--
	local UIPadding116 = Instance.new("UIPadding",ScrollingFrame114)
	UIPadding116["PaddingBottom"] = UDim.new(0.0500000007, 0)
	UIPadding116["PaddingTop"] = UDim.new(0.0500000007, 0)
	UIPadding116["PaddingLeft"] = UDim.new(0.0250000004, 0)
	UIPadding116["PaddingRight"] = UDim.new(0.0250000004, 0)
	----UIPadding116----
	--TextLabel117--
	local TextLabel117 = Instance.new("TextLabel",ScrollingFrame114)
	TextLabel117["LayoutOrder"] = 999999999
	TextLabel117["TextWrapped"] = true
	TextLabel117["Active"] = true
	TextLabel117["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel117["BorderSizePixel"] = 0
	TextLabel117["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel117["RichText"] = true
	TextLabel117["AutoLocalize"] = false
	TextLabel117["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel117["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel117["Text"] = ""
	TextLabel117["Font"] = Enum.Font.Oswald
	TextLabel117["Name"] = "EndBarrier"
	TextLabel117["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel117["TextSize"] = 50
	TextLabel117["BackgroundTransparency"] = 1
	TextLabel117["TextScaled"] = true
	TextLabel117["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel117----
	--UIGradient118--
	local UIGradient118 = Instance.new("UIGradient",TextLabel117)
	UIGradient118["Rotation"] = 90
	UIGradient118["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient118----
	--ScrollingFrame119--
	local ScrollingFrame119 = Instance.new("ScrollingFrame",Frame70)
	ScrollingFrame119["ScrollBarImageColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame119["Active"] = true
	ScrollingFrame119["BorderColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame119["ScrollBarThickness"] = 0
	ScrollingFrame119["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	ScrollingFrame119["CanvasSize"] = UDim2.new(0, 0, 0, 0)
	ScrollingFrame119["Name"] = "More"
	ScrollingFrame119["ScrollingDirection"] = Enum.ScrollingDirection.Y
	ScrollingFrame119["Size"] = UDim2.new(1, 0, 1, 0)
	ScrollingFrame119["BackgroundTransparency"] = 1
	ScrollingFrame119["BorderSizePixel"] = 0
	ScrollingFrame119["BackgroundColor3"] = Color3.new(1, 1, 1)
	----ScrollingFrame119----
	--UIListLayout120--
	local UIListLayout120 = Instance.new("UIListLayout",ScrollingFrame119)
	UIListLayout120["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout120["Padding"] = UDim.new(0, 15)
	----UIListLayout120----
	--UIPadding121--
	local UIPadding121 = Instance.new("UIPadding",ScrollingFrame119)
	UIPadding121["PaddingBottom"] = UDim.new(0.0500000007, 0)
	UIPadding121["PaddingTop"] = UDim.new(0.0500000007, 0)
	UIPadding121["PaddingLeft"] = UDim.new(0.0250000004, 0)
	UIPadding121["PaddingRight"] = UDim.new(0.0250000004, 0)
	----UIPadding121----
	--TextLabel122--
	local TextLabel122 = Instance.new("TextLabel",ScrollingFrame119)
	TextLabel122["LayoutOrder"] = 999999999
	TextLabel122["TextWrapped"] = true
	TextLabel122["Active"] = true
	TextLabel122["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel122["BorderSizePixel"] = 0
	TextLabel122["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel122["RichText"] = true
	TextLabel122["AutoLocalize"] = false
	TextLabel122["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel122["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel122["Text"] = ""
	TextLabel122["Font"] = Enum.Font.Oswald
	TextLabel122["Name"] = "EndBarrier"
	TextLabel122["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel122["TextSize"] = 50
	TextLabel122["BackgroundTransparency"] = 1
	TextLabel122["TextScaled"] = true
	TextLabel122["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel122----
	--UIGradient123--
	local UIGradient123 = Instance.new("UIGradient",TextLabel122)
	UIGradient123["Rotation"] = 90
	UIGradient123["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient123----
	--TextLabel124--
	local TextLabel124 = Instance.new("TextLabel",ScrollingFrame119)
	TextLabel124["LayoutOrder"] = 999999999
	TextLabel124["TextWrapped"] = true
	TextLabel124["Active"] = true
	TextLabel124["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel124["BorderSizePixel"] = 0
	TextLabel124["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel124["RichText"] = true
	TextLabel124["AutoLocalize"] = false
	TextLabel124["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel124["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel124["Text"] = ""
	TextLabel124["Font"] = Enum.Font.Oswald
	TextLabel124["Name"] = "EndBarrier"
	TextLabel124["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel124["TextSize"] = 50
	TextLabel124["BackgroundTransparency"] = 1
	TextLabel124["TextScaled"] = true
	TextLabel124["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel124----
	--UIGradient125--
	local UIGradient125 = Instance.new("UIGradient",TextLabel124)
	UIGradient125["Rotation"] = 90
	UIGradient125["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient125----
	--Frame126--
	local Frame126 = Instance.new("Frame",ScreenGui1)
	Frame126["Visible"] = false
	Frame126["Size"] = UDim2.new(0.130379751, 0, 0.696517408, 0)
	Frame126["BackgroundTransparency"] = 0.30000001192092896
	Frame126["Position"] = UDim2.new(0, 0, 0.161691546, 0)
	Frame126["BorderColor3"] = Color3.new(0, 0, 0)
	Frame126["Name"] = "ItemsTeleport"
	Frame126["BorderSizePixel"] = 0
	Frame126["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----Frame126----
	--ScrollingFrame127--
	local ScrollingFrame127 = Instance.new("ScrollingFrame",Frame126)
	ScrollingFrame127["ScrollBarImageColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame127["Active"] = true
	ScrollingFrame127["BorderColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame127["ScrollBarThickness"] = 0
	ScrollingFrame127["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	ScrollingFrame127["CanvasSize"] = UDim2.new(0, 0, 0, 0)
	ScrollingFrame127["Name"] = "ItemsFrame"
	ScrollingFrame127["ScrollingDirection"] = Enum.ScrollingDirection.Y
	ScrollingFrame127["Size"] = UDim2.new(1, 0, 1, 0)
	ScrollingFrame127["BackgroundTransparency"] = 1
	ScrollingFrame127["BorderSizePixel"] = 0
	ScrollingFrame127["BackgroundColor3"] = Color3.new(1, 1, 1)
	----ScrollingFrame127----
	--UIListLayout128--
	local UIListLayout128 = Instance.new("UIListLayout",ScrollingFrame127)
	UIListLayout128["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout128["Padding"] = UDim.new(0, 15)
	UIListLayout128["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
	UIListLayout128["FillDirection"] = Enum.FillDirection.Horizontal
	----UIListLayout128----
	--UIPadding129--
	local UIPadding129 = Instance.new("UIPadding",ScrollingFrame127)
	UIPadding129["PaddingBottom"] = UDim.new(0.0500000007, 0)
	UIPadding129["PaddingTop"] = UDim.new(0.0500000007, 0)
	UIPadding129["PaddingLeft"] = UDim.new(0.0250000004, 0)
	UIPadding129["PaddingRight"] = UDim.new(0.0250000004, 0)
	----UIPadding129----
	--TextLabel130--
	local TextLabel130 = Instance.new("TextLabel",ScrollingFrame127)
	TextLabel130["LayoutOrder"] = 999999999
	TextLabel130["TextWrapped"] = true
	TextLabel130["Active"] = true
	TextLabel130["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel130["BorderSizePixel"] = 0
	TextLabel130["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel130["RichText"] = true
	TextLabel130["AutoLocalize"] = false
	TextLabel130["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel130["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel130["Text"] = ""
	TextLabel130["Font"] = Enum.Font.Oswald
	TextLabel130["Name"] = "EndBarrier"
	TextLabel130["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel130["TextSize"] = 50
	TextLabel130["BackgroundTransparency"] = 1
	TextLabel130["TextScaled"] = true
	TextLabel130["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel130----
	--UIGradient131--
	local UIGradient131 = Instance.new("UIGradient",TextLabel130)
	UIGradient131["Rotation"] = 90
	UIGradient131["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient131----
	--TextLabel132--
	local TextLabel132 = Instance.new("TextLabel",ScrollingFrame127)
	TextLabel132["LayoutOrder"] = 999999999
	TextLabel132["TextWrapped"] = true
	TextLabel132["Active"] = true
	TextLabel132["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel132["BorderSizePixel"] = 0
	TextLabel132["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel132["RichText"] = true
	TextLabel132["AutoLocalize"] = false
	TextLabel132["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel132["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel132["Text"] = ""
	TextLabel132["Font"] = Enum.Font.Oswald
	TextLabel132["Name"] = "EndBarrier"
	TextLabel132["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel132["TextSize"] = 50
	TextLabel132["BackgroundTransparency"] = 1
	TextLabel132["TextScaled"] = true
	TextLabel132["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel132----
	--UIGradient133--
	local UIGradient133 = Instance.new("UIGradient",TextLabel132)
	UIGradient133["Rotation"] = 90
	UIGradient133["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient133----
	--UIStroke134--
	local UIStroke134 = Instance.new("UIStroke",Frame126)
	UIStroke134["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke134["Thickness"] = 3
	UIStroke134["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke134----
	--UICorner135--
	local UICorner135 = Instance.new("UICorner",Frame126)
	UICorner135["CornerRadius"] = UDim.new(0.0299999993, 0)
	----UICorner135----
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
		local WalkSpeed = 15
		local JumpPower = 35
		local Gravity = 196.1999969482422
		local WState = false
		local JState = false
		local GState = false
		local fovstate = false
		local fakestun
		local itemui = script.Parent.ItemsTeleport
		
		function refreshCharacter(c)
			character = c
			hrp = c.PrimaryPart
			humanoid = c:WaitForChild("Humanoid")
			fakestun = nil
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
		
		for tabName, button in pairs(GuiLib.TabToggleButtons) do
			button.MouseButton1Click:Connect(function()
				local tabFrame = GuiLib.Tabs[tabName]
				if not tabFrame then return end
		
				local allOn = true
				for _, child in ipairs(tabFrame:GetChildren()) do
					local toggleBtn = child:FindFirstChild("Toggle")
					if toggleBtn then
						local id = tabName.."_"..(child:FindFirstChild("Text") and child.Text.Text or "Unknown")
						if not GuiLib.ToggleStates[id] then
							allOn = false
							break
						end
					end
				end
		
				local newState = not allOn
		
				for _, child in ipairs(tabFrame:GetChildren()) do
					local toggleBtn = child:FindFirstChild("Toggle")
					if toggleBtn then
						local id = tabName.."_"..(child:FindFirstChild("Text") and child.Text.Text or "Unknown")
						GuiLib.ToggleStates[id] = newState
						toggleBtn.BackgroundTransparency = newState and 0 or 1
						local cb = GuiLib.ToggleStates[id.."_Callback"]
						if cb then
							if child:FindFirstChild("TextBox") then
								cb(newState, child.TextBox.Text)
							else
								cb(newState)
							end
						end
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
		
		local Utility1 = {
			["GodMode"] = {Enabled = false, DisplayName = "God Mode (Glitched)", LayoutOrder = 1, MainName = "GodMode"},
		}
		local Bypasses = {
			["RemoveTraps"] = {Enabled = false, DisplayName = "Remove Traps", LayoutOrder = 1, MainName = "Remove Traps"},
		}
		workspace.DescendantRemoving:Connect(function(d)
			
		end)
		
		
		function createHighlight(part, color, othername, esp)
			if not part:FindFirstChild("Highlight") and part.Name ~= player.Name then
				part:AddTag(esp.MainName.. "Subject")
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
		
		
		RunService.RenderStepped:Connect(function()
			for _, trap in pairs(CollectionService:GetTagged("TrapsSubject")) do
				if Bypasses.RemoveTraps.Enabled == true then
					trap:Destroy()
				end
			end
			for _, piggy in pairs(CollectionService:GetTagged("PiggySubject")) do
				for _, c in pairs(piggy:GetChildren()) do
					if c:IsA("BasePart") then
						if c.Name == "Torso" or c.Name == "HumanoidRootPart" then
							if Utility1.GodMode.Enabled == true then
								c.CanCollide = false
							else
								c.CanCollide = true
							end
						end
					end
				end
			end
			if FieldOfView ~= CurrentCamera.FieldOfView and fovstate then
				CurrentCamera.FieldOfView = FieldOfView
			end
			if humanoid then
				if humanoid.WalkSpeed ~= WalkSpeed and WState then
					humanoid.WalkSpeed = WalkSpeed
				end
				if humanoid.JumpPower ~= JumpPower and JState then
					humanoid.JumpPower = JumpPower
				end
				if workspace.Gravity ~= Gravity and GState then
					workspace.Gravity = Gravity
				end
			end
		
			--if Lighting.FullBright.Enabled == true then
			--	Lightings.Brightness = 3
			--	Lightings.Ambient = Color3.new(1, 1, 1)
			--	Lightings.ColorShift_Bottom = Color3.new(1, 1, 1)
			--	Lightings.ColorShift_Top = Color3.new(1, 1, 1)
			--else
			--	Lightings.Brightness = 0
			--	Lightings.Ambient = Color3.fromRGB(255, 255, 255)
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
		
			if d.Name == "IsStunned" and d.Parent then
				if d.Parent.Name == player.Name then
					task.spawn(function()
						task.wait(0.5)
						if d.Parent:FindFirstChild("Stunned") then
							fakestun = humanoid:LoadAnimation(d.Parent.Stunned)
						end
					end)
				end
				createHighlight(d.Parent, ESPS.Piggy.ESPColor, d.Parent.Name .. " (Piggy)", ESPS.Piggy)
				return
			end
		
			if d.Name == "Energy" and d.Parent then
				local parent = d.Parent
				if not parent:FindFirstChild("Traitor") and not parent:FindFirstChild("IsStunned") then
					createHighlight(d.Parent, ESPS.Players.ESPColor, d.Parent.Name .. " (Player)", ESPS.Players)
				end
			end
		
			if d:FindFirstChild("ItemPickupScript") then
				createHighlight(d, d.Color, d.Name, ESPS.Items)
			end
		
			if d:FindFirstChild("TrapSound") then
				createHighlight(d, ESPS.Traps.ESPColor, d.Name, ESPS.Traps)
				if Bypasses.RemoveTraps.Enabled == true then
					d:Destroy()
				end
			end
		
			if d.Name == "Traitor" and d.Parent then
				createHighlight(d.Parent, ESPS.Traitor.ESPColor, d.Parent.Name .. " (Traitor)", ESPS.Traitor)
			end
		end
		
		
		
		for _, d in ipairs(workspace:GetDescendants()) do
			attemptAction(d)
		end
		
		workspace.DescendantAdded:Connect(function(d)
			task.defer(function()
				attemptAction(d)
			end)
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
			
			TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				if GuiLib.ToggleStates[Id] then
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
		
		for name, data in pairs(Bypasses) do
			GuiLib:AddToggle("Bypasses", data.DisplayName, data.LayoutOrder, function(value)
				data.Enabled = value
			end)
		end
		
		GuiLib:AddLabel("More", "Utility", 0)
		
		for name, data in pairs(Utility1) do
			GuiLib:AddToggle("More", data.DisplayName, data.LayoutOrder, function(value)
				data.Enabled = value
			end)
		end
		
		GuiLib:AddButton("More", "FakeStun", 7, function()
			if fakestun then
				if fakestun.IsPlaying then
					fakestun:Stop()
				else
					fakestun:Play()
				end
			end
		end)
		GuiLib:AddLabel("More", "Movement", 8)
		
		GuiLib:AddTextboxToggle("More", "WalkSpeed", 10, function(enabled, text)
			WState = enabled
			if enabled then
				local val = tonumber(text)
				if val then
					WalkSpeed = val
				else
					WalkSpeed = 15
				end
			else
				WalkSpeed = 15
				humanoid.WalkSpeed = 15
			end
		end)
		GuiLib:AddTextboxToggle("More", "JumpPower", 11, function(enabled, text)
			JState = enabled
			if enabled then
				local val = tonumber(text)
				if val then
					JumpPower = val
				else
					JumpPower = 35
				end
			else
				JumpPower = 35
				humanoid.JumpPower = 35
			end
		end)
		GuiLib:AddTextboxToggle("More", "Gravity", 12, function(enabled, text)
			GState = enabled
			if enabled then
				local val = tonumber(text)
				if val then
					Gravity = val
				else
					Gravity = 196.1999969482422
				end
			else
				Gravity = 196.1999969482422
				workspace.Gravity = 196.1999969482422
			end
		end)
		
		GuiLib:AddLabel("More", "Camera", 17)
		GuiLib:AddTextboxToggle("More", "FOV", 18, function(enabled, text)
			fovstate = enabled
			if enabled then
				local val = tonumber(text)
				if val then
					FieldOfView = val
				end
			else
				FieldOfView = 70
				CurrentCamera.FieldOfView = 70
			end
		end)
		GuiLib:AddLabel("More", "Teleporters", 19)
		GuiLib:AddToggle("More", "Items Teleporter", 20, function(value)
			itemui.Visible = value
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
	spawn(function() --Source for Script61
		local script = Script61
		--[[local load_guicoreV2 = false
		if game:GetService("RunService"):IsClient() then
			local coregui = game.CoreGui
			if coregui then
				if not coregui:FindFirstChild("PiggyHubV2") then
					print("Succesfully loaded!")
					load_guicoreV2 = true
				elseif coregui:FindFirstChild("PiggyHubV2") then
					print("Gui has already been loaded! Stopping load process.")
					load_guicoreV2 = true
				end
			end
		end ]]--
	end)
end
createGui(game.CoreGui) --coregui by default you should but change it
