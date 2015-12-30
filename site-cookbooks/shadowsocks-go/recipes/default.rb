#
# Cookbook Name:: shadowsocks-go
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'golang'

directory "/etc/shadowsocks" do
  owner 'root'
  group 'root'
  mode  '0755'
  action :create
end

template "/etc/shadowsocks/config.json" do
  source "config.json"
end

template "/etc/init.d/shadowsocks" do
  mode  '0755'
  source "shadowsocks.erb"
end

execute "go get shadowsocks-go server" do
  environment 'PATH' => "/usr/local/go/bin:#{ENV['PATH']}", 'GOPATH' => "/opt/go"
  command "go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server"
  # command "echo xxxxxxxx  #{ENV['PATH']}"
  # command "shadowsocks-server -p 8388 -k kb24./ -m aes-128-cfb > log &"
end

service "shadowsocks" do
  action :restart
end

# execute "run shadowsocks-server" do
#   environment 'PATH' => "/opt/go/bin:#{ENV['PATH']}"
#   command "nohup shadowsocks-server -c /etc/shadowsocks/config.json"
#   # command "shadowsocks-server -p 8388 -k kb24./ -m aes-128-cfb > log &"
# end

# bash 'extract_module' do
#   # cwd ::File.dirname(src_filepath)
#   code <<-EOH
#     go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server
#     nohup shadowsocks-server -c /etc/shadowsocks/config.json
#   EOH
# end
