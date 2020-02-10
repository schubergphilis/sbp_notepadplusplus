#
# Cookbook Name:: sbp_notepadplusplus
# Attributes:: default
#
# Copyright 2020, Schuberg Philis B.V.
#
#
if platform?('windows')
  windows_package 'Notepad++ (32-bit x86)' do
    source node['notepadplusplus']['url']
    checksum node['notepadplusplus']['checksum']
    installer_type :custom
    options '/S'
    version node['notepadplusplus']['version']
    action :install
  end
else
  Chef::Log.warn('Notepad++ can only be installed on the Windows platform.')
end
