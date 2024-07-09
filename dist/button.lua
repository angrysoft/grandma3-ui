function ui:Button(parent, text, options)
    local defaultOptions = {}
    defaultOptions.Anchors = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0
    }
    defaultOptions.Textshadow = 1;
    defaultOptions.HasHover = "Yes";
    defaultOptions.Text = text;
    defaultOptions.Font = "Medium20";
    defaultOptions.TextalignmentH = "Centre";
    defaultOptions.PluginComponent = myHandle
    ui:mergeOptions(defaultOptions, options)
    return ui:createUiElement(parent, "Button", defaultOptions)
end