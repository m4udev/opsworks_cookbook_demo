##cookbook file source will check in /files directory
cookbook_file 'phpini settings' do 
	action :create #if exists it will update see doc
	source 'php.ini'
	path '/etc/php.ini'
end

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