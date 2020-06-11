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
  src_filename = node['notepadplusplus']['url'].split('/')[-1]
  src_path = "#{Chef::Config['file_cache_path']}/#{src_filename}"

  remote_file src_path do
    source node['notepadplusplus']['url']
    checksum node['notepadplusplus']['checksum']
  end

  windows_package 'Notepad++ (32-bit x86)' do
    source src_path
    installer_type :custom
    options '/S'
    version node['notepadplusplus']['version']
    action :install
    notifies :run, 'powershell_script[Kill running notepad++]', :before
  end
else
  Chef::Log.warn('Notepad++ can only be installed on the Windows platform.')
end
