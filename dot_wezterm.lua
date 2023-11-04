-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Mocha'

config.font = wezterm.font('Iosevka Term Extended') 
config.font_size = 15.0 

config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = '1',
    mods = 'ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '2',
    mods = 'ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  -- activate pane selection mode with numeric labels
  {
    key = '9',
    mods = 'CTRL',
    action = wezterm.action.PaneSelect {
      alphabet = '1234567890',
    },
  },
    -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
    {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
    -- Make Option-Right equivalent to Alt-f; forward-word
    {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},

    {key="3", mods="OPT", action=wezterm.action{SendString="\x23"}},
}

config.send_composed_key_when_right_alt_is_pressed = true   
config.use_dead_keys = false


-- and finally, return the configuration to wezterm
return config

