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
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
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
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
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
	--TextButton60--
	local TextButton60 = Instance.new("TextButton",Folder3)
	TextButton60["TextWrapped"] = true
	TextButton60["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton60["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton60["Text"] = "Red Key"
	TextButton60["TextSize"] = 14
	TextButton60["Font"] = Enum.Font.SourceSansBold
	TextButton60["Name"] = "ItemTemplate"
	TextButton60["Position"] = UDim2.new(3.99116118e-08, 0, 7.051338e-08, 0)
	TextButton60["TextScaled"] = true
	TextButton60["Size"] = UDim2.new(1, 0, 0.166999996, 0)
	TextButton60["BorderSizePixel"] = 0
	TextButton60["BackgroundColor3"] = Color3.new(1, 1, 1)
	----TextButton60----
	--UIGradient61--
	local UIGradient61 = Instance.new("UIGradient",TextButton60)
	UIGradient61["Rotation"] = 90
	UIGradient61["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient61----
	--UICorner62--
	local UICorner62 = Instance.new("UICorner",TextButton60)
	----UICorner62----
	--UIStroke63--
	local UIStroke63 = Instance.new("UIStroke",TextButton60)
	UIStroke63["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke63["Thickness"] = 4
	UIStroke63["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke63----
	--UIGradient64--
	local UIGradient64 = Instance.new("UIGradient",UIStroke63)
	UIGradient64["Rotation"] = 90
	UIGradient64["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient64----
	--ObjectValue65--
	local ObjectValue65 = Instance.new("ObjectValue",TextButton60)
	ObjectValue65["Name"] = "Object"
	----ObjectValue65----
	--ViewportFrame66--
	local ViewportFrame66 = Instance.new("ViewportFrame",TextButton60)
	ViewportFrame66["AnchorPoint"] = Vector2.new(0.5, 0.5)
	ViewportFrame66["Position"] = UDim2.new(0.0379999988, 0, 0.5, 0)
	ViewportFrame66["ZIndex"] = 600
	ViewportFrame66["Size"] = UDim2.new(0.0759999976, 0, 1, 0)
	ViewportFrame66["BackgroundColor3"] = Color3.new(1, 1, 1)
	----ViewportFrame66----
	--UIGradient67--
	local UIGradient67 = Instance.new("UIGradient",ViewportFrame66)
	UIGradient67["Rotation"] = 90
	UIGradient67["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient67----
	--UIStroke68--
	local UIStroke68 = Instance.new("UIStroke",ViewportFrame66)
	UIStroke68["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke68["LineJoinMode"] = Enum.LineJoinMode.Miter
	UIStroke68["Thickness"] = 4
	UIStroke68["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke68----
	--UIGradient69--
	local UIGradient69 = Instance.new("UIGradient",UIStroke68)
	UIGradient69["Rotation"] = 90
	UIGradient69["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.501961,0.592157)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.996078,0.494118,0.521569)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.560784,0.517647))
	}
	----UIGradient69----
	--Script70--
	local Script70 = Instance.new("Script",ScreenGui1)
	Script70["Name"] = "LibUse"
	----Script70----
	--Script71--
	local Script71 = Instance.new("Script",ScreenGui1)
	Script71["Name"] = "CompileLoader"
	Script71["Enabled"] = false
	----Script71----
	--TextButton72--
	local TextButton72 = Instance.new("TextButton",ScreenGui1)
	TextButton72["LayoutOrder"] = 1
	TextButton72["TextWrapped"] = true
	TextButton72["AutoLocalize"] = false
	TextButton72["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton72["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextButton72["Text"] = "Piggy Hub V2"
	TextButton72["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton72["TextSize"] = 14
	TextButton72["AnchorPoint"] = Vector2.new(0.0500000007, 0.5)
	TextButton72["Font"] = Enum.Font.Oswald
	TextButton72["Name"] = "Toggle"
	TextButton72["Position"] = UDim2.new(0.0064275763, 0, 0.5, 0)
	TextButton72["BackgroundTransparency"] = 0.30000001192092896
	TextButton72["Size"] = UDim2.new(0.130617976, 0, 0.0740825459, 0)
	TextButton72["TextScaled"] = true
	TextButton72["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextButton72----
	--UICorner73--
	local UICorner73 = Instance.new("UICorner",TextButton72)
	UICorner73["CornerRadius"] = UDim.new(0.100000001, 0)
	----UICorner73----
	--UIPadding74--
	local UIPadding74 = Instance.new("UIPadding",TextButton72)
	UIPadding74["PaddingLeft"] = UDim.new(0.200000003, 0)
	UIPadding74["PaddingRight"] = UDim.new(0.0500000007, 0)
	----UIPadding74----
	--UIStroke75--
	local UIStroke75 = Instance.new("UIStroke",TextButton72)
	UIStroke75["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke75["Thickness"] = 3
	UIStroke75["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke75----
	--TextButton76--
	local TextButton76 = Instance.new("TextButton",ScreenGui1)
	TextButton76["Visible"] = false
	TextButton76["TextWrapped"] = true
	TextButton76["AnchorPoint"] = Vector2.new(0.0500000007, 0.5)
	TextButton76["TextSize"] = 14
	TextButton76["Size"] = UDim2.new(0.130617976, 0, 0.0740825459, 0)
	TextButton76["AutoLocalize"] = false
	TextButton76["TextColor3"] = Color3.new(1, 0.870588, 0.741176)
	TextButton76["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextButton76["Text"] = "Run Info"
	TextButton76["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton76["Font"] = Enum.Font.Oswald
	TextButton76["Name"] = "StatsBtn"
	TextButton76["Position"] = UDim2.new(0.001999998, 0, 0.589552224, 0)
	TextButton76["LayoutOrder"] = 1
	TextButton76["BackgroundTransparency"] = 0.30000001192092896
	TextButton76["TextScaled"] = true
	TextButton76["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextButton76----
	--UICorner77--
	local UICorner77 = Instance.new("UICorner",TextButton76)
	UICorner77["CornerRadius"] = UDim.new(0.100000001, 0)
	----UICorner77----
	--UIPadding78--
	local UIPadding78 = Instance.new("UIPadding",TextButton76)
	UIPadding78["PaddingLeft"] = UDim.new(0.200000003, 0)
	UIPadding78["PaddingRight"] = UDim.new(0.0500000007, 0)
	----UIPadding78----
	--UIStroke79--
	local UIStroke79 = Instance.new("UIStroke",TextButton76)
	UIStroke79["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke79["Thickness"] = 3
	UIStroke79["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke79----
	--Frame80--
	local Frame80 = Instance.new("Frame",ScreenGui1)
	Frame80["LayoutOrder"] = 3
	Frame80["AutoLocalize"] = false
	Frame80["Active"] = true
	Frame80["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	Frame80["AnchorPoint"] = Vector2.new(0.5, 0.5)
	Frame80["Visible"] = false
	Frame80["BackgroundTransparency"] = 0.3499999940395355
	Frame80["Position"] = UDim2.new(0.458260268, 0, 0.579999983, 0)
	Frame80["Size"] = UDim2.new(0.699999988, 0, 0.600000024, 0)
	Frame80["Name"] = "MainUi"
	Frame80["BorderSizePixel"] = 0
	Frame80["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----Frame80----
	--UICorner81--
	local UICorner81 = Instance.new("UICorner",Frame80)
	----UICorner81----
	--UIStroke82--
	local UIStroke82 = Instance.new("UIStroke",Frame80)
	UIStroke82["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke82["Thickness"] = 4
	UIStroke82["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke82----
	--UIStroke83--
	local UIStroke83 = Instance.new("UIStroke",UIStroke82)
	UIStroke83["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke83["Thickness"] = 3.4000000953674316
	UIStroke83["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke83----
	--TextLabel84--
	local TextLabel84 = Instance.new("TextLabel",Frame80)
	TextLabel84["LayoutOrder"] = 3
	TextLabel84["TextWrapped"] = true
	TextLabel84["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel84["BorderSizePixel"] = 0
	TextLabel84["Size"] = UDim2.new(0.214014798, 0, 1.00623477, 0)
	TextLabel84["RichText"] = true
	TextLabel84["AutoLocalize"] = false
	TextLabel84["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel84["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel84["Text"] = ""
	TextLabel84["Font"] = Enum.Font.Oswald
	TextLabel84["Name"] = "Title"
	TextLabel84["Position"] = UDim2.new(1.10700738, 0, 1.00623477, 0)
	TextLabel84["TextSize"] = 50
	TextLabel84["BackgroundTransparency"] = 1
	TextLabel84["TextScaled"] = true
	TextLabel84["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel84----
	--UICorner85--
	local UICorner85 = Instance.new("UICorner",TextLabel84)
	----UICorner85----
	--UIGridLayout86--
	local UIGridLayout86 = Instance.new("UIGridLayout",TextLabel84)
	UIGridLayout86["VerticalAlignment"] = Enum.VerticalAlignment.Center
	UIGridLayout86["FillDirection"] = Enum.FillDirection.Vertical
	UIGridLayout86["CellPadding"] = UDim2.new(0, 0, 0.0250000004, 0)
	UIGridLayout86["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIGridLayout86["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
	UIGridLayout86["CellSize"] = UDim2.new(0.899999976, 0, 0.131999999, 0)
	----UIGridLayout86----
	--TextButton87--
	local TextButton87 = Instance.new("TextButton",TextLabel84)
	TextButton87["TextWrapped"] = true
	TextButton87["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton87["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton87["Text"] = "ESP"
	TextButton87["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton87["TextSize"] = 14
	TextButton87["TextScaled"] = true
	TextButton87["Font"] = Enum.Font.Oswald
	TextButton87["BackgroundTransparency"] = 0.5
	TextButton87["Position"] = UDim2.new(-0.147082791, 0, 2.28603077, 0)
	TextButton87["Name"] = "ESP"
	TextButton87["Size"] = UDim2.new(0.333249986, 0, 0.75000006, 0)
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
	local TextButton97 = Instance.new("TextButton",TextLabel84)
	TextButton97["TextWrapped"] = true
	TextButton97["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton97["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton97["Text"] = "Bypasses"
	TextButton97["TextScaled"] = true
	TextButton97["TextSize"] = 14
	TextButton97["Font"] = Enum.Font.Oswald
	TextButton97["BackgroundTransparency"] = 0.5
	TextButton97["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton97["Size"] = UDim2.new(0.333249986, 0, 0.75000006, 0)
	TextButton97["Name"] = "Bypasses"
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
	TextButton102["Position"] = UDim2.new(0.890631974, 0, 0.526479542, 0)
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
	--TextButton107--
	local TextButton107 = Instance.new("TextButton",TextLabel84)
	TextButton107["TextWrapped"] = true
	TextButton107["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton107["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton107["Text"] = "More"
	TextButton107["TextScaled"] = true
	TextButton107["TextSize"] = 14
	TextButton107["Font"] = Enum.Font.Oswald
	TextButton107["BackgroundTransparency"] = 0.5
	TextButton107["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton107["Size"] = UDim2.new(0.333249986, 0, 0.75000006, 0)
	TextButton107["Name"] = "More"
	TextButton107["BorderSizePixel"] = 0
	TextButton107["BackgroundColor3"] = Color3.new(0.470588, 0.435294, 0.356863)
	----TextButton107----
	--UICorner108--
	local UICorner108 = Instance.new("UICorner",TextButton107)
	----UICorner108----
	--UIPadding109--
	local UIPadding109 = Instance.new("UIPadding",TextButton107)
	UIPadding109["PaddingBottom"] = UDim.new(0.150000006, 0)
	UIPadding109["PaddingTop"] = UDim.new(0.100000001, 0)
	UIPadding109["PaddingLeft"] = UDim.new(0.100000001, 0)
	UIPadding109["PaddingRight"] = UDim.new(0.100000001, 0)
	----UIPadding109----
	--UIStroke110--
	local UIStroke110 = Instance.new("UIStroke",TextButton107)
	UIStroke110["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke110["Thickness"] = 4
	UIStroke110["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke110----
	--UIGradient111--
	local UIGradient111 = Instance.new("UIGradient",TextButton107)
	UIGradient111["Rotation"] = 90
	UIGradient111["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient111----
	--TextButton112--
	local TextButton112 = Instance.new("TextButton",TextButton107)
	TextButton112["TextWrapped"] = true
	TextButton112["TextScaled"] = true
	TextButton112["TextColor3"] = Color3.new(0.847059, 0.729412, 0.54902)
	TextButton112["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton112["Text"] = ""
	TextButton112["TextSize"] = 14
	TextButton112["AutoButtonColor"] = false
	TextButton112["AnchorPoint"] = Vector2.new(0, 0.5)
	TextButton112["Font"] = Enum.Font.Unknown
	TextButton112["Name"] = "Toggle"
	TextButton112["Position"] = UDim2.new(0.890631974, 0, 0.526478708, 0)
	TextButton112["Size"] = UDim2.new(0.198677853, 0, 0.93288523, 0)
	TextButton112["BackgroundTransparency"] = 1
	TextButton112["BorderSizePixel"] = 0
	TextButton112["BackgroundColor3"] = Color3.new(1, 0.501961, 0.592157)
	----TextButton112----
	--UICorner113--
	local UICorner113 = Instance.new("UICorner",TextButton112)
	----UICorner113----
	--UIGradient114--
	local UIGradient114 = Instance.new("UIGradient",TextButton112)
	UIGradient114["Rotation"] = 90
	UIGradient114["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient114----
	--UIStroke115--
	local UIStroke115 = Instance.new("UIStroke",TextButton112)
	UIStroke115["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke115["Thickness"] = 4
	UIStroke115["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke115----
	--UIGradient116--
	local UIGradient116 = Instance.new("UIGradient",UIStroke115)
	UIGradient116["Rotation"] = 90
	UIGradient116["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient116----
	--UIPadding117--
	local UIPadding117 = Instance.new("UIPadding",TextLabel84)
	UIPadding117["PaddingBottom"] = UDim.new(0.150000006, 0)
	UIPadding117["PaddingTop"] = UDim.new(0.100000001, 0)
	----UIPadding117----
	--TextButton118--
	local TextButton118 = Instance.new("TextButton",TextLabel84)
	TextButton118["TextWrapped"] = true
	TextButton118["TextColor3"] = Color3.new(1, 0.501961, 0.592157)
	TextButton118["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton118["Text"] = "Items Teleporter"
	TextButton118["TextScaled"] = true
	TextButton118["TextSize"] = 14
	TextButton118["Font"] = Enum.Font.Oswald
	TextButton118["BackgroundTransparency"] = 0.5
	TextButton118["TextXAlignment"] = Enum.TextXAlignment.Left
	TextButton118["Size"] = UDim2.new(0.333249986, 0, 0.75000006, 0)
	TextButton118["Name"] = "Items Teleporter"
	TextButton118["BorderSizePixel"] = 0
	TextButton118["BackgroundColor3"] = Color3.new(0.470588, 0.435294, 0.356863)
	----TextButton118----
	--UICorner119--
	local UICorner119 = Instance.new("UICorner",TextButton118)
	----UICorner119----
	--UIPadding120--
	local UIPadding120 = Instance.new("UIPadding",TextButton118)
	UIPadding120["PaddingBottom"] = UDim.new(0.150000006, 0)
	UIPadding120["PaddingTop"] = UDim.new(0.100000001, 0)
	UIPadding120["PaddingLeft"] = UDim.new(0.100000001, 0)
	UIPadding120["PaddingRight"] = UDim.new(0.100000001, 0)
	----UIPadding120----
	--UIStroke121--
	local UIStroke121 = Instance.new("UIStroke",TextButton118)
	UIStroke121["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke121["Thickness"] = 4
	UIStroke121["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke121----
	--UIGradient122--
	local UIGradient122 = Instance.new("UIGradient",TextButton118)
	UIGradient122["Rotation"] = 90
	UIGradient122["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient122----
	--TextButton123--
	local TextButton123 = Instance.new("TextButton",TextButton118)
	TextButton123["Visible"] = false
	TextButton123["TextWrapped"] = true
	TextButton123["TextScaled"] = true
	TextButton123["TextColor3"] = Color3.new(0.847059, 0.729412, 0.54902)
	TextButton123["BorderColor3"] = Color3.new(0, 0, 0)
	TextButton123["Text"] = ""
	TextButton123["TextSize"] = 14
	TextButton123["AutoButtonColor"] = false
	TextButton123["AnchorPoint"] = Vector2.new(0, 0.5)
	TextButton123["Font"] = Enum.Font.Unknown
	TextButton123["Name"] = "Toggle"
	TextButton123["Position"] = UDim2.new(0.890631974, 0, 0.526478708, 0)
	TextButton123["Size"] = UDim2.new(0.198677853, 0, 0.93288523, 0)
	TextButton123["BackgroundTransparency"] = 1
	TextButton123["BorderSizePixel"] = 0
	TextButton123["BackgroundColor3"] = Color3.new(1, 0.501961, 0.592157)
	----TextButton123----
	--UICorner124--
	local UICorner124 = Instance.new("UICorner",TextButton123)
	----UICorner124----
	--UIGradient125--
	local UIGradient125 = Instance.new("UIGradient",TextButton123)
	UIGradient125["Rotation"] = 90
	UIGradient125["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient125----
	--UIStroke126--
	local UIStroke126 = Instance.new("UIStroke",TextButton123)
	UIStroke126["Color"] = Color3.new(1, 0.501961, 0.592157)
	UIStroke126["Thickness"] = 4
	UIStroke126["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	----UIStroke126----
	--UIGradient127--
	local UIGradient127 = Instance.new("UIGradient",UIStroke126)
	UIGradient127["Rotation"] = 90
	UIGradient127["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient127----
	--ScrollingFrame128--
	local ScrollingFrame128 = Instance.new("ScrollingFrame",Frame80)
	ScrollingFrame128["ScrollBarImageColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame128["Active"] = true
	ScrollingFrame128["BorderColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame128["ScrollBarThickness"] = 0
	ScrollingFrame128["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	ScrollingFrame128["CanvasSize"] = UDim2.new(0, 0, 0, 0)
	ScrollingFrame128["Name"] = "ESP"
	ScrollingFrame128["ScrollingDirection"] = Enum.ScrollingDirection.Y
	ScrollingFrame128["Size"] = UDim2.new(1, 0, 1, 0)
	ScrollingFrame128["BackgroundTransparency"] = 1
	ScrollingFrame128["BorderSizePixel"] = 0
	ScrollingFrame128["BackgroundColor3"] = Color3.new(1, 1, 1)
	----ScrollingFrame128----
	--UIListLayout129--
	local UIListLayout129 = Instance.new("UIListLayout",ScrollingFrame128)
	UIListLayout129["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout129["Padding"] = UDim.new(0, 15)
	----UIListLayout129----
	--UIPadding130--
	local UIPadding130 = Instance.new("UIPadding",ScrollingFrame128)
	UIPadding130["PaddingBottom"] = UDim.new(0.0500000007, 0)
	UIPadding130["PaddingTop"] = UDim.new(0.0500000007, 0)
	UIPadding130["PaddingLeft"] = UDim.new(0.0250000004, 0)
	UIPadding130["PaddingRight"] = UDim.new(0.0250000004, 0)
	----UIPadding130----
	--TextLabel131--
	local TextLabel131 = Instance.new("TextLabel",ScrollingFrame128)
	TextLabel131["LayoutOrder"] = 999999999
	TextLabel131["TextWrapped"] = true
	TextLabel131["Active"] = true
	TextLabel131["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel131["BorderSizePixel"] = 0
	TextLabel131["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel131["RichText"] = true
	TextLabel131["AutoLocalize"] = false
	TextLabel131["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel131["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel131["Text"] = ""
	TextLabel131["Font"] = Enum.Font.Oswald
	TextLabel131["Name"] = "EndBarrier"
	TextLabel131["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel131["TextSize"] = 50
	TextLabel131["BackgroundTransparency"] = 1
	TextLabel131["TextScaled"] = true
	TextLabel131["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel131----
	--UIGradient132--
	local UIGradient132 = Instance.new("UIGradient",TextLabel131)
	UIGradient132["Rotation"] = 90
	UIGradient132["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient132----
	--UIAspectRatioConstraint133--
	local UIAspectRatioConstraint133 = Instance.new("UIAspectRatioConstraint",Frame80)
	UIAspectRatioConstraint133["AspectRatio"] = 2.3014094829559326
	----UIAspectRatioConstraint133----
	--ScrollingFrame134--
	local ScrollingFrame134 = Instance.new("ScrollingFrame",Frame80)
	ScrollingFrame134["ScrollBarImageColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame134["Active"] = true
	ScrollingFrame134["BorderColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame134["ScrollBarThickness"] = 0
	ScrollingFrame134["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	ScrollingFrame134["CanvasSize"] = UDim2.new(0, 0, 0, 0)
	ScrollingFrame134["Name"] = "Bypasses"
	ScrollingFrame134["ScrollingDirection"] = Enum.ScrollingDirection.Y
	ScrollingFrame134["Size"] = UDim2.new(1, 0, 1, 0)
	ScrollingFrame134["BackgroundTransparency"] = 1
	ScrollingFrame134["BorderSizePixel"] = 0
	ScrollingFrame134["BackgroundColor3"] = Color3.new(1, 1, 1)
	----ScrollingFrame134----
	--UIListLayout135--
	local UIListLayout135 = Instance.new("UIListLayout",ScrollingFrame134)
	UIListLayout135["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout135["Padding"] = UDim.new(0, 15)
	----UIListLayout135----
	--UIPadding136--
	local UIPadding136 = Instance.new("UIPadding",ScrollingFrame134)
	UIPadding136["PaddingBottom"] = UDim.new(0.0500000007, 0)
	UIPadding136["PaddingTop"] = UDim.new(0.0500000007, 0)
	UIPadding136["PaddingLeft"] = UDim.new(0.0250000004, 0)
	UIPadding136["PaddingRight"] = UDim.new(0.0250000004, 0)
	----UIPadding136----
	--TextLabel137--
	local TextLabel137 = Instance.new("TextLabel",ScrollingFrame134)
	TextLabel137["LayoutOrder"] = 999999999
	TextLabel137["TextWrapped"] = true
	TextLabel137["Active"] = true
	TextLabel137["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel137["BorderSizePixel"] = 0
	TextLabel137["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel137["RichText"] = true
	TextLabel137["AutoLocalize"] = false
	TextLabel137["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel137["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel137["Text"] = ""
	TextLabel137["Font"] = Enum.Font.Oswald
	TextLabel137["Name"] = "EndBarrier"
	TextLabel137["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel137["TextSize"] = 50
	TextLabel137["BackgroundTransparency"] = 1
	TextLabel137["TextScaled"] = true
	TextLabel137["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel137----
	--UIGradient138--
	local UIGradient138 = Instance.new("UIGradient",TextLabel137)
	UIGradient138["Rotation"] = 90
	UIGradient138["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient138----
	--ScrollingFrame139--
	local ScrollingFrame139 = Instance.new("ScrollingFrame",Frame80)
	ScrollingFrame139["ScrollBarImageColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame139["Active"] = true
	ScrollingFrame139["BorderColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame139["ScrollBarThickness"] = 0
	ScrollingFrame139["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	ScrollingFrame139["CanvasSize"] = UDim2.new(0, 0, 0, 0)
	ScrollingFrame139["Name"] = "More"
	ScrollingFrame139["ScrollingDirection"] = Enum.ScrollingDirection.Y
	ScrollingFrame139["Size"] = UDim2.new(1, 0, 1, 0)
	ScrollingFrame139["BackgroundTransparency"] = 1
	ScrollingFrame139["BorderSizePixel"] = 0
	ScrollingFrame139["BackgroundColor3"] = Color3.new(1, 1, 1)
	----ScrollingFrame139----
	--UIListLayout140--
	local UIListLayout140 = Instance.new("UIListLayout",ScrollingFrame139)
	UIListLayout140["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout140["Padding"] = UDim.new(0, 15)
	----UIListLayout140----
	--UIPadding141--
	local UIPadding141 = Instance.new("UIPadding",ScrollingFrame139)
	UIPadding141["PaddingBottom"] = UDim.new(0.0500000007, 0)
	UIPadding141["PaddingTop"] = UDim.new(0.0500000007, 0)
	UIPadding141["PaddingLeft"] = UDim.new(0.0250000004, 0)
	UIPadding141["PaddingRight"] = UDim.new(0.0250000004, 0)
	----UIPadding141----
	--TextLabel142--
	local TextLabel142 = Instance.new("TextLabel",ScrollingFrame139)
	TextLabel142["LayoutOrder"] = 999999999
	TextLabel142["TextWrapped"] = true
	TextLabel142["Active"] = true
	TextLabel142["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel142["BorderSizePixel"] = 0
	TextLabel142["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel142["RichText"] = true
	TextLabel142["AutoLocalize"] = false
	TextLabel142["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel142["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel142["Text"] = ""
	TextLabel142["Font"] = Enum.Font.Oswald
	TextLabel142["Name"] = "EndBarrier"
	TextLabel142["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel142["TextSize"] = 50
	TextLabel142["BackgroundTransparency"] = 1
	TextLabel142["TextScaled"] = true
	TextLabel142["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel142----
	--UIGradient143--
	local UIGradient143 = Instance.new("UIGradient",TextLabel142)
	UIGradient143["Rotation"] = 90
	UIGradient143["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient143----
	--TextLabel144--
	local TextLabel144 = Instance.new("TextLabel",ScrollingFrame139)
	TextLabel144["LayoutOrder"] = 999999999
	TextLabel144["TextWrapped"] = true
	TextLabel144["Active"] = true
	TextLabel144["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel144["BorderSizePixel"] = 0
	TextLabel144["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel144["RichText"] = true
	TextLabel144["AutoLocalize"] = false
	TextLabel144["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel144["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel144["Text"] = ""
	TextLabel144["Font"] = Enum.Font.Oswald
	TextLabel144["Name"] = "EndBarrier"
	TextLabel144["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel144["TextSize"] = 50
	TextLabel144["BackgroundTransparency"] = 1
	TextLabel144["TextScaled"] = true
	TextLabel144["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel144----
	--UIGradient145--
	local UIGradient145 = Instance.new("UIGradient",TextLabel144)
	UIGradient145["Rotation"] = 90
	UIGradient145["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient145----
	--ScrollingFrame146--
	local ScrollingFrame146 = Instance.new("ScrollingFrame",Frame80)
	ScrollingFrame146["Visible"] = false
	ScrollingFrame146["Active"] = true
	ScrollingFrame146["BorderColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame146["ScrollBarThickness"] = 0
	ScrollingFrame146["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	ScrollingFrame146["ScrollBarImageColor3"] = Color3.new(0, 0, 0)
	ScrollingFrame146["CanvasSize"] = UDim2.new(0, 0, 0, 0)
	ScrollingFrame146["Name"] = "Items Teleporter"
	ScrollingFrame146["ScrollingDirection"] = Enum.ScrollingDirection.Y
	ScrollingFrame146["Size"] = UDim2.new(1, 0, 1, 0)
	ScrollingFrame146["BackgroundTransparency"] = 1
	ScrollingFrame146["BorderSizePixel"] = 0
	ScrollingFrame146["BackgroundColor3"] = Color3.new(1, 1, 1)
	----ScrollingFrame146----
	--UIListLayout147--
	local UIListLayout147 = Instance.new("UIListLayout",ScrollingFrame146)
	UIListLayout147["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout147["Padding"] = UDim.new(0, 15)
	----UIListLayout147----
	--UIPadding148--
	local UIPadding148 = Instance.new("UIPadding",ScrollingFrame146)
	UIPadding148["PaddingBottom"] = UDim.new(0.0500000007, 0)
	UIPadding148["PaddingTop"] = UDim.new(0.0500000007, 0)
	UIPadding148["PaddingLeft"] = UDim.new(0.0250000004, 0)
	UIPadding148["PaddingRight"] = UDim.new(0.0250000004, 0)
	----UIPadding148----
	--TextLabel149--
	local TextLabel149 = Instance.new("TextLabel",ScrollingFrame146)
	TextLabel149["LayoutOrder"] = 999999999
	TextLabel149["TextWrapped"] = true
	TextLabel149["Active"] = true
	TextLabel149["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel149["BorderSizePixel"] = 0
	TextLabel149["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel149["RichText"] = true
	TextLabel149["AutoLocalize"] = false
	TextLabel149["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel149["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel149["Text"] = ""
	TextLabel149["Font"] = Enum.Font.Oswald
	TextLabel149["Name"] = "EndBarrier"
	TextLabel149["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel149["TextSize"] = 50
	TextLabel149["BackgroundTransparency"] = 1
	TextLabel149["TextScaled"] = true
	TextLabel149["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel149----
	--UIGradient150--
	local UIGradient150 = Instance.new("UIGradient",TextLabel149)
	UIGradient150["Rotation"] = 90
	UIGradient150["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient150----
	--TextLabel151--
	local TextLabel151 = Instance.new("TextLabel",ScrollingFrame146)
	TextLabel151["LayoutOrder"] = 999999999
	TextLabel151["TextWrapped"] = true
	TextLabel151["Active"] = true
	TextLabel151["AnchorPoint"] = Vector2.new(0.5, 1)
	TextLabel151["BorderSizePixel"] = 0
	TextLabel151["Size"] = UDim2.new(1, 0, 0.200000003, 0)
	TextLabel151["RichText"] = true
	TextLabel151["AutoLocalize"] = false
	TextLabel151["TextColor3"] = Color3.new(1, 0.87451, 0.654902)
	TextLabel151["BorderColor3"] = Color3.new(0.105882, 0.164706, 0.207843)
	TextLabel151["Text"] = ""
	TextLabel151["Font"] = Enum.Font.Oswald
	TextLabel151["Name"] = "EndBarrier"
	TextLabel151["Position"] = UDim2.new(0.5, 0, -0.0799999982, 0)
	TextLabel151["TextSize"] = 50
	TextLabel151["BackgroundTransparency"] = 1
	TextLabel151["TextScaled"] = true
	TextLabel151["BackgroundColor3"] = Color3.new(0.14902, 0.0980392, 0.0980392)
	----TextLabel151----
	--UIGradient152--
	local UIGradient152 = Instance.new("UIGradient",TextLabel151)
	UIGradient152["Rotation"] = 90
	UIGradient152["Color"] = ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.new(1,0.854902,0.74902)),
		ColorSequenceKeypoint.new(0.414309,Color3.new(0.997259,0.842765,0.7361)),
		ColorSequenceKeypoint.new(1,Color3.new(0.972549,0.733333,0.619608))
	}
	----UIGradient152----
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
		local itemui = script.Parent.MainUi["Items Teleporter"]
		local CollectionService = game:GetService("CollectionService")
		
		local RunService = game:GetService("RunService")
		local player = game.Players.LocalPlayer
		local character = player.Character
		
		local function grabItem(cframe:CFrame, item:BasePart)
			if not character then return end
			local hrp = character:FindFirstChild("HumanoidRootPart")
			if not hrp then return end
		
			local ogcf = hrp.CFrame
			local ogcc = hrp.CanCollide
			local itemchanged = false
			item.Changed:Connect(function()
				itemchanged = true
			end)
			
			hrp.CanCollide = false
			hrp.CFrame = CFrame.new(cframe.Position)
			script.Parent.MainUi.Visible = false
			local clickdetector = item:FindFirstChildWhichIsA("ClickDetector")
			if not clickdetector then return end
			repeat task.wait(0.1) until hrp.CFrame ~= ogcf
			hrp.Anchored = true
			CurrentCamera.CameraType = Enum.CameraType.Scriptable
			InputService.MouseBehavior = Enum.MouseBehavior.LockCenter
			local camera = workspace.CurrentCamera
			camera.CFrame = CFrame.new(camera.CFrame.Position, item.Position)
			task.spawn(function()
				wait(5)
				itemchanged = true
			end)
			if RunService:IsClient() then
				repeat mouse1click() task.wait() until itemchanged or not item
			end
		
			wait(0.2)
			script.Parent.MainUi.Visible = false
			CurrentCamera.CameraType = Enum.CameraType.Custom
			InputService.MouseBehavior = Enum.MouseBehavior.Default
			hrp.CFrame = ogcf
			hrp.Anchored = false
			hrp.CanCollide = ogcc
		end
		
		
		
		function createItemTeleporter(item:BasePart)
			local render = item:Clone()
			render.CFrame = CFrame.new(0, 0, 0)
			local newitem = script.Templates.ItemTemplate:Clone()
			newitem.Object.Value = item
			newitem.Text = item.Name
			render.Parent = newitem.ViewportFrame
			newitem.Visible = true
			newitem.Parent = itemui
			newitem.MouseButton1Click:Connect(function()
				grabItem(item.CFrame, item)
			end)
		end
		
		CollectionService:GetInstanceRemovedSignal("ItemsSubject"):Connect(function(instance)
			if instance:IsA("BasePart") then
				for _, stuff in pairs(itemui:GetChildren()) do
					if stuff.Name == "ItemTemplate" then
						if stuff.Object.Value == instance then
							stuff:Destroy()
						end
					end
				end
			end
		end)
		
		CollectionService:GetInstanceAddedSignal("ItemsSubject"):Connect(function(instance)
			if instance:IsA("BasePart") and instance:IsDescendantOf(workspace) then
				createItemTeleporter(instance)
			end
		end)
		
		
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
		GuiLib:AddButton("More", "Kill Everyone (Piggy)", 20, function()
			if character:HasTag("PiggySubject") then
				for _, contestant in pairs(CollectionService:GetTagged("PlayersSubject")) do
					if contestant:IsA("Model") then
						if contestant.PrimaryPart and contestant:FindFirstChildWhichIsA("Humanoid") then
							local cframe = contestant.PrimaryPart.CFrame
							repeat task.wait()
								character:PivotTo(cframe)
							until contestant.Humanoid.Health <= 0
						end
					end
				end
			end
		end)
		return GuiLib
		
	end)
	spawn(function() --Source for Script70
		local script = Script70
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
	spawn(function() --Source for Script71
		local script = Script71
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
