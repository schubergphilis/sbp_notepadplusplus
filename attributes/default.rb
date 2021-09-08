#
# Cookbook:: sbp_notepadplusplus
# Attributes:: default
#
# Copyright:: 2020, Schuberg Philis B.V.
#
#
default['notepadplusplus']['x64']['install'] = false
default['notepadplusplus']['x64']['version'] = '8.1.4'
default['notepadplusplus']['x64']['url'] = 'https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.1.4/npp.8.1.4.Installer.x64.exe'
default['notepadplusplus']['x64']['checksum'] = '27e6e296dbe7c5d5f069604c1f0f97a4d5e09f9c4bbb4e98f328ca0d77179e9b'

default['notepadplusplus']['x86']['version'] = '8.1.4'
default['notepadplusplus']['x86']['url'] = 'https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.1.4/npp.8.1.4.Installer.exe'
default['notepadplusplus']['x86']['checksum'] = 'eadefd67e95bef200b2506caf8b3c82e0ea6c3cf895936614ba442989a08db4e'
