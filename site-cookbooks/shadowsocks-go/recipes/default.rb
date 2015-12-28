#
# Cookbook Name:: shadowsocks-go
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'golang'

execute "install shadowsocks-go server" do
  command "go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server"
  command "shadowsocks-server -p 8388 -k kb24./ -m aes-128-cfb > log &"
end
