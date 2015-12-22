# Install httpd
yum_package 'httpd' do 
  action :install
end

service 'httpd' do
  action :start
end

#write the homepage
file '/var/www/html/index.html' do 
  content '<html>This is a web</html>'
  mode '0755'
  #owner 'www'
  #group 'www'
end

# Install apache , config and etc END
yum_package 'php' do
  action :install
end

yum_package 'php-pdo' do
  action :install
end

yum_package 'php-pear' do
  action :install
end

yum_package 'php-mbstring' do
  action :install
end


# Install the mod_php5 apache module
#httpd_module 'php' do 
#  instance 'site'
#end

#install php5-mysql
#package 'php-mysql' do 
#  action :install
#  notifies :restart, 'httpd_service[site]'
#end

#write the homepage
#file '/var/www/index2.php' do 
#  content '<html><?php echo phpinfo(); ?></html>'
#  mode '0644'
#  owner 'web_admin'
#  group 'web_admin'
#end
