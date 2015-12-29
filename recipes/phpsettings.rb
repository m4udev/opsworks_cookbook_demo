##cookbook file source will check in /files directory
cookbook_file 'phpini settings' do 
	action :create #if exists it will update see doc
	source 'php.ini'
	path '/etc/php-5.5.ini'
end