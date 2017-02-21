Knife zero


knife zero is better than knife solo because knife zero is knife client local mode that support knife search.


Workflow

1. bootstrap a server with chef client installed, as root user and give it a name wjz.sf

knife zero bootstrap 104.131.137.228 --ssh-user root --node-name wjz.sf  -V -z  
knife zero bootstrap 104.131.137.228 --ssh-user root --node-name wjz.sf  --run-list 'recipe[pptpd]' -V -z  

--ssh-user  -> -x  
--node-name -> -N  
--run-list -> -r  

after that,  knife node list or knife node show fqdn  


2. add recipe to run list  
knife node list  
knife node run_list add John.Kane 'recipe[pptpd::default]' -z  



knife zero bootstrap 104.131.167.122 --ssh-user root --node-name wjz.ny -r 'recipe[pptp::default]' -V -z  
knife node run_list add John.Kane 'recipe[pptpd::default]' -z  

knife node run_list add wjz.sf 'recipe[pptpd::default]'  

knife zero converge 104.131.137.228 -x root  

knife zero converge "name:df.sf" -x root -a knife_zero.host   
knife ssh "name:df.sf" "uptime" -x root -a knife_zero.host  

knife role create transmission  
knife node run_list add wjz.sf 'role[btsync], role[transmission]'  
knife zero converge "name:*.sf" -x root -a knife_zero.host  

knife zero bootstrap 192.241.204.188 -x root -N 'df.sf' -V -z  
knife node run_list add df.sf 'role[l2tp], role[pptpd], role[shadowsocks]'  
knife zero converge "name:*.sf" -x root -a knife_zero.host   
knife ssh 'name:df.sf' -a knife_zero.host -x root 'apt-get install -y mosh'  




https://github.com/higanworks/knife-zero/issues/19
https://github.com/higanworks/knife-zero/issues/21
https://github.com/higanworks/knife-zero/issues/45
since knife zero does not integrate with berkshelf like knife solo,
before you run knife zero, you need to run `berks vendor cookbooks` if you make changes on cookbooks in site-cookbooks
otherwise knife converge will raise "Error Resolving Cookbooks for Run List"


links:

[Knife zero](https://knife-zero.github.io/)
