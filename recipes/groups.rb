group 'www' do 
	action :create
	members ['ec2-user']
	append true
end


#directory '/var/www' do
	#action :create
	#owner 'root'
	#group 'www'
	#mode '0775'
	#recursive true
#end

execute "chown-root-www" do
  command "chown -R root:www /var/www"
  user "root"
  action :run
end