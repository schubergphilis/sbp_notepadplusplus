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
  if node['notepadplusplus']['x64']['install']
    package = 'Notepad++ (64-bit x64)'
    url = node['notepadplusplus']['x64']['url']
    checksum = node['notepadplusplus']['x64']['checksum']
    version = node['notepadplusplus']['x64']['version']
  else
    package = 'Notepad++ (32-bit x86)'
    url = node['notepadplusplus']['url']
    checksum = node['notepadplusplus']['checksum']
    version = node['notepadplusplus']['version']
  end

  src_filename = url.split('/')[-1]
  src_path = "#{Chef::Config['file_cache_path']}/#{src_filename}"

  remote_file src_path do
    source url
    checksum checksum
  end

  windows_package package do
    source src_path
    installer_type :custom
    options '/S'
    version version
    action :install
    notifies :run, 'powershell_script[Kill running notepad++]', :before
  end

else
  Chef::Log.warn('Notepad++ can only be installed on the Windows platform.')
end
