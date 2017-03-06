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
