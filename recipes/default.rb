## Roadmap of configuration
#include_recipe 'opsworks_cookbook_demo::webserver' #install webserver services
#include_recipe 'opsworks_cookbook_demo::phpsettings' #configures php settings

yum_package 'php-mysql' do
	action :install
end

yum_package 'php-mysqli' do
	action :install
end