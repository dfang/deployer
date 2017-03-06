#
# Cookbook Name:: custom
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# 1. run ssh-copy-id
# 2. disable password authentication
# 3. add aliases

users = data_bag_item('ssh', 'users')
users.delete('id')

users.each do |name, ssh_key|
  ssh_authorize_key name do
    key ssh_key['key']
    user ssh_key['user']
  end
end

execute "set locale" do
  command "echo export LC_ALL=en_US.UTF-8 >> ~/.bash_profile"
end

execute "only allow key based logins" do
  command <<-EOF
    sed -n 'H;${x;s/\#PasswordAuthentication yes/PasswordAuthentication no/;p;}' /etc/ssh/sshd_config > tmp_sshd_config
    cat tmp_sshd_config > /etc/ssh/sshd_config
    rm tmp_sshd_config
    EOF
  action :nothing
end

execute "remove nginx default site" do
  command <<-EOF
    sudo rm /etc/nginx/sites-enabled/default
    EOF
  action :nothing
end

service "nginx" do
	action :restart
end

execute "install mosh server" do
  command "sudo apt-get install -y mosh"
end

service "ssh" do
  action :restart
end
