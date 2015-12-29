group 'www' do 
	action :create
	members ['ec2-user']
	append true
end

execute 'chown-root-www' do
  command 'chown -R root:www /var/www'
  user 'root'
  action :run
end

execute 'set-future-folders'
	command 'find /var/www -type d -exec sudo chmod 0775 {} +'
	user 'root'
	action :run
end

execute 'set-future-files'
	command 'find /var/www -type f -exec sudo chmod 0775 {} +'
	user 'root'
	action :run
end