#reference https://supermarket.chef.io/cookbooks/httpd
httpd_service 'default' do
  supports :status => true
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content '<html>
    <body>
      <h1>Hello Cookbook </h1>
    </body>
  </html>'
end

httpd_config 'httpd_service[default]' do 
  source 'mysite.cnf.erb'
  notifies :restart 'httpd'
end

httpd_config 'mysite' do
  source 'mysite.erb'
  action :create
end
