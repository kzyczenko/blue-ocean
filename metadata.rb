name 'blue_ocean'
maintainer 'KTZ'
maintainer_email 'ktz@spoko.pl'
license 'All Rights Reserved'
description 'Installs/Configures blue_ocean'
long_description 'Installs/Configures blue_ocean'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

issues_url 'https://github.com/kzyczenko/blue-ocean/issues'
source_url 'https://github.com/kzyczenko/blue-ocean'

depends 'java'
depends 'jenkins'

supports 'centos'
