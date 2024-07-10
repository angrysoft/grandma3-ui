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

function ui:Window(display, title, w, h, options)
    local screenOverlay = display.ScreenOverlay
    screenOverlay:ClearUIChildren()


    -- Main Window.
    local defaultOptions = {}
    defaultOptions.Name = "FadeDelay"
    defaultOptions.H = h
    defaultOptions.W = w
    defaultOptions.MaxSize = string.format("%s,%s", display.W * 0.8, display.H)
    defaultOptions.MinSize = string.format("%s,0", defaultOptions.W - 100)
    defaultOptions.Columns = 1
    defaultOptions.Rows = 2
    defaultOptions[1][1].SizePolicy = "Fixed"
    defaultOptions[1][1].Size = "60"
    defaultOptions[1][2].SizePolicy = "Content"
    defaultOptions.AutoClose = "No"
    defaultOptions.CloseOnEscape = "Yes"

    ui:mergeOptions(defaultOptions, options)
    local baseInput = ui:createUiElement(screenOverlay, "BaseInput", defaultOptions)

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

    return baseInput
end

function ui:Frame(parent, col, row, options)
    local defaultOptions = {}
    defaultOptions.H = "100%"
    defaultOptions.W = "100%"
    defaultOptions.Columns = col
    defaultOptions.Rows = row
    defaultOptions.Anchors = {
        left = 0,
        right = 0,
        top = 1,
        bottom = 1
    }
    defaultOptions.name = "dlgFrame"
    ui:mergeOptions(defaultOptions, options)
    return ui:createUiElement(parent, "DialogFrame", defaultOptions)
end
