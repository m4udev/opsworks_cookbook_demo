#write the homepage
#file '/var/www/html/index.php' do 
#  content '<?php echo phpinfo(); ?>'
#end

##cookbook file source will check in /files directory
cookbook_file 'phpini settings' do 
	action :create
	source 'php.ini'
	path '/etc/php-5.5.ini'
end