#
# Cookbook:: sbp_notepadplusplus
# Attributes:: default
#
# Copyright:: 2020, Schuberg Philis B.V.
#
#
powershell_script 'Kill running notepad++' do
  code 'Stop-Process -Name "notepad++" -Force'
  ignore_failure true
  action :nothing
end

if platform?('windows')
  windows_package 'Notepad++ (32-bit x86)' do
    source node['notepadplusplus']['url']
    checksum node['notepadplusplus']['checksum']
    installer_type :custom
    options '/S'
    version node['notepadplusplus']['version']
    action :install
    notifies :run, 'powershell_script[Kill running notepad++]', :before
  end
else
  Chef::Log.warn('Notepad++ can only be installed on the Windows platform.')
end
