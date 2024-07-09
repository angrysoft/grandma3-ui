function ui:Label(parent, text, options)
    local defaultOptions = {}
    defaultOptions.Text = text
    defaultOptions.ContentDriven = "Yes"
    defaultOptions.ContentWidth = "No"
    defaultOptions.TextAutoAdjust = "No"
    defaultOptions.Anchors = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0
    }
    defaultOptions.Padding = {
        left = 5,
        right = 5,
        top = 5,
        bottom = 5
    }
    defaultOptions.Font = "Medium20"
    defaultOptions.HasHover = "No"
    defaultOptions.BackColor = Root().ColorTheme.ColorGroups.Global.Transparent
    ui:mergeOptions(defaultOptions, options)
    return ui:createUiElement(parent, "UIObject", defaultOptions)
end