name             'custom'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures custom'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports         'ubuntu'
# tested on         'Ubuntu 14.04.1 LTS'

depends          'ssh_authorized_keys'
depends          'postgresql'

recipe  				"custom::default",  "setup others"
recipe  				"custom::deployer",  "create user deployer and group deployers"
