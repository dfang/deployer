#
# Cookbook Name:: utorrent-server
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


# http://www.utorrent.com/downloads/complete/os/linux-x64-debian-7-0/track/beta
# http://www.utorrent.com/downloads/complete/os/linux-i386-debian-7-0/track/beta
# http://www.utorrent.com/downloads/complete/os/linux-x64-ubuntu-12-04/track/beta
# http://www.utorrent.com/downloads/complete/os/linux-i386-ubuntu-12-04/track/beta
# http://www.utorrent.com/downloads/complete/os/linux-x64-ubuntu-13-04/track/beta
# http://www.utorrent.com/downloads/complete/os/linux-i386-ubuntu-13-04/track/beta
# http://www.utorrent.com/downloads/complete/os/linux-x64-debian-6-0/track/beta
# http://www.utorrent.com/downloads/complete/os/linux-i386-debian-6-0/track/beta

# if node['platform'] == 'ubuntu'
#   # do ubuntu things
#   case node['platform_version']
#   when 12.04
#     platform_version = "12-04"
#   when 13.04
#     platform_version = "13-04"
#   end
# elsif node['platform'] == 'debian'
#   # do debian things
#   case node['platform_version']
#   when 6.0
#     platform_version = "6-0"
#   when 7.0
#     platform_version = "7-0"
#   end
# end


include_recipe "#{node['platform']}"


# service "utorrent" do
#   action :restart
# end
