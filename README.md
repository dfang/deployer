deploy_vpn
==========

install and configure a vpn on a ubuntu server (pptp)

1. upload your public key to your server(ip)
 ssh-copy-id ubuntu@ip

2. git clone this project, and bundle install

3. `knife solo prepare ubuntu@ip` install chef on server 

4. change nodes/ip.json(refering nodes/vagrant.json)

5. `knife solo cook ubuntu@ip`
