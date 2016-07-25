bash "update" do
  code "sudo apt-get update -y"
end

package "libssl0.9.8"


bash "download and install" do
  platform = node['platform']
  platform_version = node['platform_version'].gsub(".", "-")
  if node['kernel']['machine'] == 'x86_64'
    arch = 'x64'
  else
    arch = 'i386'
  end
  # utorrent-server-url = "http://www.utorrent.com/downloads/complete/os/linux-#{arch}-#{platform}-#{platform_version}/track/beta"
  # http://www.utorrent.com/downloads/complete/os/linux-#{arch}-#{platform}-#{platform_version}/track/beta"
  # utorrent-server-url = "http://download.ap.bittorrent.com/track/beta/endpoint/utserver/os/linux-linux-#{arch}-#{platform}-#{platform_version}"

  code <<-EOH
    wget -O /tmp/utserver.tar.gz "#{utorrent-server-url}"
    mkdir -p /tmp/utorrent-server
    tar zxvf utserver.tar.gz --strip-components 1 -C /tmp/utorrent-server
    tar zxvf /tmp/utserver.tar.gz /tmp/utorrent-server
    mv cp -R /tmp/utorrent-server ~/utorrent-server
    sudo chmod -R 777 ~/utorrent-server/
    sudo ln -sf ~/utorrent-server/utserver /usr/bin/utserver
    touch ~/utorrent-server/utserver.conf
    mkdir ~/utorrent-server/settings
    # ./utserver -settingspath ~/utorrent-server/settings
  EOH
end


template "/etc/init.d/utorrent" do
  mode  '0755'
  source "utorrent.erb"
end
