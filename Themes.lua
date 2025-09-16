local Kavo = {}

local tween = game:GetService("TweenService")
local tweeninfo = TweenInfo.new
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")

local Utility = {}
local Objects = {}
function Kavo:DraggingEnabled(frame, parent)
        
    parent = parent or frame
    
    local dragging = false
    local dragInput, mousePos, framePos

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            mousePos = input.Position
            framePos = parent.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    input.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - mousePos
            parent.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
        end
    end)
end

function Utility:TweenObject(obj, properties, duration, ...)
    tween:Create(obj, tweeninfo(duration, ...), properties):Play()
end

local themes = {
    SchemeColor = Color3.fromRGB(74, 99, 135),
    Background = Color3.fromRGB(36, 37, 43),
    Header = Color3.fromRGB(28, 29, 34),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(32, 32, 38)
}
local themeStyles = {
    Theme1 = {
	-- Цвет фона у Секций
    SchemeColor = Color3.fromRGB(112, 112, 112),
	-- Цвет фона в правой части UI
	Background = Color3.fromRGB(15,15,15),
	-- Цвет фона в левой части UI
    Header = Color3.fromRGB(15,15,15),
	-- Цвет текста
    TextColor = Color3.fromRGB(255,255,255),
	-- Цвет фона у кнопок
    ElementColor = Color3.fromRGB(20, 20, 20)
    },
    Theme2 = {
    -- Цвет фона у Секций
    SchemeColor = Color3.fromRGB(139,123,139),
	-- Цвет фона в правой части UI
	Background = Color3.fromRGB(15,15,15),
	-- Цвет фона в левой части UI
    Header = Color3.fromRGB(15,15,15),
	-- Цвет текста
    TextColor = Color3.fromRGB(255,255,255),
	-- Цвет фона у кнопок
    ElementColor = Color3.fromRGB(20, 20, 20)
    },
    Theme3 = {
	-- Цвет фона у Секций
    SchemeColor = Color3.fromRGB(0, 0 ,0),
	-- Цвет фона в правой части UI
	Background = Color3.fromRGB(0, 0,0),
	-- Цвет фона в левой части UI
    Header = Color3.fromRGB(0, 0 ,0),
	-- Цвет текста
    TextColor = Color3.fromRGB(255,250,250),
	-- Цвет фона у кнопок
    ElementColor = Color3.fromRGB(255,250,250)
    },
    RJTheme3 = {
	-- Цвет фона у Секций
    SchemeColor = Color3.fromRGB(98, 77, 128),
	-- Цвет фона в правой части UI
	Background = Color3.fromRGB(15,15,15),
	-- Цвет фона в левой части UI
    Header = Color3.fromRGB(15,15,15),
	-- Цвет текста
    TextColor = Color3.fromRGB(255,255,255),
	-- Цвет фона у кнопок
    ElementColor = Color3.fromRGB(20, 20, 20)
    },
local colors = {

    SchemeColor = Color3.fromRGB(0,0,0),

	Background = Color3.fromRGB(15,15,15),

    Header = Color3.fromRGB(0,0,0),

    TextColor = Color3.fromRGB(255,250,250),
    
    ElementColor = Color3.fromRGB(255, 250, 250)
