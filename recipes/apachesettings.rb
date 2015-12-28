##cookbook file source will check in /files directory
cookbook_file 'apache settings' do 
	action :create #if exists it will update see doc
	source 'httpd.conf'
	path '/etc/httpd/conf/httpd.conf'
end

