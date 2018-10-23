function ToggleTheme()
  current_theme = SKIN:GetVariable('Theme')

  if current_theme == 'Light' then
    SKIN:Bang('!SetVariable', 'Theme', 'Dark')
    SKIN:Bang('!WriteKeyValue', 'Variables', 'Theme', 'Dark', '#@#Settings.inc')
  else
    SKIN:Bang('!SetVariable', 'Theme', 'Light')
    SKIN:Bang('!WriteKeyValue', 'Variables', 'Theme', 'Light', '#@#Settings.inc')
  end
end
