package 'httpd'

service 'site' do 
  mpm 'prefork'
  action [:create, :start]
end

# Add the site configuration
config 'site' do
  instance 'site'
  source 'site.conf.erb'
  notifies :restart, 'httpd_service[site]'
end

#write the homepage
file '/var/www/index.html' do 
  content '<html>This is a web</html>'
  mode '0644'
  owner 'web_admin'
  group 'web_admin'
end