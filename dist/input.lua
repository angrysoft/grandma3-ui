function ui:Input(parent, options)
    local defaultOptions = {}
    defaultOptions.Prompt = "TextInput"
    defaultOptions.TextAutoAdjust = "Yes"
    defaultOptions.Anchors = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0
    }
    defaultOptions.Padding = "5,5"
    --defaultOptions.Filter = "0123456789."
    --defaultOptions.VkPluginName = "TextInputNumOnly"
    defaultOptions.Content = ""
    defaultOptions.HideFocusFrame = "Yes"
    defaultOptions.PluginComponent = myHandle

    -- input.TextChanged = "OnInput2TextChanged"
    ui:mergeOptions(defaultOptions, options)
    return ui:createUiElement(parent, "LineEdit", defaultOptions)
end