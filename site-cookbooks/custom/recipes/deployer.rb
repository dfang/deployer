group 'deployers' do
  action :create
end

user "deployer" do
	manage_home true
  home "/home/deployer"
  shell "/bin/bash"
	gid 'deployers'
end

template "/home/deployer/.gemrc" do
  source "gemrc.erb"
end


postgresql_user "deployer" do
  superuser true
  createdb true
	createrole true
  login true
  replication true
	action :create
end


postgresql_database "deployer" do
  owner "deployer"
  encoding "UTF-8"
  template "template0"
  locale "en_US.UTF-8"
end
