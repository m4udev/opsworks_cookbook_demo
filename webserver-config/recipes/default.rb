include_recipe 'selinux::permissive'
include_recipe 'opsworks_cookbook_demo::user'
include_recipe 'opsworks_cookbook_demo::webserver'
include_recipe 'opsworks_cookbook_demo::firewall'
