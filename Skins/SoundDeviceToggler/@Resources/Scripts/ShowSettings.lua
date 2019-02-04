function ShowSettings()
  show_settings = SKIN:GetVariable('ShowSettings')

  if show_settings == '0' then
    SKIN:Bang('!Hide', 'SoundDeviceToggler\\DeviceSettings')
  else
    SKIN:Bang('!WriteKeyValue', 'Variables', 'ShowSettings', '0', '#@#Settings.inc')
    SKIN:Bang('!FadeShow', 'SoundDeviceToggler\\DeviceSettings')
  end
end
