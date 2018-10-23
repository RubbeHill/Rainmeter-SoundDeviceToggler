function ToggleDevice()
  current_device = SKIN:GetVariable('CurrentDeviceNumber')
  device0_name = SKIN:GetVariable('Device0Name')
  device1_name = SKIN:GetVariable('Device1Name')

  if current_device == '0' then
    SKIN:Bang('!SetVariable', 'CurrentDeviceNumber', '1')
    SKIN:Bang('#@#nircmd/nircmd.exe setdefaultsounddevice \"' .. device1_name .. '\" 1')
    SKIN:Bang('!WriteKeyValue', 'Variables', 'CurrentDeviceNumber', '1', '#@#Settings.inc')
  else
    SKIN:Bang('!SetVariable', 'CurrentDeviceNumber', '0')
    SKIN:Bang('#@#nircmd/nircmd.exe setdefaultsounddevice \"' .. device0_name .. '\" 1')
    SKIN:Bang('!WriteKeyValue', 'Variables', 'CurrentDeviceNumber', '0', '#@#Settings.inc')
  end
end
