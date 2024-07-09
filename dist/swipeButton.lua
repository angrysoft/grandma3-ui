function ui:SwipeButton(parent, itemsList, options)
    local defaultOptions = {}
    defaultOptions.Anchors = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0
    }
    ui:mergeOptions(defaultOptions, options)
    local element = ui:createUiElement(parent, "SwipeButton", defaultOptions)
    for k, v in ipairs(itemsList) do
        element:AddListNumericItem(v, k)
    end
    return element
end