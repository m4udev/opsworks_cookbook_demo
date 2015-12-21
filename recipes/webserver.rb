# Install httpd
package 'httpd'

service 'httpd' do
  action :start
end

#create the document root directory
directory '/var/www/public_html' do
  recursive true
end

#write the homepage
file '/var/www/public_html/index.html' do 
  content '<html>This is a web</html>'
  mode '0755'
  owner 'apache'
  group 'apache'
end

# Install apache , config and etc END

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
