## Roadmap of configuration
include_recipe 'opsworks_cookbook_demo::webserver' #install webserver services
#include_recipe 'opsworks_cookbook_demo::phpsettings' #configures php settings


#write the homepage
file '/var/www/html/index.php' do 
  content '<?php echo phpinfo(); ?>'
end