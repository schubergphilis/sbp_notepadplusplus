name              'sbp_notepadplusplus'
maintainer        'Stefan Wessels Beljaars - Schuberg Philis'
maintainer_email  'swesselsbeljaars@schubergphilis.com'
license           'Apache-2.0'
description       'Installs/Configures Notepad++'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '1.0.0'

chef_version      '>= 12.4' if respond_to?(:chef_version)

source_url        'https://github.com/schubergphilis/sbp_notepadplusplus' if respond_to?(:source_url)
issues_url        'https://github.com/schubergphilis/sbp_notepadplusplus/issues' if respond_to?(:issues_url)

supports          'windows'
