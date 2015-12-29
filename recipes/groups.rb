group 'www' do 
	action :create
	members ['ec2-user']
	append true
end


directory '/var/www' do
	action :create
	owner 'root'
	group 'www'
	mode '0775'
	recursive true
end