deploy_vpn
==========

install and configure a pptp vpn server on a ubuntu server (12.04 or 14.04)

1. upload your public key to your server
 `ssh-copy-id root@ip`

2. git clone this project, and bundle install

3. `knife solo prepare root@ip` this will install chef on server, and also will generate a file named ip.json

4. change nodes/ip.json(refering nodes/vagrant.json)

5. `knife solo cook root@ip [nodes/vpn.json]`

6. now you can connect to your server if configue your vpn correctly on your mac.
   username and password is in ip.json and the vpn type is pptp
