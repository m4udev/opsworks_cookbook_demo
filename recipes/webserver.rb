yum_package 'httpd' do 
  action :remove
end

yum_package 'httpd-tools' do 
  action :remove
end

# Install httpd
#yum_package 'httpd' do 
#  action :upgrade
#  version '2.4'
#end

##service 'httpd' do
#  action :start
#end

# Install apache , config and etc END
#yum_package 'php' do
#  action :upgrade
#  version '5.5.12'
#end

#yum_package 'php-pdo' do
#  action :install
#end

#yum_package 'php-pear' do
#  action :install
#end

#yum_package 'php-mbstring' do
#  action :install
#end

#write the homepage
#file '/var/www/html/index.php' do 
#  content '<?php echo phpinfo(); ?>'
#  mode '0755'
  #owner 'www'
  #group 'www'
#end


#service 'httpd' do
#  action :restart
#end
