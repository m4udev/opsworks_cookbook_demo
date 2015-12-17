service 'default' do
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
