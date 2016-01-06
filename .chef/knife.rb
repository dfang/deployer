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
