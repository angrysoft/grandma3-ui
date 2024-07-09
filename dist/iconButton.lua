function ui:IconButton(parent, iconName, options)
    local defaultOptions = {}
    defaultOptions.Text = ""
    defaultOptions.Icon = iconName
    defaultOptions.Anchors = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0
    }
    defaultOptions.PluginComponent = myHandle

    defaultOptions.HasHover = "Yes";
    ui:mergeOptions(defaultOptions, options)
    return ui:createUiElement(parent, "Button", defaultOptions)
end
