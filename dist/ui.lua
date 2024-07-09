local pluginName = select(1, ...)
local componentName = select(2, ...)
local signals = select(3, ...)
local myHandle = select(4, ...)

local ui = {}

function ui:mergeOptions(defaultOptions, options)
    if options ~= nil then
        for k, v in pairs(options) do
            defaultOptions[k] = v
        end
    end
end

function ui:createUiElement(parent, elementType, options)
    local element = parent:Append(elementType)
    for key, value in pairs(options) do
        element[key] = value
    end
    return element
end

function ui:Window(display, title, options)
    local screenOverlay = display.ScreenOverlay
    screenOverlay:ClearUIChildren()


    -- Main Window.
    local dialogWidth = 650
    local baseInput = screenOverlay:Append("BaseInput")
    baseInput.Name = "FadeDelay"
    baseInput.H = "0"
    baseInput.W = dialogWidth
    baseInput.MaxSize = string.format("%s,%s", display.W * 0.8, display.H)
    baseInput.MinSize = string.format("%s,0", dialogWidth - 100)
    baseInput.Columns = 1
    baseInput.Rows = 2
    baseInput[1][1].SizePolicy = "Fixed"
    baseInput[1][1].Size = "60"
    baseInput[1][2].SizePolicy = "Content"
    baseInput.AutoClose = "No"
    baseInput.CloseOnEscape = "Yes"

    -- title bar.
    local titleBar = baseInput:Append("TitleBar")
    titleBar.Columns = 2
    titleBar.Rows = 1
    titleBar.Anchors = "0,0"
    titleBar[2][2].SizePolicy = "Fixed"
    titleBar[2][2].Size = "50"
    titleBar.Texture = "corner2"

    local titleBarIcon = titleBar:Append("TitleButton")
    titleBarIcon.Text = title
    titleBarIcon.Texture = "corner1"
    titleBarIcon.Anchors = "0,0"
    titleBarIcon.Icon = "time"

    local titleBarCloseButton = titleBar:Append("CloseButton")
    titleBarCloseButton.Anchors = "1,0"
    titleBarCloseButton.Texture = "corner2"
end
