function ui:IndicatorButton(parent, text, options)
    local active_color = Root().ColorTheme.ColorGroups.Button.ActiveIcon
    local normal_color = Root().ColorTheme.ColorGroups.Button.Icon
    local defaultOptions = {}
    defaultOptions.text = text
    defaultOptions.indicatoricon = 'ButtonOffIcon'
    defaultOptions.activetextcolor = normal_color
    defaultOptions.clicked = 'IndicatorButtonClicked'
    defaultOptions.plugincomponent = my_handle

    signals.IndicatorButtonClicked = function(caller)
        if caller.state == 1 then
            caller.state = 0
            caller.indicatoricon = 'ButtonOffIcon'
            caller.indicatoriconcolor = normal_color
        else
            caller.state = 1
            caller.indicatoricon = 'ButtonOnIcon'
            caller.indicatoriconcolor = active_color
        end
    end

    ui:mergeOptions(defaultOptions, options)
    return ui:createUiElement(parent, defaultOptions)
end
