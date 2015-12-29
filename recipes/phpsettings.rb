##cookbook file source will check in /files directory
cookbook_file 'phpini settings' do 
	action :create #if exists it will update see doc
	mode '0777'
	path '/etc/php-5.5.ini'
	source 'php.ini'
end