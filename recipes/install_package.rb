package 'apache'

package 'mysql' do
  version '5.6.17'
  action :install
end

package 'php5' do 
  version '5.5.12'
  action :install
end
