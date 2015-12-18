#https://learn.chef.io/manage-a-web-app/rhel/configure-apache/

name "opsworks_cookbook_demo"

#depends 'httpd', '~> 0.2.18'
#depends 'selinux', '~> 0.9.0'
#depends 'iptables', '~> 1.0.0'

source "https://supermarket.chef.io"

cookbook 'httpd', '>= 1.4.2', git: 'https://github.com/chef-cookbooks/httpd.git'
cookbook 'selinux', '>= 1.4.2', git: 'https://github.com/skottler/selinux.git'
cookbook 'iptables', '>= 1.4.2', git: 'https://github.com/chef-cookbooks/iptables.git'
