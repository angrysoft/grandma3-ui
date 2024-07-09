function ui:CheckBox(parent, text, state, options)
    local defaultOptions = {}
    defaultOptions.Anchors = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0
    }
    defaultOptions.Text = text;
    defaultOptions.TextalignmentH = "Left";
    defaultOptions.State = state
    defaultOptions.PluginComponent = myHandle
    -- defaultOptions.Clicked = "CheckBoxClicked"
    ui:mergeOptions(defaultOptions, options)
    return ui:createUiElement(parent, "CheckBox", defaultOptions)
end