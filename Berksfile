source "https://supermarket.chef.io/"
# source "https://supermarket.getchef.com"
# source "https://api.berkshelf.com"

cookbook 'pptpd'

cookbook 'l2tp-ipsec', '~> 0.1.0'
cookbook 'openswan', '~> 0.3.2'
cookbook 'firewall-ex', '~> 0.1.1'

# Creates "authorized_keys" in user "~/.ssh" directory from a data bag (encrypted data bag supported)
# cookbook 'ssh-keys', '~> 1.2.7'
# Creates SSH authorized keys files in user home directories.
cookbook 'ssh_authorized_keys', '~> 0.3.0'
# Creates OS users from databags
# cookbook 'users'

# protects server with sshguard(alts: fail2ban, logcheck), sshguard protects hosts from brute-force attacks against SSH and other services ....
cookbook 'sshguard', '~> 1.0.0'


cookbook 'golang', '~> 1.7.0'
cookbook 'shadowsocks-go', path: 'site-cookbooks/shadowsocks-go'

cookbook 'openssl' # transmission depends openssl to generate secure_password

cookbook 'utorrent-server', path: 'site-cookbooks/utorrent-server'
cookbook 'transmission', path: 'site-cookbooks/transmission'
cookbook 'btsync', path: 'site-cookbooks/btsync'




cookbook 'rbenv'
cookbook 'database'
cookbook 'sudo'
cookbook 'rbenv-install-rubies'
cookbook 'nginx'

cookbook 'apt-sources-switch', path: 'site-cookbooks/apt-sources-switch'
cookbook 'custom', path: 'site-cookbooks/custom'

