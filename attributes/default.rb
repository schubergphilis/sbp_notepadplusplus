#
# Cookbook Name:: sbp_notepadplusplus
# Attributes:: default
#
# Copyright 2017, Schuberg Philis B.V.
#
#
default['notepadplusplus']['url'] = 'https://notepad-plus-plus.org/repository/7.x/7.5.3/npp.7.5.3.Installer.exe'
default['notepadplusplus']['checksum'] = '379afe2f640f02e4edb6208ab3529dbd06380f07a199ea8eb199fd057a60d357'

default['notepadplusplus']['plugins']['xml_tools']['enabled'] = false
default['notepadplusplus']['plugins']['xml_tools']['url'] = 'https://downloads.sourceforge.net/project/npp-plugins/XML%20Tools/Xml%20Tools%202.4.9%20Unicode/Xml%20Tools%202.4.9.2%20x86%20Unicode.zip?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fnpp-plugins%2Ffiles%2FXML%2520Tools%2FXml%2520Tools%25202.4.9%2520Unicode%2FXml%2520Tools%25202.4.9.2%2520x86%2520Unicode.zip%2Fdownload'
