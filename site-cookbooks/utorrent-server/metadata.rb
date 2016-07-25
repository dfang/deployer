name             'utorrent-server'
maintainer       'ddd'
maintainer_email 'sdd@dsd.com'
license          'All rights reserved'
description      'Installs/Configures utorrent-server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "utorrent-server::default", "Installation"

# %w{ ubuntu  }.each do |os|
#   supports os
# end

supports 'debian', '6.0'
supports 'debian', '7.0'
supports 'ubuntu', '12.04'
supports 'ubuntu', '13.04'
