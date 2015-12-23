# Install httpd
yum_package 'httpd 5.5' do 
  action :install
end

service 'httpd' do
  action :start
end

# Install apache , config and etc END
yum_package 'php >= 5.5' do
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

#write the homepage
file '/var/www/html/index.php' do 
  content '<?php echo phpinfo(); ?>'
  mode '0755'
  #owner 'www'
  #group 'www'
end


service 'httpd' do
  action :restart
end
