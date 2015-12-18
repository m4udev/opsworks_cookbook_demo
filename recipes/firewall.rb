include_recipe 'iptables::default'

node['site']['enabled_firewall_rules'].each do |rule|
  iptables_rule rule do
    action :enable
  end
end
