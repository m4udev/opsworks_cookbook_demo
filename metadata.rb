#https://learn.chef.io/manage-a-web-app/rhel/configure-apache/

name "opsworks_cookbook_demo"

depends 'httpd', '~> 0.2.18'
depends 'selinux', '~> 0.9.0'
