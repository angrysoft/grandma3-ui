function ui:Tab(parent, options)
    local defaultOptions = {}
    defaultOptions.PluginComponent = myHandle
    -- type: "Vertical"
    -- ui_tab:AddListStringItem('tab '..i,'value'..i)
    ui:mergeOptions(defaultOptions, options)
    return ui:createUiElement(parent, "UITab", defaultOptions)
end