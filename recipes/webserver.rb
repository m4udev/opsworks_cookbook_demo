# Install apache and start the service
httpd_service 'site' do 
  mpm 'prefork'
  action [:create, :start]
end

# Add the site configuration
httpd_config 'site' do
  instance 'site'
  source 'site.conf.erb'
  notifies :restart, 'httpd_service[site]'
end

#create the document root directory
#directory '/var/www/public_html' do
#  recursive true
#end

#write the homepage
file '/var/www/index.php' do 
  content '<html>This is a web</html>'
  mode '0644'
  owner 'web_admin'
  group 'web_admin'
end
