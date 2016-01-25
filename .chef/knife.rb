log_level :debug
log_location STDOUT
cookbook_path    ["cookbooks", "site-cookbooks"]
node_path        "nodes"
role_path        "roles"
environment_path "environments"
data_bag_path    "data_bags"
# encrypted_data_bag_secret "data_bag_key"
knife[:berkshelf_path] = ["cookbooks", "site-cookbooks"]
knife[:editor] = "sb"

local_mode true

coobook_path [
  File.expand_path('../../cookbooks', __FILE__)
]

knife[:before_bootstrap] = "berks vendor cookbooks"
knife[:before_converge]  = "berks vendor cookbooks"

# 就不用每次在knife zero的时候指定-a
# knife zero converge "name:vagrant" -x root -a knife_zero.host -p 2222 -V -z
knife[:ssh_attribute] = "knife_zero.host"
knife[:use_sudo] = true

knife[:automatic_attribute_whitelist] = %w[
  fqdn
  os
  os_version
  hostname
  ipaddress
  roles
  recipes
  ipaddress
  platform
  platform_version
  platform_version
  cloud
  cloud_v2
  chef_packages
]
