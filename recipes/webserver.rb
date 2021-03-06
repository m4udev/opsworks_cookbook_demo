## Remove default server settings
yum_package 'httpd' do 
  action :remove
end

yum_package 'php' do 
  action :remove
end

yum_package 'php-common' do 
  action :remove
end

yum_package 'php-cli' do
  action :remove
end

yum_package 'php-xml' do 
  action :remove
end

yum_package 'php-mbstring' do
  action :remove
end

yum_package 'httpd-tools' do 
  action :remove
end
##Remove Ends


## Install Start
yum_package 'httpd24' do 
  action :install
end

service 'httpd' do
  action :start
end

yum_package 'php55' do 
  action :install
end

yum_package 'php55-mysqlnd' do
  action :install
end

yum_package 'php55-pdo' do
  action :install
end

yum_package 'php-pear' do
  action :install
end

yum_package 'php55-mbstring' do
  action :install
end
## Install ends

##install php extensions
#GD
yum_package 'php55-gd' do
  action :install
end

#mcrypt
yum_package 'php55-mcrypt' do
  action :install
end

#memcache
yum_package 'php55-pecl-memcached' do
  action :install
end

#equivalent to chkconfig httpd on --autostart httpd
service 'httpd' do 
  action :enable
end