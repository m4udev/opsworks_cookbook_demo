include_recipe 'iptables::default'

node['site']['enabled_firewall_rules'].each do |rule|
  iptables_rule rule do
    action :enable
  end
end


iptables_rule 'firewall_http' do
  action :enable
end

iptables_rule 'firewall_sshd' do
  action :enable
end
