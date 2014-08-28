deploy_vpn
==========

install and configure a vpn on a ubuntu server (pptp)

1. upload your public key to your server
 `ssh-copy-id ubuntu@ip`

2. git clone this project, and bundle install

3. `knife solo prepare ubuntu@ip` this will install chef on server, and also will generate a file named ip.json

4. change nodes/ip.json(refering nodes/vagrant.json)

5. `knife solo cook ubuntu@ip`

6. now you can connect to your server if configue your vpn correctly on your mac.
   username and password is in ip.json and the vpn type is pptp
